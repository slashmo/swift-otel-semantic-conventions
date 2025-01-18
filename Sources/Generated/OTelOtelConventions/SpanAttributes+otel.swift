// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `otel` namespace
    public var otel: OtelAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct OtelAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `otel.status_code`: Name of the code, either "OK" or "ERROR". MUST NOT be set if the status code is UNSET.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: enum
            ///     - `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
            ///     - `ERROR`: The operation contains an error.
            public var status_code: Self.Key<Status_CodeEnum> { .init(name: OTelAttributes.otel.status_code) }
            
            public enum Status_CodeEnum: String, SpanAttributeConvertible {
                /// `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
                case ok = "OK"
                /// `ERROR`: The operation contains an error.
                case error = "ERROR"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `otel.status_description`: Description of the Status if it has a value, otherwise not set.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Example: `resource not found`
            public var status_description: Self.Key<String> { .init(name: OTelAttributes.otel.status_description) }
        }
    
        /// `otel.library` namespace
        public var library: LibraryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct LibraryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `otel.library.name`: Deprecated. Use the `otel.scope.name` attribute
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `io.opentelemetry.contrib.mongodb`
                @available(*, deprecated, message: "Use the `otel.scope.name` attribute.")
                public var name: Self.Key<String> { .init(name: OTelAttributes.otel.library.name) }
        
                /// `otel.library.version`: Deprecated. Use the `otel.scope.version` attribute.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `1.0.0`
                @available(*, deprecated, message: "Use the `otel.scope.version` attribute.")
                public var version: Self.Key<String> { .init(name: OTelAttributes.otel.library.version) }
            }
        
        
        }
    
        /// `otel.scope` namespace
        public var scope: ScopeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ScopeAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `otel.scope.name`: The name of the instrumentation scope - (`InstrumentationScope.Name` in OTLP).
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// - Example: `io.opentelemetry.contrib.mongodb`
                public var name: Self.Key<String> { .init(name: OTelAttributes.otel.scope.name) }
        
                /// `otel.scope.version`: The version of the instrumentation scope - (`InstrumentationScope.Version` in OTLP).
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// - Example: `1.0.0`
                public var version: Self.Key<String> { .init(name: OTelAttributes.otel.scope.version) }
            }
        
        
        }
    }
}