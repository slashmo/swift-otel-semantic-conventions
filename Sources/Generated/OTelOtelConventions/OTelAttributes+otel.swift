// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `otel` namespace
    public enum otel {
        /// `otel.status_code`: Name of the code, either "OK" or "ERROR". MUST NOT be set if the status code is UNSET.
        /// 
        /// - Stability: stable
        /// 
        /// - Type: enum
        ///     - `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
        ///     - `ERROR`: The operation contains an error.
        public static let status_code = "otel.status_code"
    
        /// `otel.status_description`: Description of the Status if it has a value, otherwise not set.
        /// 
        /// - Stability: stable
        /// 
        /// - Type: string
        /// 
        /// - Example: `resource not found`
        public static let status_description = "otel.status_description"
    
        /// `otel.library` namespace
        public enum library {
            /// `otel.library.name`: Deprecated. Use the `otel.scope.name` attribute
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `io.opentelemetry.contrib.mongodb`
            @available(*, deprecated, message: "Use the `otel.scope.name` attribute.")
            public static let name = "otel.library.name"
        
            /// `otel.library.version`: Deprecated. Use the `otel.scope.version` attribute.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1.0.0`
            @available(*, deprecated, message: "Use the `otel.scope.version` attribute.")
            public static let version = "otel.library.version"
        
        
        }
    
        /// `otel.scope` namespace
        public enum scope {
            /// `otel.scope.name`: The name of the instrumentation scope - (`InstrumentationScope.Name` in OTLP).
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Example: `io.opentelemetry.contrib.mongodb`
            public static let name = "otel.scope.name"
        
            /// `otel.scope.version`: The version of the instrumentation scope - (`InstrumentationScope.Version` in OTLP).
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Example: `1.0.0`
            public static let version = "otel.scope.version"
        
        
        }
    }
}