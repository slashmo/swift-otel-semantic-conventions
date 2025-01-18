struct SpanAttributeRenderer: FileRenderer {
    let fileNamePrefix = "SpanAttributes+"

    func renderFile(_ namespace: Namespace) throws -> String {
        return try """
        import OTelConventions
        import Tracing

        extension SpanAttributes {
        \(renderNamespace(namespace, indent: 4))
        }
        """
    }

    private func renderNamespace(_ namespace: Namespace, inSpanNamespace: Bool = false, indent: Int) throws -> String {
        guard let namespaceName = namespace.id.split(separator: ".").last else {
            throw GeneratorError.namespaceNameNotFound(namespace.id)
        }
        let varName = swiftName(String(namespaceName))
        let structName = "\(namespaceName.capitalized.replacingOccurrences(of: "_", with: ""))Attributes"

        let standardAttributes = namespace.attributes.values.filter { !isTemplateType($0.type) }
        let templateAttributes = namespace.attributes.values.filter { isTemplateType($0.type) }

        var result = "/// `\(namespace.id)` namespace"
        result.append("""

        public var \(varName): \(structName) {
            get {
                .init(attributes: \(inSpanNamespace ? "self.attributes" : "self"))
            }
            set {
                \(inSpanNamespace ? "self.attributes" : "self") = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct \(structName): SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        """)
        try result.append(
            "\n" +
                templateAttributes.sorted { $0.id < $1.id }.map { attribute in
                    try renderTemplateAttribute(attribute, indent: 4)
                }.joined(separator: "\n\n")
        )
        result.append("""

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        """)
        try result.append(
            "\n" +
                standardAttributes.sorted { $0.id < $1.id }.map { attribute in
                    try renderStandardAttribute(attribute, namespace, indent: 8)
                }.joined(separator: "\n\n")
        )

        result.append("\n    }")
        try result.append(
            "\n\n" +
                namespace.subNamespaces.values.sorted { $0.id < $1.id }.map { child in
                    try renderNamespace(child, inSpanNamespace: true, indent: 4)
                }.joined(separator: "\n\n")
        )
        result.append("\n}")
        return result
            .split(separator: "\n", omittingEmptySubsequences: false)
            .map { String(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }

    private func renderStandardAttribute(_ attribute: Attribute, _ namespace: Namespace, indent: Int) throws -> String {
        guard let attributeName = attribute.id.split(separator: ".").last else {
            throw GeneratorError.attributeNameNotFound(attribute.id)
        }
        var propertyName = String(attributeName)
        // In the case where we have both an attribute and a namespace overlapping (deployment.environment & deployment.environment.name), the attribute gets an underscore in order to avoid name clobbering.
        if namespace.subNamespaces[propertyName] != nil {
            propertyName = "_\(propertyName)"
        }
        propertyName = swiftName(propertyName)

        var result = renderDocs(attribute)
        if let deprecatedMessage = attribute.deprecated {
            result.append("\n@available(*, deprecated, message: \"\(deprecatedMessage)\")")
        }

        let swiftType: String
        if let type = attribute.type as? Attribute.StandardType {
            switch type {
            case .boolean: swiftType = "Bool"
            case .booleanArray: swiftType = "[Bool]"
            case .double: swiftType = "Double"
            case .doubleArray: swiftType = "[Double]"
            case .int: swiftType = "Int"
            case .intArray: swiftType = "[Int]"
            case .string: swiftType = "String"
            case .stringArray: swiftType = "[String]"
            default:
                throw SpanAttributeRendererError.invalidStandardAttributeType(attribute.type)
            }
            result.append("\npublic var \(propertyName): Self.Key<\(swiftType)> { .init(name: OTelConventions.\(namespace.id).\(propertyName)) }")
        } else if let type = attribute.type as? Attribute.EnumType {
            let enumTypeName = "\(attributeName.capitalized)Enum"
            result.append("\npublic var \(propertyName): Self.Key<\(enumTypeName)> { .init(name: OTelConventions.\(namespace.id).\(propertyName)) }")

            result.append("\n\npublic enum \(enumTypeName): String, SpanAttributeConvertible {")
            for member in type.members {
                let caseName = swiftName(member.id)
                result.append("\n    /// `\(member.value)`")
                if let brief = member.brief {
                    result.append(": \(brief.trimmingCharacters(in: .whitespacesAndNewlines))")
                }
                if let deprecatedMessage = member.deprecated {
                    result.append("\n    @available(*, deprecated, message: \"\(deprecatedMessage)\")")
                }
                result.append("\n    case \(caseName) = \"\(member.value)\"")
            }

            result.append("""

                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
            """)
        } else {
            throw SpanAttributeRendererError.invalidStandardAttributeType(attribute.type)
        }

        return result.split(separator: "\n", omittingEmptySubsequences: false)
            .map { String(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }

    private func renderTemplateAttribute(_ attribute: Attribute, indent: Int) throws -> String {
        guard let attributeName = attribute.id.split(separator: ".").last else {
            throw GeneratorError.attributeNameNotFound(attribute.id)
        }
        let swiftName = swiftName(String(attributeName))
        let structName = "\(attributeName.capitalized.replacingOccurrences(of: "_", with: ""))Attributes"

        let valueType: String
        guard let type = attribute.type as? Attribute.StandardType else {
            throw SpanAttributeRendererError.invalidTemplateAttributeType(attribute.type)
        }
        switch type {
        case .templateBoolean: valueType = "Bool"
        case .templateBooleanArray: valueType = "[Bool]"
        case .templateDouble: valueType = "Double"
        case .templateDoubleArray: valueType = "[Double]"
        case .templateInt: valueType = "Int"
        case .templateIntArray: valueType = "[Int]"
        case .templateString: valueType = "String"
        case .templateStringArray: valueType = "[String]"
        default:
            throw SpanAttributeRendererError.invalidTemplateAttributeType(attribute.type)
        }

        // getTemplateType

        var result = renderDocs(attribute)
        result.append("""

        public var \(swiftName): \(structName) {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        public struct \(structName) {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public mutating func set(_ key: String, to value: \(valueType)) {
                let attributeId = self.attributeId(forKey: key)
                self.attributes[attributeId] = value
            }

            private func attributeId(forKey key: String) -> String {
                var attributeId = "\(attribute.id)."

                for index in key.indices {
                    let character = key[index]

                    if character == "-" {
                        attributeId.append("_")
                    } else {
                        attributeId.append(character.lowercased())
                    }
                }

                return attributeId
            }
        }
        """)
        return result.split(separator: "\n", omittingEmptySubsequences: false)
            .map { String(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }

    private func isTemplateType(_ type: Attribute.AttributeType) -> Bool {
        if let standardType = type as? Attribute.StandardType {
            switch standardType {
            case .templateBoolean, .templateBooleanArray, .templateInt, .templateIntArray, .templateDouble, .templateDoubleArray, .templateString, .templateStringArray:
                return true
            case .boolean, .booleanArray, .int, .intArray, .double, .doubleArray, .string, .stringArray:
                return false
            }
        } else {
            return false
        }
    }
}

enum SpanAttributeRendererError: Error {
    case invalidEnumAttributeType(Attribute.AttributeType)
    case invalidStandardAttributeType(Attribute.AttributeType)
    case invalidTemplateAttributeType(Attribute.AttributeType)
}
