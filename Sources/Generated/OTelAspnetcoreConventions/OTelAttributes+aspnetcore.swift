// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `aspnetcore` namespace
    public enum aspnetcore {
    
    
        /// `aspnetcore.diagnostics` namespace
        public enum diagnostics {
        
        
            /// `aspnetcore.diagnostics.exception` namespace
            public enum exception {
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
                public static let result = "aspnetcore.diagnostics.exception.result"
            
            
            }
        
            /// `aspnetcore.diagnostics.handler` namespace
            public enum handler {
                /// `aspnetcore.diagnostics.handler.type`: Full type name of the [`IExceptionHandler`](https://learn.microsoft.com/dotnet/api/microsoft.aspnetcore.diagnostics.iexceptionhandler) implementation that handled the exception.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// - Example: `Contoso.MyHandler`
                public static let type = "aspnetcore.diagnostics.handler.type"
            
            
            }
        }
    
        /// `aspnetcore.rate_limiting` namespace
        public enum rate_limiting {
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
            public static let policy = "aspnetcore.rate_limiting.policy"
        
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
            public static let result = "aspnetcore.rate_limiting.result"
        
        
        }
    
        /// `aspnetcore.request` namespace
        public enum request {
            /// `aspnetcore.request.is_unhandled`: Flag indicating if request was handled by the application pipeline.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: boolean
            /// 
            /// - Example: `true`
            public static let is_unhandled = "aspnetcore.request.is_unhandled"
        
        
        }
    
        /// `aspnetcore.routing` namespace
        public enum routing {
            /// `aspnetcore.routing.is_fallback`: A value that indicates whether the matched route is a fallback route.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: boolean
            /// 
            /// - Example: `true`
            public static let is_fallback = "aspnetcore.routing.is_fallback"
        
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
            public static let match_status = "aspnetcore.routing.match_status"
        
        
        }
    }
}