// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `net` namespace
    public enum net {
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
        public static let transport = "net.transport"
    
        /// `net.host` namespace
        public enum host {
            /// `net.host.ip`: Deprecated, use `network.local.address`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `192.168.0.1`
            @available(*, deprecated, message: "Replaced by `network.local.address`.")
            public static let ip = "net.host.ip"
        
            /// `net.host.name`: Deprecated, use `server.address`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `example.com`
            @available(*, deprecated, message: "Replaced by `server.address`.")
            public static let name = "net.host.name"
        
            /// `net.host.port`: Deprecated, use `server.port`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `8080`
            @available(*, deprecated, message: "Replaced by `server.port`.")
            public static let port = "net.host.port"
        
        
        }
    
        /// `net.peer` namespace
        public enum peer {
            /// `net.peer.ip`: Deprecated, use `network.peer.address`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `127.0.0.1`
            @available(*, deprecated, message: "Replaced by `network.peer.address`.")
            public static let ip = "net.peer.ip"
        
            /// `net.peer.name`: Deprecated, use `server.address` on client spans and `client.address` on server spans.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `example.com`
            @available(*, deprecated, message: "Replaced by `server.address` on client spans and `client.address` on server spans.")
            public static let name = "net.peer.name"
        
            /// `net.peer.port`: Deprecated, use `server.port` on client spans and `client.port` on server spans.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `8080`
            @available(*, deprecated, message: "Replaced by `server.port` on client spans and `client.port` on server spans.")
            public static let port = "net.peer.port"
        
        
        }
    
        /// `net.protocol` namespace
        public enum `protocol` {
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
            public static let name = "net.protocol.name"
        
            /// `net.protocol.version`: Deprecated, use `network.protocol.version`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `3.1.1`
            @available(*, deprecated, message: "Replaced by `network.protocol.version`.")
            public static let version = "net.protocol.version"
        
        
        }
    
        /// `net.sock` namespace
        public enum sock {
            /// `net.sock.family`: Deprecated, use `network.transport` and `network.type`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `inet`: IPv4 address
            ///     - `inet6`: IPv6 address
            ///     - `unix`: Unix domain socket path
            @available(*, deprecated, message: "Split to `network.transport` and `network.type`.")
            public static let family = "net.sock.family"
        
            /// `net.sock.host` namespace
            public enum host {
                /// `net.sock.host.addr`: Deprecated, use `network.local.address`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/var/my.sock`
                @available(*, deprecated, message: "Replaced by `network.local.address`.")
                public static let addr = "net.sock.host.addr"
            
                /// `net.sock.host.port`: Deprecated, use `network.local.port`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `8080`
                @available(*, deprecated, message: "Replaced by `network.local.port`.")
                public static let port = "net.sock.host.port"
            
            
            }
        
            /// `net.sock.peer` namespace
            public enum peer {
                /// `net.sock.peer.addr`: Deprecated, use `network.peer.address`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `192.168.0.1`
                @available(*, deprecated, message: "Replaced by `network.peer.address`.")
                public static let addr = "net.sock.peer.addr"
            
                /// `net.sock.peer.name`: Deprecated, no replacement at this time.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/var/my.sock`
                @available(*, deprecated, message: "Removed.")
                public static let name = "net.sock.peer.name"
            
                /// `net.sock.peer.port`: Deprecated, use `network.peer.port`.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `65531`
                @available(*, deprecated, message: "Replaced by `network.peer.port`.")
                public static let port = "net.sock.peer.port"
            
            
            }
        }
    }
}