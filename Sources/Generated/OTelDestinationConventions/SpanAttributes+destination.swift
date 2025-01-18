// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `destination` namespace
    public var destination: DestinationAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct DestinationAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `destination.address`: Destination address - domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// When observed from the source side, and when communicating through an intermediary, `destination.address` SHOULD represent the destination address behind any intermediaries, for example proxies, if it's available. 
            /// 
            /// - Examples:
            ///     - `destination.example.com`
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public var address: Self.Key<String> { .init(name: OTelAttributes.destination.address) }
    
            /// `destination.port`: Destination port number
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `3389`
            ///     - `2888`
            public var port: Self.Key<Int> { .init(name: OTelAttributes.destination.port) }
        }
    
    
    }
}