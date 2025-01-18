// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `aspnetcore` namespace
    public var aspnetcore: AspnetcoreAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct AspnetcoreAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `aspnetcore.diagnostics` namespace
        public var diagnostics: DiagnosticsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DiagnosticsAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `aspnetcore.diagnostics.exception` namespace
            public var exception: ExceptionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ExceptionAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `aspnetcore.diagnostics.exception.result`: ASP.NET Core exception middleware handling result
                    /// 
                    /// - Stability: stable
                    /// 
                    /// - Type: enum
                    ///     - `handled`: Exception was handled by the exception handling middleware.
                    ///     - `unhandled`: Exception was not handled by the exception handling middleware.
                    ///     - `skipped`: Exception handling was skipped because the response had started.
                    ///     - `aborted`: Exception handling didn't run because the request was aborted.
                    /// 
                    /// - Examples:
                    ///     - `handled`
                    ///     - `unhandled`
                    public var result: Self.Key<ResultEnum> { .init(name: OTelConventions.aspnetcore.diagnostics.exception.result) }
                    
                    public enum ResultEnum: String, SpanAttributeConvertible {
                        /// `handled`: Exception was handled by the exception handling middleware.
                        case handled = "handled"
                        /// `unhandled`: Exception was not handled by the exception handling middleware.
                        case unhandled = "unhandled"
                        /// `skipped`: Exception handling was skipped because the response had started.
                        case skipped = "skipped"
                        /// `aborted`: Exception handling didn't run because the request was aborted.
                        case aborted = "aborted"
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        
            /// `aspnetcore.diagnostics.handler` namespace
            public var handler: HandlerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct HandlerAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `aspnetcore.diagnostics.handler.type`: Full type name of the [`IExceptionHandler`](https://learn.microsoft.com/dotnet/api/microsoft.aspnetcore.diagnostics.iexceptionhandler) implementation that handled the exception.
                    /// 
                    /// - Stability: stable
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `Contoso.MyHandler`
                    public var type: Self.Key<String> { .init(name: OTelConventions.aspnetcore.diagnostics.handler.type) }
                }
            
            
            }
        }
    
        /// `aspnetcore.rate_limiting` namespace
        public var rate_limiting: RateLimitingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RateLimitingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aspnetcore.rate_limiting.policy`: Rate limiting policy name.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `fixed`
                ///     - `sliding`
                ///     - `token`
                public var policy: Self.Key<String> { .init(name: OTelConventions.aspnetcore.rate_limiting.policy) }
        
                /// `aspnetcore.rate_limiting.result`: Rate-limiting result, shows whether the lease was acquired or contains a rejection reason
                /// 
                /// - Stability: stable
                /// 
                /// - Type: enum
                ///     - `acquired`: Lease was acquired
                ///     - `endpoint_limiter`: Lease request was rejected by the endpoint limiter
                ///     - `global_limiter`: Lease request was rejected by the global limiter
                ///     - `request_canceled`: Lease request was canceled
                /// 
                /// - Examples:
                ///     - `acquired`
                ///     - `request_canceled`
                public var result: Self.Key<ResultEnum> { .init(name: OTelConventions.aspnetcore.rate_limiting.result) }
                
                public enum ResultEnum: String, SpanAttributeConvertible {
                    /// `acquired`: Lease was acquired
                    case acquired = "acquired"
                    /// `endpoint_limiter`: Lease request was rejected by the endpoint limiter
                    case endpoint_limiter = "endpoint_limiter"
                    /// `global_limiter`: Lease request was rejected by the global limiter
                    case global_limiter = "global_limiter"
                    /// `request_canceled`: Lease request was canceled
                    case request_canceled = "request_canceled"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `aspnetcore.request` namespace
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
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aspnetcore.request.is_unhandled`: Flag indicating if request was handled by the application pipeline.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: boolean
                /// 
                /// - Example: `true`
                public var is_unhandled: Self.Key<Bool> { .init(name: OTelConventions.aspnetcore.request.is_unhandled) }
            }
        
        
        }
    
        /// `aspnetcore.routing` namespace
        public var routing: RoutingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RoutingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aspnetcore.routing.is_fallback`: A value that indicates whether the matched route is a fallback route.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: boolean
                /// 
                /// - Example: `true`
                public var is_fallback: Self.Key<Bool> { .init(name: OTelConventions.aspnetcore.routing.is_fallback) }
        
                /// `aspnetcore.routing.match_status`: Match result - success or failure
                /// 
                /// - Stability: stable
                /// 
                /// - Type: enum
                ///     - `success`: Match succeeded
                ///     - `failure`: Match failed
                /// 
                /// - Examples:
                ///     - `success`
                ///     - `failure`
                public var match_status: Self.Key<Match_StatusEnum> { .init(name: OTelConventions.aspnetcore.routing.match_status) }
                
                public enum Match_StatusEnum: String, SpanAttributeConvertible {
                    /// `success`: Match succeeded
                    case success = "success"
                    /// `failure`: Match failed
                    case failure = "failure"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}