import ArgumentParser
import AsyncHTTPClient
import Foundation
import Yams
import ZIPFoundation

@available(macOS 10.15.4, *)
@main
struct Generator: AsyncParsableCommand {
    @Option(name: .shortAndLong, help: "The version of semantic conventions to generate from.")
    var version: String

    @Option(name: .shortAndLong, help: "The root of the swift-otel-semconv directory in which the generated files should be saved.")
    var repoDirectory: String = "../"

    @Option(name: .shortAndLong, help: "The directory in which to cache the semantic conventions source files.")
    var cacheDirectory: String = "/tmp/swift-otel-semconv/"

    mutating func run() async throws {
        assert(version.starts(with: "v"), "Version must start with 'v'")
        if !repoDirectory.hasSuffix("/") {
            repoDirectory += "/"
        }
        if !cacheDirectory.hasSuffix("/") {
            cacheDirectory += "/"
        }

        let semConvRepoDirectory = cacheDirectory + "semantic-conventions-\(version.dropFirst())/"

        // Get semconv & cache locally
        let fileManager = FileManager()
        if !fileManager.fileExists(atPath: semConvRepoDirectory) {
            try fileManager.createDirectory(at: URL(fileURLWithPath: cacheDirectory), withIntermediateDirectories: true)

            // Download
            let semConvArchive = cacheDirectory + "\(version).zip"
            let request = try HTTPClient.Request(url: "https://github.com/open-telemetry/semantic-conventions/archive/refs/tags/\(version).zip")
            let fileDownloadDelegate = try FileDownloadDelegate(path: semConvArchive)
            let _ = try await HTTPClient.shared.execute(request: request, delegate: fileDownloadDelegate).get()
            print("Downloded version \(version) to \(semConvArchive)")

            // Unzip
            let sourceURL = URL(fileURLWithPath: semConvArchive)
            let destinationURL = URL(fileURLWithPath: cacheDirectory)
            try fileManager.unzipItem(at: sourceURL, to: destinationURL)
            assert(fileManager.fileExists(atPath: semConvRepoDirectory), "Expected \(semConvRepoDirectory) to exist. Check zip file structure.")
            print("Unzipped to \(semConvRepoDirectory).")
        }

        // Parse semconv registry files
        let semConvModelsDirectory = semConvRepoDirectory + "model/"
        var parsedAttributes = [Attribute]()
        for element in try fileManager.subpathsOfDirectory(atPath: semConvModelsDirectory) {
            // Currently we only support parsing the `registry` files.
            // TODO: Expand support to metric/span files, which involves handling `ref` type attributes.
            guard element.hasSuffix("registry.yaml") || element.hasSuffix("registry-deprecated.yaml") else {
                continue
            }
            let filePath = semConvModelsDirectory + element
            guard
                let fileData = fileManager.contents(atPath: filePath),
                let fileContents = String(data: fileData, encoding: .utf8)
            else {
                print("warning: No data found at \(filePath)")
                continue
            }
            let file: RegistryFile
            do {
                file = try YAMLDecoder().decode(RegistryFile.self, from: fileContents)
            } catch {
                print("Error decoding \(filePath)")
                throw error
            }

            for group in file.groups {
                for groupAttribute in group.attributes {
                    parsedAttributes.append(groupAttribute)
                }
            }
        }

        // Create semconv namespace tree
        let namespaceTree = Namespace(id: "")
        for attribute in parsedAttributes {
            let path = attribute.id.split(separator: ".")
            var namespace = namespaceTree
            var walkedPath = [String]()
            for pathElement in path[0 ..< (path.count - 1)] {
                let pathElement = String(pathElement)
                walkedPath.append(pathElement)

                let nextNamespace = namespace.subNamespaces[pathElement] ?? {
                    let newNamespace = Namespace(id: walkedPath.joined(separator: "."))
                    namespace.subNamespaces[pathElement] = newNamespace
                    return newNamespace
                }()
                namespace = nextNamespace
            }
            guard let attributeName = path.last.map({ String($0) }) else {
                throw GeneratorError.attributeNameNotFound(attribute.id)
            }
            namespace.attributes[attributeName] = attribute
        }

        // Generate files
        let writeTo = repoDirectory + "Sources/SemConv/Generated/"
        let renderers: [FileRenderer] = [
            AttributeNameRenderer(),
            SpanAttributeRenderer(),
        ]
        for renderer in renderers {
            let directory = "\(writeTo)\(renderer.directory)"
            if !fileManager.fileExists(atPath: directory) {
                try fileManager.createDirectory(atPath: directory, withIntermediateDirectories: true)
            }
            // We generate a file for each top-level namespace inside a directory
            for namespace in namespaceTree.subNamespaces.values.sorted(by: { $0.id < $1.id }) {
                let filePath = "\(writeTo)\(renderer.directory)/\(renderer.fileNamePrefix)\(namespace.id).swift"
                var fileContents = generatedFileHeader
                fileContents += try renderer.renderFile(namespace)

                try? fileManager.removeItem(atPath: filePath)
                guard let fileData = fileContents.data(using: .utf8) else {
                    print("File data for \(filePath) could not be encoded as UTF8")
                    continue
                }
                fileManager.createFile(atPath: filePath, contents: fileData)
                print("Wrote file \(filePath).")
            }
        }
    }
}

/// A recursive type that is used to collect attributes. Namespaces may contain sub-namespaces.
/// The attribute and subNamespace properties act as a prefix tree on the attribute and namespace ids.
class Namespace {
    let id: String
    var attributes: [String: Attribute]
    var subNamespaces: [String: Namespace]

    init(id: String, attributes: [String: Attribute] = [:], subNamespaces: [String: Namespace] = [:]) {
        self.id = id
        self.attributes = attributes
        self.subNamespaces = subNamespaces
    }
}

let generatedFileHeader = """
// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all


"""

enum GeneratorError: Error {
    case attributeNameNotFound(String)
    case namespaceNameNotFound(String)
}
