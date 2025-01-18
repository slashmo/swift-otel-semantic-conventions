// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `gcp` namespace
    public enum gcp {
    
    
        /// `gcp.client` namespace
        public enum client {
            /// `gcp.client.service`: Identifies the Google Cloud service for which the official client library is intended.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Intended to be a stable identifier for Google Cloud client libraries that is uniform across implementation languages. The value should be derived from the canonical service domain for the service; for example, 'foo.googleapis.com' should result in a value of 'foo'. 
            /// 
            /// - Examples:
            ///     - `appengine`
            ///     - `run`
            ///     - `firestore`
            ///     - `alloydb`
            ///     - `spanner`
            public static let service = "gcp.client.service"
        
        
        }
    
        /// `gcp.cloud_run` namespace
        public enum cloud_run {
        
        
            /// `gcp.cloud_run.job` namespace
            public enum job {
                /// `gcp.cloud_run.job.execution`: The name of the Cloud Run [execution](https://cloud.google.com/run/docs/managing/job-executions) being run for the Job, as set by the [`CLOUD_RUN_EXECUTION`](https://cloud.google.com/run/docs/container-contract#jobs-env-vars) environment variable. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `job-name-xxxx`
                ///     - `sample-job-mdw84`
                public static let execution = "gcp.cloud_run.job.execution"
            
                /// `gcp.cloud_run.job.task_index`: The index for a task within an execution as provided by the [`CLOUD_RUN_TASK_INDEX`](https://cloud.google.com/run/docs/container-contract#jobs-env-vars) environment variable. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `0`
                ///     - `1`
                public static let task_index = "gcp.cloud_run.job.task_index"
            
            
            }
        }
    
        /// `gcp.gce` namespace
        public enum gce {
        
        
            /// `gcp.gce.instance` namespace
            public enum instance {
                /// `gcp.gce.instance.hostname`: The hostname of a GCE instance. This is the full value of the default or [custom hostname](https://cloud.google.com/compute/docs/instances/custom-hostname-vm). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `my-host1234.example.com`
                ///     - `sample-vm.us-west1-b.c.my-project.internal`
                public static let hostname = "gcp.gce.instance.hostname"
            
                /// `gcp.gce.instance.name`: The instance name of a GCE instance. This is the value provided by `host.name`, the visible name of the instance in the Cloud Console UI, and the prefix for the default hostname of the instance as defined by the [default internal DNS name](https://cloud.google.com/compute/docs/internal-dns#instance-fully-qualified-domain-names). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `instance-1`
                ///     - `my-vm-name`
                public static let name = "gcp.gce.instance.name"
            
            
            }
        }
    }
}