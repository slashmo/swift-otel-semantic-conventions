// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `client` namespace
    public var client: ClientAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct ClientAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `client.address`: Client address - domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// When observed from the server side, and when communicating through an intermediary, `client.address` SHOULD represent the client address behind any intermediaries,  for example proxies, if it's available. 
            /// 
            /// - Examples:
            ///     - `client.example.com`
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public var address: Self.Key<String> { .init(name: OTelAttributes.client.address) }
    
            /// `client.port`: Client port number.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: int
            /// 
            /// When observed from the server side, and when communicating through an intermediary, `client.port` SHOULD represent the client port behind any intermediaries,  for example proxies, if it's available. 
            /// 
            /// - Example: `65123`
            public var port: Self.Key<Int> { .init(name: OTelAttributes.client.port) }
        }
    
    
    }
}