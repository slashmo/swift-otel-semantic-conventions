// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `disk` namespace
    public var disk: DiskAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct DiskAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `disk.io` namespace
        public var io: IoAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct IoAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `disk.io.direction`: The disk IO operation direction.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `read`
                ///     - `write`
                /// 
                /// - Example: `read`
                public var direction: Self.Key<DirectionEnum> { .init(name: OTelConventions.disk.io.direction) }
                
                public enum DirectionEnum: String, SpanAttributeConvertible {
                    /// `read`
                    case read = "read"
                    /// `write`
                    case write = "write"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}