// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `net` namespace
    public var net: NetAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct NetAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `net.transport`: Deprecated, use `network.transport`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `ip_tcp`
            ///     - `ip_udp`
            ///     - `pipe`: Named or anonymous pipe.
            ///     - `inproc`: In-process communication.
            ///     - `other`: Something else (non IP-based).
            @available(*, deprecated, message: "Replaced by `network.transport`.")
            public var transport: Self.Key<TransportEnum> { .init(name: OTelConventions.net.transport) }
            
            public enum TransportEnum: String, SpanAttributeConvertible {
                /// `ip_tcp`
                case ip_tcp = "ip_tcp"
                /// `ip_udp`
                case ip_udp = "ip_udp"
                /// `pipe`: Named or anonymous pipe.
                case pipe = "pipe"
                /// `inproc`: In-process communication.
                case inproc = "inproc"
                /// `other`: Something else (non IP-based).
                case other = "other"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
        /// `net.host` namespace
        public var host: HostAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct HostAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `net.host.ip`: Deprecated, use `network.local.address`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `192.168.0.1`
                @available(*, deprecated, message: "Replaced by `network.local.address`.")
                public var ip: Self.Key<String> { .init(name: OTelConventions.net.host.ip) }
        
                /// `net.host.name`: Deprecated, use `server.address`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `example.com`
                @available(*, deprecated, message: "Replaced by `server.address`.")
                public var name: Self.Key<String> { .init(name: OTelConventions.net.host.name) }
        
                /// `net.host.port`: Deprecated, use `server.port`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `8080`
                @available(*, deprecated, message: "Replaced by `server.port`.")
                public var port: Self.Key<Int> { .init(name: OTelConventions.net.host.port) }
            }
        
        
        }
    
        /// `net.peer` namespace
        public var peer: PeerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct PeerAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `net.peer.ip`: Deprecated, use `network.peer.address`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `127.0.0.1`
                @available(*, deprecated, message: "Replaced by `network.peer.address`.")
                public var ip: Self.Key<String> { .init(name: OTelConventions.net.peer.ip) }
        
                /// `net.peer.name`: Deprecated, use `server.address` on client spans and `client.address` on server spans.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `example.com`
                @available(*, deprecated, message: "Replaced by `server.address` on client spans and `client.address` on server spans.")
                public var name: Self.Key<String> { .init(name: OTelConventions.net.peer.name) }
        
                /// `net.peer.port`: Deprecated, use `server.port` on client spans and `client.port` on server spans.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `8080`
                @available(*, deprecated, message: "Replaced by `server.port` on client spans and `client.port` on server spans.")
                public var port: Self.Key<Int> { .init(name: OTelConventions.net.peer.port) }
            }
        
        
        }
    
        /// `net.protocol` namespace
        public var `protocol`: ProtocolAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ProtocolAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `net.protocol.name`: Deprecated, use `network.protocol.name`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `amqp`
                ///     - `http`
                ///     - `mqtt`
                @available(*, deprecated, message: "Replaced by `network.protocol.name`.")
                public var name: Self.Key<String> { .init(name: OTelConventions.net.protocol.name) }
        
                /// `net.protocol.version`: Deprecated, use `network.protocol.version`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `3.1.1`
                @available(*, deprecated, message: "Replaced by `network.protocol.version`.")
                public var version: Self.Key<String> { .init(name: OTelConventions.net.protocol.version) }
            }
        
        
        }
    
        /// `net.sock` namespace
        public var sock: SockAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct SockAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `net.sock.family`: Deprecated, use `network.transport` and `network.type`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `inet`: IPv4 address
                ///     - `inet6`: IPv6 address
                ///     - `unix`: Unix domain socket path
                @available(*, deprecated, message: "Split to `network.transport` and `network.type`.")
                public var family: Self.Key<FamilyEnum> { .init(name: OTelConventions.net.sock.family) }
                
                public enum FamilyEnum: String, SpanAttributeConvertible {
                    /// `inet`: IPv4 address
                    case inet = "inet"
                    /// `inet6`: IPv6 address
                    case inet6 = "inet6"
                    /// `unix`: Unix domain socket path
                    case unix = "unix"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `net.sock.host` namespace
            public var host: HostAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct HostAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `net.sock.host.addr`: Deprecated, use `network.local.address`.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `/var/my.sock`
                    @available(*, deprecated, message: "Replaced by `network.local.address`.")
                    public var addr: Self.Key<String> { .init(name: OTelConventions.net.sock.host.addr) }
            
                    /// `net.sock.host.port`: Deprecated, use `network.local.port`.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `8080`
                    @available(*, deprecated, message: "Replaced by `network.local.port`.")
                    public var port: Self.Key<Int> { .init(name: OTelConventions.net.sock.host.port) }
                }
            
            
            }
        
            /// `net.sock.peer` namespace
            public var peer: PeerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct PeerAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `net.sock.peer.addr`: Deprecated, use `network.peer.address`.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `192.168.0.1`
                    @available(*, deprecated, message: "Replaced by `network.peer.address`.")
                    public var addr: Self.Key<String> { .init(name: OTelConventions.net.sock.peer.addr) }
            
                    /// `net.sock.peer.name`: Deprecated, no replacement at this time.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `/var/my.sock`
                    @available(*, deprecated, message: "Removed.")
                    public var name: Self.Key<String> { .init(name: OTelConventions.net.sock.peer.name) }
            
                    /// `net.sock.peer.port`: Deprecated, use `network.peer.port`.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `65531`
                    @available(*, deprecated, message: "Replaced by `network.peer.port`.")
                    public var port: Self.Key<Int> { .init(name: OTelConventions.net.sock.peer.port) }
                }
            
            
            }
        }
    }
}