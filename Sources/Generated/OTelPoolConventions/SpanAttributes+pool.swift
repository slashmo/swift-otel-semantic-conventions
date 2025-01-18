// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `pool` namespace
    public var pool: PoolAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct PoolAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `pool.name`: Deprecated, use `db.client.connection.pool.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `myDataSource`
            @available(*, deprecated, message: "Replaced by `db.client.connection.pool.name`.")
            public var name: Self.Key<String> { .init(name: OTelAttributes.pool.name) }
        }
    
    
    }
}