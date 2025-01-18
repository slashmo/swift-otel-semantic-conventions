// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `container` namespace
    public var container: ContainerAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct ContainerAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
        /// `container.label`: Container labels, `<key>` being the label name, the value being the label value. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: templateString
        /// 
        /// - Example: `container.label.app=nginx`
        public var label: LabelAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        public struct LabelAttributes {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public mutating func set(_ key: String, to value: String) {
                let attributeId = self.attributeId(forKey: key)
                self.attributes[attributeId] = value
            }
        
            private func attributeId(forKey key: String) -> String {
                var attributeId = "container.label."
        
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
    
        /// `container.labels`: Deprecated, use `container.label` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: templateString
        /// 
        /// - Example: `container.label.app=nginx`
        public var labels: LabelsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        public struct LabelsAttributes {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public mutating func set(_ key: String, to value: String) {
                let attributeId = self.attributeId(forKey: key)
                self.attributes[attributeId] = value
            }
        
            private func attributeId(forKey key: String) -> String {
                var attributeId = "container.labels."
        
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
            /// `container.command`: The command used to run the container (i.e. the command name). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// If using embedded credentials or sensitive data, it is recommended to remove them to prevent potential leakage. 
            /// 
            /// - Example: `otelcontribcol`
            public var command: Self.Key<String> { .init(name: OTelConventions.container.command) }
    
            /// `container.command_args`: All the command arguments (including the command/executable itself) run by the container. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public var command_args: Self.Key<[String]> { .init(name: OTelConventions.container.command_args) }
    
            /// `container.command_line`: The full command run by the container as a single string representing the full command. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `otelcontribcol --config config.yaml`
            public var command_line: Self.Key<String> { .init(name: OTelConventions.container.command_line) }
    
            /// `container.id`: Container ID. Usually a UUID, as for example used to [identify Docker containers](https://docs.docker.com/engine/containers/run/#container-identification). The UUID might be abbreviated. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `a3bf90e006b2`
            public var id: Self.Key<String> { .init(name: OTelConventions.container.id) }
    
            /// `container.name`: Container name used by container runtime. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry-autoconf`
            public var name: Self.Key<String> { .init(name: OTelConventions.container.name) }
    
            /// `container.runtime`: The container runtime managing this container. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `docker`
            ///     - `containerd`
            ///     - `rkt`
            public var runtime: Self.Key<String> { .init(name: OTelConventions.container.runtime) }
        }
    
        /// `container.cpu` namespace
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
                /// `container.cpu.state`: Deprecated, use `cpu.mode` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `user`: When tasks of the cgroup are in user mode (Linux). When all container processes are in user mode (Windows).
                ///     - `system`: When CPU is used by the system (host OS)
                ///     - `kernel`: When tasks of the cgroup are in kernel mode (Linux). When all container processes are in kernel mode (Windows).
                /// 
                /// - Examples:
                ///     - `user`
                ///     - `kernel`
                @available(*, deprecated, message: "Replaced by `cpu.mode`")
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.container.cpu.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `user`: When tasks of the cgroup are in user mode (Linux). When all container processes are in user mode (Windows).
                    case user = "user"
                    /// `system`: When CPU is used by the system (host OS)
                    case system = "system"
                    /// `kernel`: When tasks of the cgroup are in kernel mode (Linux). When all container processes are in kernel mode (Windows).
                    case kernel = "kernel"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `container.csi` namespace
        public var csi: CsiAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CsiAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `container.csi.plugin` namespace
            public var plugin: PluginAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct PluginAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `container.csi.plugin.name`: The name of the CSI ([Container Storage Interface](https://github.com/container-storage-interface/spec)) plugin used by the volume. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// This can sometimes be referred to as a "driver" in CSI implementations. This should represent the `name` field of the GetPluginInfo RPC. 
                    /// 
                    /// - Example: `pd.csi.storage.gke.io`
                    public var name: Self.Key<String> { .init(name: OTelConventions.container.csi.plugin.name) }
                }
            
            
            }
        
            /// `container.csi.volume` namespace
            public var volume: VolumeAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct VolumeAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `container.csi.volume.id`: The unique volume ID returned by the CSI ([Container Storage Interface](https://github.com/container-storage-interface/spec)) plugin. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// This can sometimes be referred to as a "volume handle" in CSI implementations. This should represent the `Volume.volume_id` field in CSI spec. 
                    /// 
                    /// - Example: `projects/my-gcp-project/zones/my-gcp-zone/disks/my-gcp-disk`
                    public var id: Self.Key<String> { .init(name: OTelConventions.container.csi.volume.id) }
                }
            
            
            }
        }
    
        /// `container.image` namespace
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
                /// `container.image.id`: Runtime specific image identifier. Usually a hash algorithm followed by a UUID. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// Docker defines a sha256 of the image id; `container.image.id` corresponds to the `Image` field from the Docker container inspect [API](https://docs.docker.com/engine/api/v1.43/#tag/Container/operation/ContainerInspect) endpoint. K8s defines a link to the container registry repository with digest `"imageID": "registry.azurecr.io /namespace/service/dockerfile@sha256:bdeabd40c3a8a492eaf9e8e44d0ebbb84bac7ee25ac0cf8a7159d25f62555625"`. The ID is assigned by the container runtime and can vary in different environments. Consider using `oci.manifest.digest` if it is important to identify the same image in different environments/runtimes. 
                /// 
                /// - Example: `sha256:19c92d0a00d1b66d897bceaa7319bee0dd38a10a851c60bcec9474aa3f01e50f`
                public var id: Self.Key<String> { .init(name: OTelConventions.container.image.id) }
        
                /// `container.image.name`: Name of the image the container was built on. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `gcr.io/opentelemetry/operator`
                public var name: Self.Key<String> { .init(name: OTelConventions.container.image.name) }
        
                /// `container.image.repo_digests`: Repo digests of the container image as provided by the container runtime. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                /// 
                /// [Docker](https://docs.docker.com/engine/api/v1.43/#tag/Image/operation/ImageInspect) and [CRI](https://github.com/kubernetes/cri-api/blob/c75ef5b473bbe2d0a4fc92f82235efd665ea8e9f/pkg/apis/runtime/v1/api.proto#L1237-L1238) report those under the `RepoDigests` field. 
                public var repo_digests: Self.Key<[String]> { .init(name: OTelConventions.container.image.repo_digests) }
        
                /// `container.image.tags`: Container image tags. An example can be found in [Docker Image Inspect](https://docs.docker.com/engine/api/v1.43/#tag/Image/operation/ImageInspect). Should be only the `<tag>` section of the full name for example from `registry.example.com/my-org/my-image:<tag>`. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var tags: Self.Key<[String]> { .init(name: OTelConventions.container.image.tags) }
            }
        
        
        }
    }
}