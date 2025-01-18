// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `rpc` namespace
    public var rpc: RpcAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct RpcAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `rpc.method`: The name of the (logical) method being called, must be equal to the $method part in the span name.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This is the logical name of the method from the RPC interface perspective, which can be different from the name of any implementing method/function. The `code.function` attribute may be used to store the latter (e.g., method actually executing the call on the server side, RPC client stub method on the client side). 
            /// 
            /// - Example: `exampleMethod`
            public var method: Self.Key<String> { .init(name: OTelConventions.rpc.method) }
    
            /// `rpc.service`: The full (logical) name of the service being called, including its package name, if applicable.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This is the logical name of the service from the RPC interface perspective, which can be different from the name of any implementing class. The `code.namespace` attribute may be used to store the latter (despite the attribute name, it may include a class name; e.g., class with method actually executing the call on the server side, RPC client stub class on the client side). 
            /// 
            /// - Example: `myservice.EchoService`
            public var service: Self.Key<String> { .init(name: OTelConventions.rpc.service) }
    
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
            public var system: Self.Key<SystemEnum> { .init(name: OTelConventions.rpc.system) }
            
            public enum SystemEnum: String, SpanAttributeConvertible {
                /// `grpc`: gRPC
                case grpc = "grpc"
                /// `java_rmi`: Java RMI
                case java_rmi = "java_rmi"
                /// `dotnet_wcf`: .NET WCF
                case dotnet_wcf = "dotnet_wcf"
                /// `apache_dubbo`: Apache Dubbo
                case apache_dubbo = "apache_dubbo"
                /// `connect_rpc`: Connect RPC
                case connect_rpc = "connect_rpc"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
        /// `rpc.connect_rpc` namespace
        public var connect_rpc: ConnectRpcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ConnectRpcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var error_code: Self.Key<Error_CodeEnum> { .init(name: OTelConventions.rpc.connect_rpc.error_code) }
                
                public enum Error_CodeEnum: String, SpanAttributeConvertible {
                    /// `cancelled`
                    case cancelled = "cancelled"
                    /// `unknown`
                    case unknown = "unknown"
                    /// `invalid_argument`
                    case invalid_argument = "invalid_argument"
                    /// `deadline_exceeded`
                    case deadline_exceeded = "deadline_exceeded"
                    /// `not_found`
                    case not_found = "not_found"
                    /// `already_exists`
                    case already_exists = "already_exists"
                    /// `permission_denied`
                    case permission_denied = "permission_denied"
                    /// `resource_exhausted`
                    case resource_exhausted = "resource_exhausted"
                    /// `failed_precondition`
                    case failed_precondition = "failed_precondition"
                    /// `aborted`
                    case aborted = "aborted"
                    /// `out_of_range`
                    case out_of_range = "out_of_range"
                    /// `unimplemented`
                    case unimplemented = "unimplemented"
                    /// `internal`
                    case `internal` = "internal"
                    /// `unavailable`
                    case unavailable = "unavailable"
                    /// `data_loss`
                    case data_loss = "data_loss"
                    /// `unauthenticated`
                    case unauthenticated = "unauthenticated"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `rpc.connect_rpc.request` namespace
            public var request: RequestAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct RequestAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.connect_rpc.request.metadata`: Connect request metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.request.metadata.my-custom-metadata-attribute=["1.2.3.4", "1.2.3.5"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.connect_rpc.request.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        
            /// `rpc.connect_rpc.response` namespace
            public var response: ResponseAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ResponseAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.connect_rpc.response.metadata`: Connect response metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.response.metadata.my-custom-metadata-attribute=["attribute_value"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.connect_rpc.response.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        }
    
        /// `rpc.grpc` namespace
        public var grpc: GrpcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GrpcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var status_code: Self.Key<Status_CodeEnum> { .init(name: OTelConventions.rpc.grpc.status_code) }
                
                public enum Status_CodeEnum: String, SpanAttributeConvertible {
                    /// `0`: OK
                    case ok = "0"
                    /// `1`: CANCELLED
                    case cancelled = "1"
                    /// `2`: UNKNOWN
                    case unknown = "2"
                    /// `3`: INVALID_ARGUMENT
                    case invalid_argument = "3"
                    /// `4`: DEADLINE_EXCEEDED
                    case deadline_exceeded = "4"
                    /// `5`: NOT_FOUND
                    case not_found = "5"
                    /// `6`: ALREADY_EXISTS
                    case already_exists = "6"
                    /// `7`: PERMISSION_DENIED
                    case permission_denied = "7"
                    /// `8`: RESOURCE_EXHAUSTED
                    case resource_exhausted = "8"
                    /// `9`: FAILED_PRECONDITION
                    case failed_precondition = "9"
                    /// `10`: ABORTED
                    case aborted = "10"
                    /// `11`: OUT_OF_RANGE
                    case out_of_range = "11"
                    /// `12`: UNIMPLEMENTED
                    case unimplemented = "12"
                    /// `13`: INTERNAL
                    case `internal` = "13"
                    /// `14`: UNAVAILABLE
                    case unavailable = "14"
                    /// `15`: DATA_LOSS
                    case data_loss = "15"
                    /// `16`: UNAUTHENTICATED
                    case unauthenticated = "16"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `rpc.grpc.request` namespace
            public var request: RequestAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct RequestAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.grpc.request.metadata`: gRPC request metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.grpc.request.metadata.my-custom-metadata-attribute=["1.2.3.4", "1.2.3.5"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.grpc.request.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        
            /// `rpc.grpc.response` namespace
            public var response: ResponseAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ResponseAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.grpc.response.metadata`: gRPC response metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.grpc.response.metadata.my-custom-metadata-attribute=["attribute_value"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.grpc.response.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        }
    
        /// `rpc.jsonrpc` namespace
        public var jsonrpc: JsonrpcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct JsonrpcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `rpc.jsonrpc.error_code`: `error.code` property of response if it is an error response.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `-32700`
                ///     - `100`
                public var error_code: Self.Key<Int> { .init(name: OTelConventions.rpc.jsonrpc.error_code) }
        
                /// `rpc.jsonrpc.error_message`: `error.message` property of response if it is an error response.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Parse error`
                ///     - `User already exists`
                public var error_message: Self.Key<String> { .init(name: OTelConventions.rpc.jsonrpc.error_message) }
        
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
                public var request_id: Self.Key<String> { .init(name: OTelConventions.rpc.jsonrpc.request_id) }
        
                /// `rpc.jsonrpc.version`: Protocol version as in `jsonrpc` property of request/response. Since JSON-RPC 1.0 doesn't specify this, the value can be omitted.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `2.0`
                ///     - `1.0`
                public var version: Self.Key<String> { .init(name: OTelConventions.rpc.jsonrpc.version) }
            }
        
        
        }
    
        /// `rpc.message` namespace
        public var message: MessageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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
                /// `rpc.message.compressed_size`: Compressed size of the message in bytes.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                public var compressed_size: Self.Key<Int> { .init(name: OTelConventions.rpc.message.compressed_size) }
        
                /// `rpc.message.id`: MUST be calculated as two different counters starting from `1` one for sent messages and one for received message.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// This way we guarantee that the values will be consistent between different implementations.
                public var id: Self.Key<Int> { .init(name: OTelConventions.rpc.message.id) }
        
                /// `rpc.message.type`: Whether this is a received or sent message.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `SENT`
                ///     - `RECEIVED`
                public var type: Self.Key<TypeEnum> { .init(name: OTelConventions.rpc.message.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `SENT`
                    case sent = "SENT"
                    /// `RECEIVED`
                    case received = "RECEIVED"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `rpc.message.uncompressed_size`: Uncompressed size of the message in bytes.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                public var uncompressed_size: Self.Key<Int> { .init(name: OTelConventions.rpc.message.uncompressed_size) }
            }
        
        
        }
    }
}