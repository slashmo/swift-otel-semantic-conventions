// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `http` namespace
    public enum http {
        /// `http.client_ip`: Deprecated, use `client.address` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `83.164.160.102`
        @available(*, deprecated, message: "Replaced by `client.address`.")
        public static let client_ip = "http.client_ip"
    
        /// `http.flavor`: Deprecated, use `network.protocol.name` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `1.0`: HTTP/1.0
        ///     - `1.1`: HTTP/1.1
        ///     - `2.0`: HTTP/2
        ///     - `3.0`: HTTP/3
        ///     - `SPDY`: SPDY protocol.
        ///     - `QUIC`: QUIC protocol.
        @available(*, deprecated, message: "Replaced by `network.protocol.name`.")
        public static let flavor = "http.flavor"
    
        /// `http.host`: Deprecated, use one of `server.address`, `client.address` or `http.request.header.host` instead, depending on the usage.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `www.example.org`
        @available(*, deprecated, message: "Replaced by one of `server.address`, `client.address` or `http.request.header.host`, depending on the usage.")
        public static let host = "http.host"
    
        /// `http.method`: Deprecated, use `http.request.method` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `GET`
        ///     - `POST`
        ///     - `HEAD`
        @available(*, deprecated, message: "Replaced by `http.request.method`.")
        public static let method = "http.method"
    
        /// `http.request_content_length`: Deprecated, use `http.request.header.<key>` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `3495`
        @available(*, deprecated, message: "Replaced by `http.request.header.<key>`.")
        public static let request_content_length = "http.request_content_length"
    
        /// `http.request_content_length_uncompressed`: Deprecated, use `http.request.body.size` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `5493`
        @available(*, deprecated, message: "Replaced by `http.request.body.size`.")
        public static let request_content_length_uncompressed = "http.request_content_length_uncompressed"
    
        /// `http.response_content_length`: Deprecated, use `http.response.header.<key>` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `3495`
        @available(*, deprecated, message: "Replaced by `http.response.header.<key>`.")
        public static let response_content_length = "http.response_content_length"
    
        /// `http.response_content_length_uncompressed`: Deprecated, use `http.response.body.size` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `5493`
        @available(*, deprecated, message: "Replace by `http.response.body.size`.")
        public static let response_content_length_uncompressed = "http.response_content_length_uncompressed"
    
        /// `http.route`: The matched route, that is, the path template in the format used by the respective server framework. 
        /// 
        /// - Stability: stable
        /// 
        /// - Type: string
        /// 
        /// MUST NOT be populated when this is not supported by the HTTP server framework as the route attribute should have low-cardinality and the URI path can NOT substitute it. SHOULD include the [application root](/docs/http/http-spans.md#http-server-definitions) if there is one. 
        /// 
        /// - Examples:
        ///     - `/users/:userID?`
        ///     - `{controller}/{action}/{id?}`
        public static let route = "http.route"
    
        /// `http.scheme`: Deprecated, use `url.scheme` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `http`
        ///     - `https`
        @available(*, deprecated, message: "Replaced by `url.scheme` instead.")
        public static let scheme = "http.scheme"
    
        /// `http.server_name`: Deprecated, use `server.address` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `example.com`
        @available(*, deprecated, message: "Replaced by `server.address`.")
        public static let server_name = "http.server_name"
    
        /// `http.status_code`: Deprecated, use `http.response.status_code` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `200`
        @available(*, deprecated, message: "Replaced by `http.response.status_code`.")
        public static let status_code = "http.status_code"
    
        /// `http.target`: Deprecated, use `url.path` and `url.query` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `/search?q=OpenTelemetry#SemConv`
        @available(*, deprecated, message: "Split to `url.path` and `url.query.")
        public static let target = "http.target"
    
        /// `http.url`: Deprecated, use `url.full` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `https://www.foo.bar/search?q=OpenTelemetry#SemConv`
        @available(*, deprecated, message: "Replaced by `url.full`.")
        public static let url = "http.url"
    
        /// `http.user_agent`: Deprecated, use `user_agent.original` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `CERN-LineMode/2.15 libwww/2.17b3`
        ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
        @available(*, deprecated, message: "Replaced by `user_agent.original`.")
        public static let user_agent = "http.user_agent"
    
        /// `http.connection` namespace
        public enum connection {
            /// `http.connection.state`: State of the HTTP connection in the HTTP connection pool.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `active`: active state.
            ///     - `idle`: idle state.
            /// 
            /// - Examples:
            ///     - `active`
            ///     - `idle`
            public static let state = "http.connection.state"
        
        
        }
    
        /// `http.request` namespace
        public enum request {
            /// `http.request.header`: HTTP request headers, `<key>` being the normalized HTTP Header name (lowercase), the value being the header values. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: templateStringArray
            /// 
            /// Instrumentations SHOULD require an explicit configuration of which headers are to be captured. Including all request headers can be a security risk - explicit configuration helps avoid leaking sensitive information. The `User-Agent` header is already captured in the `user_agent.original` attribute. Users MAY explicitly configure instrumentations to capture them even though it is not recommended. The attribute value MUST consist of either multiple header values as an array of strings or a single-item array containing a possibly comma-concatenated string, depending on the way the HTTP library provides access to headers. 
            /// 
            /// - Examples:
            ///     - `http.request.header.content-type=["application/json"]`
            ///     - `http.request.header.x-forwarded-for=["1.2.3.4", "1.2.3.5"]`
            public static let header = "http.request.header"
        
            /// `http.request.method`: HTTP request method.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: enum
            ///     - `CONNECT`: CONNECT method.
            ///     - `DELETE`: DELETE method.
            ///     - `GET`: GET method.
            ///     - `HEAD`: HEAD method.
            ///     - `OPTIONS`: OPTIONS method.
            ///     - `PATCH`: PATCH method.
            ///     - `POST`: POST method.
            ///     - `PUT`: PUT method.
            ///     - `TRACE`: TRACE method.
            ///     - `_OTHER`: Any HTTP method that the instrumentation has no prior knowledge of.
            /// 
            /// HTTP request method value SHOULD be "known" to the instrumentation. By default, this convention defines "known" methods as the ones listed in [RFC9110](https://www.rfc-editor.org/rfc/rfc9110.html#name-methods) and the PATCH method defined in [RFC5789](https://www.rfc-editor.org/rfc/rfc5789.html).  If the HTTP request method is not known to instrumentation, it MUST set the `http.request.method` attribute to `_OTHER`.  If the HTTP instrumentation could end up converting valid HTTP request methods to `_OTHER`, then it MUST provide a way to override the list of known HTTP methods. If this override is done via environment variable, then the environment variable MUST be named OTEL_INSTRUMENTATION_HTTP_KNOWN_METHODS and support a comma-separated list of case-sensitive known HTTP methods (this list MUST be a full override of the default known method, it is not a list of known methods in addition to the defaults).  HTTP method names are case-sensitive and `http.request.method` attribute value MUST match a known HTTP method name exactly. Instrumentations for specific web frameworks that consider HTTP methods to be case insensitive, SHOULD populate a canonical equivalent. Tracing instrumentations that do so, MUST also set `http.request.method_original` to the original value. 
            /// 
            /// - Examples:
            ///     - `GET`
            ///     - `POST`
            ///     - `HEAD`
            public static let method = "http.request.method"
        
            /// `http.request.method_original`: Original HTTP method sent by the client in the request line.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `GeT`
            ///     - `ACL`
            ///     - `foo`
            public static let method_original = "http.request.method_original"
        
            /// `http.request.resend_count`: The ordinal number of request resending attempt (for any reason, including redirects). 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: int
            /// 
            /// The resend count SHOULD be updated each time an HTTP request gets resent by the client, regardless of what was the cause of the resending (e.g. redirection, authorization failure, 503 Server Unavailable, network issues, or any other). 
            /// 
            /// - Example: `3`
            public static let resend_count = "http.request.resend_count"
        
            /// `http.request.size`: The total size of the request in bytes. This should be the total number of bytes sent over the wire, including the request line (HTTP/1.1), framing (HTTP/2 and HTTP/3), headers, and request body if any. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `1437`
            public static let size = "http.request.size"
        
            /// `http.request.body` namespace
            public enum body {
                /// `http.request.body.size`: The size of the request payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `3495`
                public static let size = "http.request.body.size"
            
            
            }
        }
    
        /// `http.response` namespace
        public enum response {
            /// `http.response.header`: HTTP response headers, `<key>` being the normalized HTTP Header name (lowercase), the value being the header values. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: templateStringArray
            /// 
            /// Instrumentations SHOULD require an explicit configuration of which headers are to be captured. Including all response headers can be a security risk - explicit configuration helps avoid leaking sensitive information. Users MAY explicitly configure instrumentations to capture them even though it is not recommended. The attribute value MUST consist of either multiple header values as an array of strings or a single-item array containing a possibly comma-concatenated string, depending on the way the HTTP library provides access to headers. 
            /// 
            /// - Examples:
            ///     - `http.response.header.content-type=["application/json"]`
            ///     - `http.response.header.my-custom-header=["abc", "def"]`
            public static let header = "http.response.header"
        
            /// `http.response.size`: The total size of the response in bytes. This should be the total number of bytes sent over the wire, including the status line (HTTP/1.1), framing (HTTP/2 and HTTP/3), headers, and response body and trailers if any. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `1437`
            public static let size = "http.response.size"
        
            /// `http.response.status_code`: [HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6).
            /// 
            /// - Stability: stable
            /// 
            /// - Type: int
            /// 
            /// - Example: `200`
            public static let status_code = "http.response.status_code"
        
            /// `http.response.body` namespace
            public enum body {
                /// `http.response.body.size`: The size of the response payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `3495`
                public static let size = "http.response.body.size"
            
            
            }
        }
    }
}