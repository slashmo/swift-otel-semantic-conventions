// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `cicd` namespace
    public enum cicd {
    
    
        /// `cicd.pipeline` namespace
        public enum pipeline {
            /// `cicd.pipeline.name`: The human readable name of the pipeline within a CI/CD system. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `Build and Test`
            ///     - `Lint`
            ///     - `Deploy Go Project`
            ///     - `deploy_to_environment`
            public static let name = "cicd.pipeline.name"
        
            /// `cicd.pipeline.run` namespace
            public enum run {
                /// `cicd.pipeline.run.id`: The unique identifier of a pipeline run within a CI/CD system. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `120912`
                public static let id = "cicd.pipeline.run.id"
            
            
            }
        
            /// `cicd.pipeline.task` namespace
            public enum task {
                /// `cicd.pipeline.task.name`: The human readable name of a task within a pipeline. Task here most closely aligns with a [computing process](https://wikipedia.org/wiki/Pipeline_(computing)) in a pipeline. Other terms for tasks include commands, steps, and procedures. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Run GoLang Linter`
                ///     - `Go Build`
                ///     - `go-test`
                ///     - `deploy_binary`
                public static let name = "cicd.pipeline.task.name"
            
                /// `cicd.pipeline.task.type`: The type of the task within a pipeline. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `build`: build
                ///     - `test`: test
                ///     - `deploy`: deploy
                /// 
                /// - Examples:
                ///     - `build`
                ///     - `test`
                ///     - `deploy`
                public static let type = "cicd.pipeline.task.type"
            
                /// `cicd.pipeline.task.run` namespace
                public enum run {
                    /// `cicd.pipeline.task.run.id`: The unique identifier of a task run within a pipeline. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `12097`
                    public static let id = "cicd.pipeline.task.run.id"
                
                    /// `cicd.pipeline.task.run.url` namespace
                    public enum url {
                        /// `cicd.pipeline.task.run.url.full`: The [URL](https://wikipedia.org/wiki/URL) of the pipeline run providing the complete address in order to locate and identify the pipeline run. 
                        /// 
                        /// - Stability: experimental
                        /// 
                        /// - Type: string
                        /// 
                        /// - Example: `https://github.com/open-telemetry/semantic-conventions/actions/runs/9753949763/job/26920038674?pr=1075`
                        public static let full = "cicd.pipeline.task.run.url.full"
                    
                    
                    }
                }
            }
        }
    }
}