// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `cloudfoundry` namespace
    public enum cloudfoundry {
    
    
        /// `cloudfoundry.app` namespace
        public enum app {
            /// `cloudfoundry.app.id`: The guid of the application. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.application_id`. This is the same value as reported by `cf app <app-name> --guid`. 
            /// 
            /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
            public static let id = "cloudfoundry.app.id"
        
            /// `cloudfoundry.app.name`: The name of the application. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.application_name`. This is the same value as reported by `cf apps`. 
            /// 
            /// - Example: `my-app-name`
            public static let name = "cloudfoundry.app.name"
        
            /// `cloudfoundry.app.instance` namespace
            public enum instance {
                /// `cloudfoundry.app.instance.id`: The index of the application instance. 0 when just one instance is active. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// CloudFoundry defines the `instance_id` in the [Loggregator v2 envelope](https://github.com/cloudfoundry/loggregator-api#v2-envelope). It is used for logs and metrics emitted by CloudFoundry. It is supposed to contain the application instance index for applications deployed on the runtime.  Application instrumentation should use the value from environment variable `CF_INSTANCE_INDEX`. 
                /// 
                /// - Examples:
                ///     - `0`
                ///     - `1`
                public static let id = "cloudfoundry.app.instance.id"
            
            
            }
        }
    
        /// `cloudfoundry.org` namespace
        public enum org {
            /// `cloudfoundry.org.id`: The guid of the CloudFoundry org the application is running in. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.org_id`. This is the same value as reported by `cf org <org-name> --guid`. 
            /// 
            /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
            public static let id = "cloudfoundry.org.id"
        
            /// `cloudfoundry.org.name`: The name of the CloudFoundry organization the app is running in. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.org_name`. This is the same value as reported by `cf orgs`. 
            /// 
            /// - Example: `my-org-name`
            public static let name = "cloudfoundry.org.name"
        
        
        }
    
        /// `cloudfoundry.process` namespace
        public enum process {
            /// `cloudfoundry.process.id`: The UID identifying the process. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.process_id`. It is supposed to be equal to `VCAP_APPLICATION.app_id` for applications deployed to the runtime. For system components, this could be the actual PID. 
            /// 
            /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
            public static let id = "cloudfoundry.process.id"
        
            /// `cloudfoundry.process.type`: The type of process. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// CloudFoundry applications can consist of multiple jobs. Usually the main process will be of type `web`. There can be additional background tasks or side-cars with different process types. 
            /// 
            /// - Example: `web`
            public static let type = "cloudfoundry.process.type"
        
        
        }
    
        /// `cloudfoundry.space` namespace
        public enum space {
            /// `cloudfoundry.space.id`: The guid of the CloudFoundry space the application is running in. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.space_id`. This is the same value as reported by `cf space <space-name> --guid`. 
            /// 
            /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
            public static let id = "cloudfoundry.space.id"
        
            /// `cloudfoundry.space.name`: The name of the CloudFoundry space the application is running in. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Application instrumentation should use the value from environment variable `VCAP_APPLICATION.space_name`. This is the same value as reported by `cf spaces`. 
            /// 
            /// - Example: `my-space-name`
            public static let name = "cloudfoundry.space.name"
        
        
        }
    
        /// `cloudfoundry.system` namespace
        public enum system {
            /// `cloudfoundry.system.id`: A guid or another name describing the event source. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// CloudFoundry defines the `source_id` in the [Loggregator v2 envelope](https://github.com/cloudfoundry/loggregator-api#v2-envelope). It is used for logs and metrics emitted by CloudFoundry. It is supposed to contain the component name, e.g. "gorouter", for CloudFoundry components.  When system components are instrumented, values from the [Bosh spec](https://bosh.io/docs/jobs/#properties-spec) should be used. The `system.id` should be set to `spec.deployment/spec.name`. 
            /// 
            /// - Example: `cf/gorouter`
            public static let id = "cloudfoundry.system.id"
        
            /// `cloudfoundry.system.instance` namespace
            public enum instance {
                /// `cloudfoundry.system.instance.id`: A guid describing the concrete instance of the event source. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// CloudFoundry defines the `instance_id` in the [Loggregator v2 envelope](https://github.com/cloudfoundry/loggregator-api#v2-envelope). It is used for logs and metrics emitted by CloudFoundry. It is supposed to contain the vm id for CloudFoundry components.  When system components are instrumented, values from the [Bosh spec](https://bosh.io/docs/jobs/#properties-spec) should be used. The `system.instance.id` should be set to `spec.id`. 
                /// 
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                public static let id = "cloudfoundry.system.instance.id"
            
            
            }
        }
    }
}