// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `go` namespace
    public var go: GoAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct GoAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `go.memory` namespace
        public var memory: MemoryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct MemoryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `go.memory.type`: The type of memory.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `stack`: Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
                ///     - `other`: Memory used by the Go runtime, excluding other categories of memory usage described in this enumeration.
                /// 
                /// - Examples:
                ///     - `other`
                ///     - `stack`
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.go.memory.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `stack`: Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
                    case stack = "stack"
                    /// `other`: Memory used by the Go runtime, excluding other categories of memory usage described in this enumeration.
                    case other = "other"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}