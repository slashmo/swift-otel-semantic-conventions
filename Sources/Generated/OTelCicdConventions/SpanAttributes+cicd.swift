// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `cicd` namespace
    public var cicd: CicdAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct CicdAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `cicd.pipeline` namespace
        public var pipeline: PipelineAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct PipelineAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var name: Self.Key<String> { .init(name: OTelAttributes.cicd.pipeline.name) }
            }
        
            /// `cicd.pipeline.run` namespace
            public var run: RunAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct RunAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `cicd.pipeline.run.id`: The unique identifier of a pipeline run within a CI/CD system. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `120912`
                    public var id: Self.Key<String> { .init(name: OTelAttributes.cicd.pipeline.run.id) }
                }
            
            
            }
        
            /// `cicd.pipeline.task` namespace
            public var task: TaskAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct TaskAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
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
                    public var name: Self.Key<String> { .init(name: OTelAttributes.cicd.pipeline.task.name) }
            
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
                    public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.cicd.pipeline.task.type) }
                    
                    public enum TypeEnum: String, SpanAttributeConvertible {
                        /// `build`: build
                        case build = "build"
                        /// `test`: test
                        case test = "test"
                        /// `deploy`: deploy
                        case deploy = "deploy"
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
                /// `cicd.pipeline.task.run` namespace
                public var run: RunAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                @dynamicMemberLookup
                public struct RunAttributes: SpanAttributeNamespace {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}
                        /// `cicd.pipeline.task.run.id`: The unique identifier of a task run within a pipeline. 
                        /// 
                        /// - Stability: experimental
                        /// 
                        /// - Type: string
                        /// 
                        /// - Example: `12097`
                        public var id: Self.Key<String> { .init(name: OTelAttributes.cicd.pipeline.task.run.id) }
                    }
                
                    /// `cicd.pipeline.task.run.url` namespace
                    public var url: UrlAttributes {
                        get {
                            .init(attributes: self.attributes)
                        }
                        set {
                            self.attributes = newValue.attributes
                        }
                    }
                    
                    @dynamicMemberLookup
                    public struct UrlAttributes: SpanAttributeNamespace {
                        public var attributes: SpanAttributes
                    
                        public init(attributes: SpanAttributes) {
                            self.attributes = attributes
                        }
                    
                        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                            public init() {}
                            /// `cicd.pipeline.task.run.url.full`: The [URL](https://wikipedia.org/wiki/URL) of the pipeline run providing the complete address in order to locate and identify the pipeline run. 
                            /// 
                            /// - Stability: experimental
                            /// 
                            /// - Type: string
                            /// 
                            /// - Example: `https://github.com/open-telemetry/semantic-conventions/actions/runs/9753949763/job/26920038674?pr=1075`
                            public var full: Self.Key<String> { .init(name: OTelAttributes.cicd.pipeline.task.run.url.full) }
                        }
                    
                    
                    }
                }
            }
        }
    }
}