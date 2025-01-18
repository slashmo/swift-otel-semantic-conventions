// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `host` namespace
    public var host: HostAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct HostAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `host.arch`: The CPU architecture the host system is running on. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `amd64`: AMD64
            ///     - `arm32`: ARM32
            ///     - `arm64`: ARM64
            ///     - `ia64`: Itanium
            ///     - `ppc32`: 32-bit PowerPC
            ///     - `ppc64`: 64-bit PowerPC
            ///     - `s390x`: IBM z/Architecture
            ///     - `x86`: 32-bit x86
            public var arch: Self.Key<ArchEnum> { .init(name: OTelConventions.host.arch) }
            
            public enum ArchEnum: String, SpanAttributeConvertible {
                /// `amd64`: AMD64
                case amd64 = "amd64"
                /// `arm32`: ARM32
                case arm32 = "arm32"
                /// `arm64`: ARM64
                case arm64 = "arm64"
                /// `ia64`: Itanium
                case ia64 = "ia64"
                /// `ppc32`: 32-bit PowerPC
                case ppc32 = "ppc32"
                /// `ppc64`: 64-bit PowerPC
                case ppc64 = "ppc64"
                /// `s390x`: IBM z/Architecture
                case s390x = "s390x"
                /// `x86`: 32-bit x86
                case x86 = "x86"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `host.id`: Unique host ID. For Cloud, this must be the instance_id assigned by the cloud provider. For non-containerized systems, this should be the `machine-id`. See the table below for the sources to use to determine the `machine-id` based on operating system. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `fdbf79e8af94cb7f9e8df36789187052`
            public var id: Self.Key<String> { .init(name: OTelConventions.host.id) }
    
            /// `host.ip`: Available IP addresses of the host, excluding loopback interfaces. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            /// 
            /// IPv4 Addresses MUST be specified in dotted-quad notation. IPv6 addresses MUST be specified in the [RFC 5952](https://www.rfc-editor.org/rfc/rfc5952.html) format. 
            public var ip: Self.Key<[String]> { .init(name: OTelConventions.host.ip) }
    
            /// `host.mac`: Available MAC addresses of the host, excluding loopback interfaces. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            /// 
            /// MAC Addresses MUST be represented in [IEEE RA hexadecimal form](https://standards.ieee.org/wp-content/uploads/import/documents/tutorials/eui.pdf): as hyphen-separated octets in uppercase hexadecimal form from most to least significant. 
            public var mac: Self.Key<[String]> { .init(name: OTelConventions.host.mac) }
    
            /// `host.name`: Name of the host. On Unix systems, it may contain what the hostname command returns, or the fully qualified hostname, or another name specified by the user. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry-test`
            public var name: Self.Key<String> { .init(name: OTelConventions.host.name) }
    
            /// `host.type`: Type of host. For Cloud, this must be the machine type. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `n1-standard-1`
            public var type: Self.Key<String> { .init(name: OTelConventions.host.type) }
        }
    
        /// `host.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `host.cpu.family`: Family or generation of the CPU. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `6`
                ///     - `PA-RISC 1.1e`
                public var family: Self.Key<String> { .init(name: OTelConventions.host.cpu.family) }
        
                /// `host.cpu.stepping`: Stepping or core revisions. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `1`
                ///     - `r1p1`
                public var stepping: Self.Key<String> { .init(name: OTelConventions.host.cpu.stepping) }
            }
        
            /// `host.cpu.cache` namespace
            public var cache: CacheAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct CacheAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
                /// `host.cpu.cache.l2` namespace
                public var l2: L2Attributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                @dynamicMemberLookup
                public struct L2Attributes: SpanAttributeNamespace {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}
                        /// `host.cpu.cache.l2.size`: The amount of level 2 memory cache available to the processor (in Bytes). 
                        /// 
                        /// - Stability: experimental
                        /// 
                        /// - Type: int
                        /// 
                        /// - Example: `12288000`
                        public var size: Self.Key<Int> { .init(name: OTelConventions.host.cpu.cache.l2.size) }
                    }
                
                
                }
            }
        
            /// `host.cpu.model` namespace
            public var model: ModelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ModelAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `host.cpu.model.id`: Model identifier. It provides more granular information about the CPU, distinguishing it from other CPUs within the same family. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Examples:
                    ///     - `6`
                    ///     - `9000/778/B180L`
                    public var id: Self.Key<String> { .init(name: OTelConventions.host.cpu.model.id) }
            
                    /// `host.cpu.model.name`: Model designation of the processor. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `11th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz`
                    public var name: Self.Key<String> { .init(name: OTelConventions.host.cpu.model.name) }
                }
            
            
            }
        
            /// `host.cpu.vendor` namespace
            public var vendor: VendorAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct VendorAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `host.cpu.vendor.id`: Processor manufacturer identifier. A maximum 12-character string. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// [CPUID](https://wiki.osdev.org/CPUID) command returns the vendor ID string in EBX, EDX and ECX registers. Writing these to memory in this order results in a 12-character string. 
                    /// 
                    /// - Example: `GenuineIntel`
                    public var id: Self.Key<String> { .init(name: OTelConventions.host.cpu.vendor.id) }
                }
            
            
            }
        }
    
        /// `host.image` namespace
        public var image: ImageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ImageAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `host.image.id`: VM image ID or host OS image ID. For Cloud, this value is from the provider. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `ami-07b06b442921831e5`
                public var id: Self.Key<String> { .init(name: OTelConventions.host.image.id) }
        
                /// `host.image.name`: Name of the VM image or OS install the host was instantiated from. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `infra-ami-eks-worker-node-7d4ec78312`
                ///     - `CentOS-8-x86_64-1905`
                public var name: Self.Key<String> { .init(name: OTelConventions.host.image.name) }
        
                /// `host.image.version`: The version string of the VM image or host OS as defined in [Version Attributes](/docs/resource/README.md#version-attributes). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `0.1`
                public var version: Self.Key<String> { .init(name: OTelConventions.host.image.version) }
            }
        
        
        }
    }
}