// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `k8s` namespace
    public var k8s: K8SAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct K8SAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `k8s.cluster` namespace
        public var cluster: ClusterAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ClusterAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.cluster.name`: The name of the cluster. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry-cluster`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.cluster.name) }
        
                /// `k8s.cluster.uid`: A pseudo-ID for the cluster, set to the UID of the `kube-system` namespace. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// K8s doesn't have support for obtaining a cluster ID. If this is ever added, we will recommend collecting the `k8s.cluster.uid` through the official APIs. In the meantime, we are able to use the `uid` of the `kube-system` namespace as a proxy for cluster ID. Read on for the rationale.  Every object created in a K8s cluster is assigned a distinct UID. The `kube-system` namespace is used by Kubernetes itself and will exist for the lifetime of the cluster. Using the `uid` of the `kube-system` namespace is a reasonable proxy for the K8s ClusterID as it will only change if the cluster is rebuilt. Furthermore, Kubernetes UIDs are UUIDs as standardized by [ISO/IEC 9834-8 and ITU-T X.667](https://www.itu.int/ITU-T/studygroups/com17/oid.html). Which states:  > If generated according to one of the mechanisms defined in Rec. > ITU-T X.667 | ISO/IEC 9834-8, a UUID is either guaranteed to be > different from all other UUIDs generated before 3603 A.D., or is > extremely likely to be different (depending on the mechanism chosen).  Therefore, UIDs between clusters should be extremely unlikely to conflict. 
                /// 
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.cluster.uid) }
            }
        
        
        }
    
        /// `k8s.container` namespace
        public var container: ContainerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ContainerAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.container.name`: The name of the Container from Pod specification, must be unique within a Pod. Container runtime usually uses different globally unique name (`container.name`). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `redis`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.container.name) }
        
                /// `k8s.container.restart_count`: Number of times the container was restarted. This attribute can be used to identify a particular container (running or stopped) within a container spec. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                public var restart_count: Self.Key<Int> { .init(name: OTelAttributes.k8s.container.restart_count) }
            }
        
            /// `k8s.container.status` namespace
            public var status: StatusAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct StatusAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `k8s.container.status.last_terminated_reason`: Last terminated reason of the Container. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Examples:
                    ///     - `Evicted`
                    ///     - `Error`
                    public var last_terminated_reason: Self.Key<String> { .init(name: OTelAttributes.k8s.container.status.last_terminated_reason) }
                }
            
            
            }
        }
    
        /// `k8s.cronjob` namespace
        public var cronjob: CronjobAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CronjobAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.cronjob.name`: The name of the CronJob. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.cronjob.name) }
        
                /// `k8s.cronjob.uid`: The UID of the CronJob. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.cronjob.uid) }
            }
        
        
        }
    
        /// `k8s.daemonset` namespace
        public var daemonset: DaemonsetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DaemonsetAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.daemonset.name`: The name of the DaemonSet. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.daemonset.name) }
        
                /// `k8s.daemonset.uid`: The UID of the DaemonSet. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.daemonset.uid) }
            }
        
        
        }
    
        /// `k8s.deployment` namespace
        public var deployment: DeploymentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DeploymentAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.deployment.name`: The name of the Deployment. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.deployment.name) }
        
                /// `k8s.deployment.uid`: The UID of the Deployment. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.deployment.uid) }
            }
        
        
        }
    
        /// `k8s.job` namespace
        public var job: JobAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct JobAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.job.name`: The name of the Job. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.job.name) }
        
                /// `k8s.job.uid`: The UID of the Job. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.job.uid) }
            }
        
        
        }
    
        /// `k8s.namespace` namespace
        public var namespace: NamespaceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct NamespaceAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.namespace.name`: The name of the namespace that the pod is running in. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `default`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.namespace.name) }
            }
        
        
        }
    
        /// `k8s.node` namespace
        public var node: NodeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct NodeAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.node.name`: The name of the Node. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `node-1`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.node.name) }
        
                /// `k8s.node.uid`: The UID of the Node. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `1eb3a0c6-0477-4080-a9cb-0cb7db65c6a2`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.node.uid) }
            }
        
        
        }
    
        /// `k8s.pod` namespace
        public var pod: PodAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct PodAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
            /// `k8s.pod.annotation`: The annotation key-value pairs placed on the Pod, the `<key>` being the annotation name, the value being the annotation value. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// - Examples:
            ///     - `k8s.pod.annotation.kubernetes.io/enforce-mountable-secrets=true`
            ///     - `k8s.pod.annotation.mycompany.io/arch=x64`
            ///     - `k8s.pod.annotation.data=`
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            public struct AnnotationAttributes {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public mutating func set(_ key: String, to value: String) {
                    let attributeId = self.attributeId(forKey: key)
                    self.attributes[attributeId] = value
                }
            
                private func attributeId(forKey key: String) -> String {
                    var attributeId = "k8s.pod.annotation."
            
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
        
            /// `k8s.pod.label`: The label key-value pairs placed on the Pod, the `<key>` being the label name, the value being the label value. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// - Examples:
            ///     - `k8s.pod.label.app=my-app`
            ///     - `k8s.pod.label.mycompany.io/arch=x64`
            ///     - `k8s.pod.label.data=`
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
                    var attributeId = "k8s.pod.label."
            
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
        
            /// `k8s.pod.labels`: Deprecated, use `k8s.pod.label` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// - Example: `k8s.pod.label.app=my-app`
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
                    var attributeId = "k8s.pod.labels."
            
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
                /// `k8s.pod.name`: The name of the Pod. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry-pod-autoconf`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.pod.name) }
        
                /// `k8s.pod.uid`: The UID of the Pod. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.pod.uid) }
            }
        
        
        }
    
        /// `k8s.replicaset` namespace
        public var replicaset: ReplicasetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ReplicasetAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.replicaset.name`: The name of the ReplicaSet. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.replicaset.name) }
        
                /// `k8s.replicaset.uid`: The UID of the ReplicaSet. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.replicaset.uid) }
            }
        
        
        }
    
        /// `k8s.statefulset` namespace
        public var statefulset: StatefulsetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct StatefulsetAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `k8s.statefulset.name`: The name of the StatefulSet. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.statefulset.name) }
        
                /// `k8s.statefulset.uid`: The UID of the StatefulSet. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.k8s.statefulset.uid) }
            }
        
        
        }
    
        /// `k8s.volume` namespace
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
                /// `k8s.volume.name`: The name of the K8s volume. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `volume0`
                public var name: Self.Key<String> { .init(name: OTelAttributes.k8s.volume.name) }
        
                /// `k8s.volume.type`: The type of the K8s volume. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `persistentVolumeClaim`: A [persistentVolumeClaim](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) volume
                ///     - `configMap`: A [configMap](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#configmap) volume
                ///     - `downwardAPI`: A [downwardAPI](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#downwardapi) volume
                ///     - `emptyDir`: An [emptyDir](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#emptydir) volume
                ///     - `secret`: A [secret](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#secret) volume
                ///     - `local`: A [local](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#local) volume
                /// 
                /// - Examples:
                ///     - `emptyDir`
                ///     - `persistentVolumeClaim`
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.k8s.volume.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `persistentVolumeClaim`: A [persistentVolumeClaim](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) volume
                    case persistent_volume_claim = "persistentVolumeClaim"
                    /// `configMap`: A [configMap](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#configmap) volume
                    case config_map = "configMap"
                    /// `downwardAPI`: A [downwardAPI](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#downwardapi) volume
                    case downward_api = "downwardAPI"
                    /// `emptyDir`: An [emptyDir](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#emptydir) volume
                    case empty_dir = "emptyDir"
                    /// `secret`: A [secret](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#secret) volume
                    case secret = "secret"
                    /// `local`: A [local](https://v1-29.docs.kubernetes.io/docs/concepts/storage/volumes/#local) volume
                    case local = "local"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}