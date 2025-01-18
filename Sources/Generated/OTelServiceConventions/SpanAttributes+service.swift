// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `service` namespace
    public var service: ServiceAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct ServiceAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `service.name`: Logical name of the service. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// MUST be the same for all instances of horizontally scaled services. If the value was not specified, SDKs MUST fallback to `unknown_service:` concatenated with [`process.executable.name`](process.md), e.g. `unknown_service:bash`. If `process.executable.name` is not available, the value MUST be set to `unknown_service`. 
            /// 
            /// - Example: `shoppingcart`
            public var name: Self.Key<String> { .init(name: OTelAttributes.service.name) }
    
            /// `service.namespace`: A namespace for `service.name`. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// A string value having a meaning that helps to distinguish a group of services, for example the team name that owns a group of services. `service.name` is expected to be unique within the same namespace. If `service.namespace` is not specified in the Resource then `service.name` is expected to be unique for all services that have no explicit namespace defined (so the empty/unspecified namespace is simply one more valid namespace). Zero-length namespace string is assumed equal to unspecified namespace. 
            /// 
            /// - Example: `Shop`
            public var namespace: Self.Key<String> { .init(name: OTelAttributes.service.namespace) }
    
            /// `service.version`: The version string of the service API or implementation. The format is not defined by these conventions. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `2.0.0`
            ///     - `a01dbef8a`
            public var version: Self.Key<String> { .init(name: OTelAttributes.service.version) }
        }
    
        /// `service.instance` namespace
        public var instance: InstanceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct InstanceAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `service.instance.id`: The string ID of the service instance. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// MUST be unique for each instance of the same `service.namespace,service.name` pair (in other words `service.namespace,service.name,service.instance.id` triplet MUST be globally unique). The ID helps to distinguish instances of the same service that exist at the same time (e.g. instances of a horizontally scaled service).  Implementations, such as SDKs, are recommended to generate a random Version 1 or Version 4 [RFC 4122](https://www.ietf.org/rfc/rfc4122.txt) UUID, but are free to use an inherent unique ID as the source of this value if stability is desirable. In that case, the ID SHOULD be used as source of a UUID Version 5 and SHOULD use the following UUID as the namespace: `4d63009a-8d0f-11ee-aad7-4c796ed8e320`.  UUIDs are typically recommended, as only an opaque value for the purposes of identifying a service instance is needed. Similar to what can be seen in the man page for the [`/etc/machine-id`](https://www.freedesktop.org/software/systemd/man/latest/machine-id.html) file, the underlying data, such as pod name and namespace should be treated as confidential, being the user's choice to expose it or not via another resource attribute.  For applications running behind an application server (like unicorn), we do not recommend using one identifier for all processes participating in the application. Instead, it's recommended each division (e.g. a worker thread in unicorn) to have its own instance.id.  It's not recommended for a Collector to set `service.instance.id` if it can't unambiguously determine the service instance that is generating that telemetry. For instance, creating an UUID based on `pod.name` will likely be wrong, as the Collector might not know from which container within that pod the telemetry originated. However, Collectors can set the `service.instance.id` if they can unambiguously determine the service instance for that telemetry. This is typically the case for scraping receivers, as they know the target address and port. 
                /// 
                /// - Example: `627cc493-f310-47de-96bd-71410b7dec09`
                public var id: Self.Key<String> { .init(name: OTelAttributes.service.instance.id) }
            }
        
        
        }
    }
}