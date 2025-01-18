// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `k8s` namespace
    public enum k8s {
    
    
        /// `k8s.cluster` namespace
        public enum cluster {
            /// `k8s.cluster.name`: The name of the cluster. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry-cluster`
            public static let name = "k8s.cluster.name"
        
            /// `k8s.cluster.uid`: A pseudo-ID for the cluster, set to the UID of the `kube-system` namespace. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// K8s doesn't have support for obtaining a cluster ID. If this is ever added, we will recommend collecting the `k8s.cluster.uid` through the official APIs. In the meantime, we are able to use the `uid` of the `kube-system` namespace as a proxy for cluster ID. Read on for the rationale.  Every object created in a K8s cluster is assigned a distinct UID. The `kube-system` namespace is used by Kubernetes itself and will exist for the lifetime of the cluster. Using the `uid` of the `kube-system` namespace is a reasonable proxy for the K8s ClusterID as it will only change if the cluster is rebuilt. Furthermore, Kubernetes UIDs are UUIDs as standardized by [ISO/IEC 9834-8 and ITU-T X.667](https://www.itu.int/ITU-T/studygroups/com17/oid.html). Which states:  > If generated according to one of the mechanisms defined in Rec. > ITU-T X.667 | ISO/IEC 9834-8, a UUID is either guaranteed to be > different from all other UUIDs generated before 3603 A.D., or is > extremely likely to be different (depending on the mechanism chosen).  Therefore, UIDs between clusters should be extremely unlikely to conflict. 
            /// 
            /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
            public static let uid = "k8s.cluster.uid"
        
        
        }
    
        /// `k8s.container` namespace
        public enum container {
            /// `k8s.container.name`: The name of the Container from Pod specification, must be unique within a Pod. Container runtime usually uses different globally unique name (`container.name`). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `redis`
            public static let name = "k8s.container.name"
        
            /// `k8s.container.restart_count`: Number of times the container was restarted. This attribute can be used to identify a particular container (running or stopped) within a container spec. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            public static let restart_count = "k8s.container.restart_count"
        
            /// `k8s.container.status` namespace
            public enum status {
                /// `k8s.container.status.last_terminated_reason`: Last terminated reason of the Container. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Evicted`
                ///     - `Error`
                public static let last_terminated_reason = "k8s.container.status.last_terminated_reason"
            
            
            }
        }
    
        /// `k8s.cronjob` namespace
        public enum cronjob {
            /// `k8s.cronjob.name`: The name of the CronJob. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry`
            public static let name = "k8s.cronjob.name"
        
            /// `k8s.cronjob.uid`: The UID of the CronJob. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.cronjob.uid"
        
        
        }
    
        /// `k8s.daemonset` namespace
        public enum daemonset {
            /// `k8s.daemonset.name`: The name of the DaemonSet. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry`
            public static let name = "k8s.daemonset.name"
        
            /// `k8s.daemonset.uid`: The UID of the DaemonSet. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.daemonset.uid"
        
        
        }
    
        /// `k8s.deployment` namespace
        public enum deployment {
            /// `k8s.deployment.name`: The name of the Deployment. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry`
            public static let name = "k8s.deployment.name"
        
            /// `k8s.deployment.uid`: The UID of the Deployment. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.deployment.uid"
        
        
        }
    
        /// `k8s.job` namespace
        public enum job {
            /// `k8s.job.name`: The name of the Job. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry`
            public static let name = "k8s.job.name"
        
            /// `k8s.job.uid`: The UID of the Job. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.job.uid"
        
        
        }
    
        /// `k8s.namespace` namespace
        public enum namespace {
            /// `k8s.namespace.name`: The name of the namespace that the pod is running in. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `default`
            public static let name = "k8s.namespace.name"
        
        
        }
    
        /// `k8s.node` namespace
        public enum node {
            /// `k8s.node.name`: The name of the Node. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `node-1`
            public static let name = "k8s.node.name"
        
            /// `k8s.node.uid`: The UID of the Node. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1eb3a0c6-0477-4080-a9cb-0cb7db65c6a2`
            public static let uid = "k8s.node.uid"
        
        
        }
    
        /// `k8s.pod` namespace
        public enum pod {
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
            public static let annotation = "k8s.pod.annotation"
        
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
            public static let label = "k8s.pod.label"
        
            /// `k8s.pod.labels`: Deprecated, use `k8s.pod.label` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// - Example: `k8s.pod.label.app=my-app`
            @available(*, deprecated, message: "Replaced by `k8s.pod.label`.")
            public static let labels = "k8s.pod.labels"
        
            /// `k8s.pod.name`: The name of the Pod. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry-pod-autoconf`
            public static let name = "k8s.pod.name"
        
            /// `k8s.pod.uid`: The UID of the Pod. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.pod.uid"
        
        
        }
    
        /// `k8s.replicaset` namespace
        public enum replicaset {
            /// `k8s.replicaset.name`: The name of the ReplicaSet. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry`
            public static let name = "k8s.replicaset.name"
        
            /// `k8s.replicaset.uid`: The UID of the ReplicaSet. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.replicaset.uid"
        
        
        }
    
        /// `k8s.statefulset` namespace
        public enum statefulset {
            /// `k8s.statefulset.name`: The name of the StatefulSet. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `opentelemetry`
            public static let name = "k8s.statefulset.name"
        
            /// `k8s.statefulset.uid`: The UID of the StatefulSet. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.statefulset.uid"
        
        
        }
    
        /// `k8s.volume` namespace
        public enum volume {
            /// `k8s.volume.name`: The name of the K8s volume. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `volume0`
            public static let name = "k8s.volume.name"
        
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
            public static let type = "k8s.volume.type"
        
        
        }
    }
}