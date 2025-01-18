// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `tls` namespace
    public enum tls {
        /// `tls.cipher`: String indicating the [cipher](https://datatracker.ietf.org/doc/html/rfc5246#appendix-A.5) used during the current connection. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// The values allowed for `tls.cipher` MUST be one of the `Descriptions` of the [registered TLS Cipher Suits](https://www.iana.org/assignments/tls-parameters/tls-parameters.xhtml#table-tls-parameters-4). 
        /// 
        /// - Examples:
        ///     - `TLS_RSA_WITH_3DES_EDE_CBC_SHA`
        ///     - `TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256`
        public static let cipher = "tls.cipher"
    
        /// `tls.curve`: String indicating the curve used for the given cipher, when applicable
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `secp256r1`
        public static let curve = "tls.curve"
    
        /// `tls.established`: Boolean flag indicating if the TLS negotiation was successful and transitioned to an encrypted tunnel.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: boolean
        /// 
        /// - Example: `true`
        public static let established = "tls.established"
    
        /// `tls.next_protocol`: String indicating the protocol being tunneled. Per the values in the [IANA registry](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids), this string should be lower case. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `http/1.1`
        public static let next_protocol = "tls.next_protocol"
    
        /// `tls.resumed`: Boolean flag indicating if this TLS connection was resumed from an existing TLS negotiation.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: boolean
        /// 
        /// - Example: `true`
        public static let resumed = "tls.resumed"
    
        /// `tls.client` namespace
        public enum client {
            /// `tls.client.certificate`: PEM-encoded stand-alone certificate offered by the client. This is usually mutually-exclusive of `client.certificate_chain` since this value also exists in that list. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `MII...`
            public static let certificate = "tls.client.certificate"
        
            /// `tls.client.certificate_chain`: Array of PEM-encoded certificates that make up the certificate chain offered by the client. This is usually mutually-exclusive of `client.certificate` since that value should be the first certificate in the chain. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public static let certificate_chain = "tls.client.certificate_chain"
        
            /// `tls.client.issuer`: Distinguished name of [subject](https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.6) of the issuer of the x.509 certificate presented by the client.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `CN=Example Root CA, OU=Infrastructure Team, DC=example, DC=com`
            public static let issuer = "tls.client.issuer"
        
            /// `tls.client.ja3`: A hash that identifies clients based on how they perform an SSL/TLS handshake.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `d4e5b18d6b55c71272893221c96ba240`
            public static let ja3 = "tls.client.ja3"
        
            /// `tls.client.not_after`: Date/Time indicating when client certificate is no longer considered valid.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `2021-01-01T00:00:00.000Z`
            public static let not_after = "tls.client.not_after"
        
            /// `tls.client.not_before`: Date/Time indicating when client certificate is first considered valid.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1970-01-01T00:00:00.000Z`
            public static let not_before = "tls.client.not_before"
        
            /// `tls.client.server_name`: Deprecated, use `server.address` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry.io`
            @available(*, deprecated, message: "Replaced by `server.address`.")
            public static let server_name = "tls.client.server_name"
        
            /// `tls.client.subject`: Distinguished name of subject of the x.509 certificate presented by the client.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `CN=myclient, OU=Documentation Team, DC=example, DC=com`
            public static let subject = "tls.client.subject"
        
            /// `tls.client.supported_ciphers`: Array of ciphers offered by the client during the client hello.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public static let supported_ciphers = "tls.client.supported_ciphers"
        
            /// `tls.client.hash` namespace
            public enum hash {
                /// `tls.client.hash.md5`: Certificate fingerprint using the MD5 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `0F76C7F2C55BFD7D8E8B8F4BFBF0C9EC`
                public static let md5 = "tls.client.hash.md5"
            
                /// `tls.client.hash.sha1`: Certificate fingerprint using the SHA1 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `9E393D93138888D288266C2D915214D1D1CCEB2A`
                public static let sha1 = "tls.client.hash.sha1"
            
                /// `tls.client.hash.sha256`: Certificate fingerprint using the SHA256 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `0687F666A054EF17A08E2F2162EAB4CBC0D265E1D7875BE74BF3C712CA92DAF0`
                public static let sha256 = "tls.client.hash.sha256"
            
            
            }
        }
    
        /// `tls.protocol` namespace
        public enum `protocol` {
            /// `tls.protocol.name`: Normalized lowercase protocol name parsed from original string of the negotiated [SSL/TLS protocol version](https://www.openssl.org/docs/man1.1.1/man3/SSL_get_version.html#RETURN-VALUES) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `ssl`
            ///     - `tls`
            public static let name = "tls.protocol.name"
        
            /// `tls.protocol.version`: Numeric part of the version parsed from the original string of the negotiated [SSL/TLS protocol version](https://www.openssl.org/docs/man1.1.1/man3/SSL_get_version.html#RETURN-VALUES) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `1.2`
            ///     - `3`
            public static let version = "tls.protocol.version"
        
        
        }
    
        /// `tls.server` namespace
        public enum server {
            /// `tls.server.certificate`: PEM-encoded stand-alone certificate offered by the server. This is usually mutually-exclusive of `server.certificate_chain` since this value also exists in that list. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `MII...`
            public static let certificate = "tls.server.certificate"
        
            /// `tls.server.certificate_chain`: Array of PEM-encoded certificates that make up the certificate chain offered by the server. This is usually mutually-exclusive of `server.certificate` since that value should be the first certificate in the chain. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public static let certificate_chain = "tls.server.certificate_chain"
        
            /// `tls.server.issuer`: Distinguished name of [subject](https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.6) of the issuer of the x.509 certificate presented by the client.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `CN=Example Root CA, OU=Infrastructure Team, DC=example, DC=com`
            public static let issuer = "tls.server.issuer"
        
            /// `tls.server.ja3s`: A hash that identifies servers based on how they perform an SSL/TLS handshake.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `d4e5b18d6b55c71272893221c96ba240`
            public static let ja3s = "tls.server.ja3s"
        
            /// `tls.server.not_after`: Date/Time indicating when server certificate is no longer considered valid.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `2021-01-01T00:00:00.000Z`
            public static let not_after = "tls.server.not_after"
        
            /// `tls.server.not_before`: Date/Time indicating when server certificate is first considered valid.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1970-01-01T00:00:00.000Z`
            public static let not_before = "tls.server.not_before"
        
            /// `tls.server.subject`: Distinguished name of subject of the x.509 certificate presented by the server.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `CN=myserver, OU=Documentation Team, DC=example, DC=com`
            public static let subject = "tls.server.subject"
        
            /// `tls.server.hash` namespace
            public enum hash {
                /// `tls.server.hash.md5`: Certificate fingerprint using the MD5 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `0F76C7F2C55BFD7D8E8B8F4BFBF0C9EC`
                public static let md5 = "tls.server.hash.md5"
            
                /// `tls.server.hash.sha1`: Certificate fingerprint using the SHA1 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `9E393D93138888D288266C2D915214D1D1CCEB2A`
                public static let sha1 = "tls.server.hash.sha1"
            
                /// `tls.server.hash.sha256`: Certificate fingerprint using the SHA256 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `0687F666A054EF17A08E2F2162EAB4CBC0D265E1D7875BE74BF3C712CA92DAF0`
                public static let sha256 = "tls.server.hash.sha256"
            
            
            }
        }
    }
}