// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `server` namespace
    public var server: ServerAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct ServerAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `server.address`: Server domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// When observed from the client side, and when communicating through an intermediary, `server.address` SHOULD represent the server address behind any intermediaries, for example proxies, if it's available. 
            /// 
            /// - Examples:
            ///     - `example.com`
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public var address: Self.Key<String> { .init(name: OTelConventions.server.address) }
    
            /// `server.port`: Server port number.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: int
            /// 
            /// When observed from the client side, and when communicating through an intermediary, `server.port` SHOULD represent the server port behind any intermediaries, for example proxies, if it's available. 
            /// 
            /// - Examples:
            ///     - `80`
            ///     - `8080`
            ///     - `443`
            public var port: Self.Key<Int> { .init(name: OTelConventions.server.port) }
        }
    
    
    }
}