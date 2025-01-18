// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `graphql` namespace
    public var graphql: GraphqlAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct GraphqlAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `graphql.document`: The GraphQL document being executed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// The value may be sanitized to exclude sensitive information.
            /// 
            /// - Example: `query findBookById { bookById(id: ?) { name } }`
            public var document: Self.Key<String> { .init(name: OTelAttributes.graphql.document) }
        }
    
        /// `graphql.operation` namespace
        public var operation: OperationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct OperationAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `graphql.operation.name`: The name of the operation being executed.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `findBookById`
                public var name: Self.Key<String> { .init(name: OTelAttributes.graphql.operation.name) }
        
                /// `graphql.operation.type`: The type of the operation being executed.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `query`: GraphQL query
                ///     - `mutation`: GraphQL mutation
                ///     - `subscription`: GraphQL subscription
                /// 
                /// - Examples:
                ///     - `query`
                ///     - `mutation`
                ///     - `subscription`
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.graphql.operation.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `query`: GraphQL query
                    case query = "query"
                    /// `mutation`: GraphQL mutation
                    case mutation = "mutation"
                    /// `subscription`: GraphQL subscription
                    case subscription = "subscription"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}