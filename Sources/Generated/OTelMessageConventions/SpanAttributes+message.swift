// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `message` namespace
    public var message: MessageAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct MessageAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `message.compressed_size`: Deprecated, use `rpc.message.compressed_size` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            @available(*, deprecated, message: "Replaced by `rpc.message.compressed_size`.")
            public var compressed_size: Self.Key<Int> { .init(name: OTelConventions.message.compressed_size) }
    
            /// `message.id`: Deprecated, use `rpc.message.id` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            @available(*, deprecated, message: "Replaced by `rpc.message.id`.")
            public var id: Self.Key<Int> { .init(name: OTelConventions.message.id) }
    
            /// `message.type`: Deprecated, use `rpc.message.type` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `SENT`
            ///     - `RECEIVED`
            @available(*, deprecated, message: "Replaced by `rpc.message.type`.")
            public var type: Self.Key<TypeEnum> { .init(name: OTelConventions.message.type) }
            
            public enum TypeEnum: String, SpanAttributeConvertible {
                /// `SENT`
                case sent = "SENT"
                /// `RECEIVED`
                case received = "RECEIVED"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `message.uncompressed_size`: Deprecated, use `rpc.message.uncompressed_size` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            @available(*, deprecated, message: "Replaced by `rpc.message.uncompressed_size`.")
            public var uncompressed_size: Self.Key<Int> { .init(name: OTelConventions.message.uncompressed_size) }
        }
    
    
    }
}