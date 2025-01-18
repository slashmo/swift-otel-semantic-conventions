/// Type that is able to render a file given a namespace
protocol FileRenderer {
    var directory: String { get }
    var fileNamePrefix: String { get }
    func renderFile(_ namespace: Namespace) throws -> String
}

func renderDocs(_ attribute: Attribute) -> String {
    var result = "`\(attribute.id)`"
    if let brief = attribute.brief {
        result.append(": \(brief.replacingOccurrences(of: "\n", with: " "))")
    }
    result.append("\n\n- Stability: \(attribute.stability)")

    if let attributeType = attribute.type as? Attribute.EnumType {
        result.append("\n\n- Type: enum")
        for member in attributeType.members {
            result.append("\n    - `\(member.value)`")
            if let brief = member.brief {
                result.append(": \(brief.trimmingCharacters(in: .whitespacesAndNewlines))")
            }
        }
    } else {
        result.append("\n\n- Type: \(attribute.type)")
    }

    if let note = attribute.note {
        result.append("\n\n\(note.replacingOccurrences(of: "\n", with: " "))")
    }

    if let examples = attribute.examples {
        if examples.count == 1 {
            result.append("\n\n- Example: `\(examples[0])`")
        } else {
            result.append("\n\n- Examples:")
            for example in examples {
                result.append("\n    - `\(example)`")
            }
        }
    }

    return result.split(separator: "\n", omittingEmptySubsequences: false)
        .map { "/// " + $0 }
        .joined(separator: "\n")
}
