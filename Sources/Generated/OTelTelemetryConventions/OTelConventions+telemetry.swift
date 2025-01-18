// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `telemetry` namespace
    public enum telemetry {
    
    
        /// `telemetry.distro` namespace
        public enum distro {
            /// `telemetry.distro.name`: The name of the auto instrumentation agent or distribution, if used. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Official auto instrumentation agents and distributions SHOULD set the `telemetry.distro.name` attribute to a string starting with `opentelemetry-`, e.g. `opentelemetry-java-instrumentation`. 
            /// 
            /// - Example: `parts-unlimited-java`
            public static let name = "telemetry.distro.name"
        
            /// `telemetry.distro.version`: The version string of the auto instrumentation agent or distribution, if used. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1.2.3`
            public static let version = "telemetry.distro.version"
        
        
        }
    
        /// `telemetry.sdk` namespace
        public enum sdk {
            /// `telemetry.sdk.language`: The language of the telemetry SDK. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: enum
            ///     - `cpp`
            ///     - `dotnet`
            ///     - `erlang`
            ///     - `go`
            ///     - `java`
            ///     - `nodejs`
            ///     - `php`
            ///     - `python`
            ///     - `ruby`
            ///     - `rust`
            ///     - `swift`
            ///     - `webjs`
            public static let language = "telemetry.sdk.language"
        
            /// `telemetry.sdk.name`: The name of the telemetry SDK as defined above. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// The OpenTelemetry SDK MUST set the `telemetry.sdk.name` attribute to `opentelemetry`. If another SDK, like a fork or a vendor-provided implementation, is used, this SDK MUST set the `telemetry.sdk.name` attribute to the fully-qualified class or module name of this SDK's main entry point or another suitable identifier depending on the language. The identifier `opentelemetry` is reserved and MUST NOT be used in this case. All custom identifiers SHOULD be stable across different versions of an implementation. 
            /// 
            /// - Example: `opentelemetry`
            public static let name = "telemetry.sdk.name"
        
            /// `telemetry.sdk.version`: The version string of the telemetry SDK. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Example: `1.2.3`
            public static let version = "telemetry.sdk.version"
        
        
        }
    }
}