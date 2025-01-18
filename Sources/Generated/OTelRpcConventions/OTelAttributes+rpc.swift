// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `rpc` namespace
    public enum rpc {
        /// `rpc.method`: The name of the (logical) method being called, must be equal to the $method part in the span name.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// This is the logical name of the method from the RPC interface perspective, which can be different from the name of any implementing method/function. The `code.function` attribute may be used to store the latter (e.g., method actually executing the call on the server side, RPC client stub method on the client side). 
        /// 
        /// - Example: `exampleMethod`
        public static let method = "rpc.method"
    
        /// `rpc.service`: The full (logical) name of the service being called, including its package name, if applicable.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// This is the logical name of the service from the RPC interface perspective, which can be different from the name of any implementing class. The `code.namespace` attribute may be used to store the latter (despite the attribute name, it may include a class name; e.g., class with method actually executing the call on the server side, RPC client stub class on the client side). 
        /// 
        /// - Example: `myservice.EchoService`
        public static let service = "rpc.service"
    
        /// `rpc.system`: A string identifying the remoting system. See below for a list of well-known identifiers.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `grpc`: gRPC
        ///     - `java_rmi`: Java RMI
        ///     - `dotnet_wcf`: .NET WCF
        ///     - `apache_dubbo`: Apache Dubbo
        ///     - `connect_rpc`: Connect RPC
        public static let system = "rpc.system"
    
        /// `rpc.connect_rpc` namespace
        public enum connect_rpc {
            /// `rpc.connect_rpc.error_code`: The [error codes](https://connect.build/docs/protocol/#error-codes) of the Connect request. Error codes are always string values.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `cancelled`
            ///     - `unknown`
            ///     - `invalid_argument`
            ///     - `deadline_exceeded`
            ///     - `not_found`
            ///     - `already_exists`
            ///     - `permission_denied`
            ///     - `resource_exhausted`
            ///     - `failed_precondition`
            ///     - `aborted`
            ///     - `out_of_range`
            ///     - `unimplemented`
            ///     - `internal`
            ///     - `unavailable`
            ///     - `data_loss`
            ///     - `unauthenticated`
            public static let error_code = "rpc.connect_rpc.error_code"
        
            /// `rpc.connect_rpc.request` namespace
            public enum request {
                /// `rpc.connect_rpc.request.metadata`: Connect request metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.request.metadata.my-custom-metadata-attribute=["1.2.3.4", "1.2.3.5"]`
                public static let metadata = "rpc.connect_rpc.request.metadata"
            
            
            }
        
            /// `rpc.connect_rpc.response` namespace
            public enum response {
                /// `rpc.connect_rpc.response.metadata`: Connect response metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.response.metadata.my-custom-metadata-attribute=["attribute_value"]`
                public static let metadata = "rpc.connect_rpc.response.metadata"
            
            
            }
        }
    
        /// `rpc.grpc` namespace
        public enum grpc {
            /// `rpc.grpc.status_code`: The [numeric status code](https://github.com/grpc/grpc/blob/v1.33.2/doc/statuscodes.md) of the gRPC request.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `0`: OK
            ///     - `1`: CANCELLED
            ///     - `2`: UNKNOWN
            ///     - `3`: INVALID_ARGUMENT
            ///     - `4`: DEADLINE_EXCEEDED
            ///     - `5`: NOT_FOUND
            ///     - `6`: ALREADY_EXISTS
            ///     - `7`: PERMISSION_DENIED
            ///     - `8`: RESOURCE_EXHAUSTED
            ///     - `9`: FAILED_PRECONDITION
            ///     - `10`: ABORTED
            ///     - `11`: OUT_OF_RANGE
            ///     - `12`: UNIMPLEMENTED
            ///     - `13`: INTERNAL
            ///     - `14`: UNAVAILABLE
            ///     - `15`: DATA_LOSS
            ///     - `16`: UNAUTHENTICATED
            public static let status_code = "rpc.grpc.status_code"
        
            /// `rpc.grpc.request` namespace
            public enum request {
                /// `rpc.grpc.request.metadata`: gRPC request metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.grpc.request.metadata.my-custom-metadata-attribute=["1.2.3.4", "1.2.3.5"]`
                public static let metadata = "rpc.grpc.request.metadata"
            
            
            }
        
            /// `rpc.grpc.response` namespace
            public enum response {
                /// `rpc.grpc.response.metadata`: gRPC response metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.grpc.response.metadata.my-custom-metadata-attribute=["attribute_value"]`
                public static let metadata = "rpc.grpc.response.metadata"
            
            
            }
        }
    
        /// `rpc.jsonrpc` namespace
        public enum jsonrpc {
            /// `rpc.jsonrpc.error_code`: `error.code` property of response if it is an error response.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `-32700`
            ///     - `100`
            public static let error_code = "rpc.jsonrpc.error_code"
        
            /// `rpc.jsonrpc.error_message`: `error.message` property of response if it is an error response.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `Parse error`
            ///     - `User already exists`
            public static let error_message = "rpc.jsonrpc.error_message"
        
            /// `rpc.jsonrpc.request_id`: `id` property of request or response. Since protocol allows id to be int, string, `null` or missing (for notifications), value is expected to be cast to string for simplicity. Use empty string in case of `null` value. Omit entirely if this is a notification. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `10`
            ///     - `request-7`
            ///     - ``
            public static let request_id = "rpc.jsonrpc.request_id"
        
            /// `rpc.jsonrpc.version`: Protocol version as in `jsonrpc` property of request/response. Since JSON-RPC 1.0 doesn't specify this, the value can be omitted.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `2.0`
            ///     - `1.0`
            public static let version = "rpc.jsonrpc.version"
        
        
        }
    
        /// `rpc.message` namespace
        public enum message {
            /// `rpc.message.compressed_size`: Compressed size of the message in bytes.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            public static let compressed_size = "rpc.message.compressed_size"
        
            /// `rpc.message.id`: MUST be calculated as two different counters starting from `1` one for sent messages and one for received message.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// This way we guarantee that the values will be consistent between different implementations.
            public static let id = "rpc.message.id"
        
            /// `rpc.message.type`: Whether this is a received or sent message.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `SENT`
            ///     - `RECEIVED`
            public static let type = "rpc.message.type"
        
            /// `rpc.message.uncompressed_size`: Uncompressed size of the message in bytes.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            public static let uncompressed_size = "rpc.message.uncompressed_size"
        
        
        }
    }
}