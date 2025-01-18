// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `faas` namespace
    public var faas: FaasAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct FaasAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `faas.coldstart`: A boolean that is true if the serverless function is executed for the first time (aka cold-start). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            public var coldstart: Self.Key<Bool> { .init(name: OTelAttributes.faas.coldstart) }
    
            /// `faas.cron`: A string containing the schedule period as [Cron Expression](https://docs.oracle.com/cd/E12058_01/doc/doc.1014/e12030/cron_expressions.htm). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `0/5 * * * ? *`
            public var cron: Self.Key<String> { .init(name: OTelAttributes.faas.cron) }
    
            /// `faas.instance`: The execution environment ID as a string, that will be potentially reused for other invocations to the same function/function version. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - **AWS Lambda:** Use the (full) log stream name. 
            /// 
            /// - Example: `2021/06/28/[$LATEST]2f399eb14537447da05ab2a2e39309de`
            public var instance: Self.Key<String> { .init(name: OTelAttributes.faas.instance) }
    
            /// `faas.invocation_id`: The invocation ID of the current function invocation. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `af9d5aa4-a685-4c5f-a22b-444f80b3cc28`
            public var invocation_id: Self.Key<String> { .init(name: OTelAttributes.faas.invocation_id) }
    
            /// `faas.invoked_name`: The name of the invoked function. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// SHOULD be equal to the `faas.name` resource attribute of the invoked function. 
            /// 
            /// - Example: `my-function`
            public var invoked_name: Self.Key<String> { .init(name: OTelAttributes.faas.invoked_name) }
    
            /// `faas.invoked_provider`: The cloud provider of the invoked function. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `alibaba_cloud`: Alibaba Cloud
            ///     - `aws`: Amazon Web Services
            ///     - `azure`: Microsoft Azure
            ///     - `gcp`: Google Cloud Platform
            ///     - `tencent_cloud`: Tencent Cloud
            /// 
            /// SHOULD be equal to the `cloud.provider` resource attribute of the invoked function. 
            public var invoked_provider: Self.Key<Invoked_ProviderEnum> { .init(name: OTelAttributes.faas.invoked_provider) }
            
            public enum Invoked_ProviderEnum: String, SpanAttributeConvertible {
                /// `alibaba_cloud`: Alibaba Cloud
                case alibaba_cloud = "alibaba_cloud"
                /// `aws`: Amazon Web Services
                case aws = "aws"
                /// `azure`: Microsoft Azure
                case azure = "azure"
                /// `gcp`: Google Cloud Platform
                case gcp = "gcp"
                /// `tencent_cloud`: Tencent Cloud
                case tencent_cloud = "tencent_cloud"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `faas.invoked_region`: The cloud region of the invoked function. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// SHOULD be equal to the `cloud.region` resource attribute of the invoked function. 
            /// 
            /// - Example: `eu-central-1`
            public var invoked_region: Self.Key<String> { .init(name: OTelAttributes.faas.invoked_region) }
    
            /// `faas.max_memory`: The amount of memory available to the serverless function converted to Bytes. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// It's recommended to set this attribute since e.g. too little memory can easily stop a Java AWS Lambda function from working correctly. On AWS Lambda, the environment variable `AWS_LAMBDA_FUNCTION_MEMORY_SIZE` provides this information (which must be multiplied by 1,048,576). 
            /// 
            /// - Example: `134217728`
            public var max_memory: Self.Key<Int> { .init(name: OTelAttributes.faas.max_memory) }
    
            /// `faas.name`: The name of the single function that this runtime instance executes. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This is the name of the function as configured/deployed on the FaaS platform and is usually different from the name of the callback function (which may be stored in the [`code.namespace`/`code.function`](/docs/general/attributes.md#source-code-attributes) span attributes).  For some cloud providers, the above definition is ambiguous. The following definition of function name MUST be used for this attribute (and consequently the span name) for the listed cloud providers/products:  - **Azure:**  The full name `<FUNCAPP>/<FUNC>`, i.e., function app name   followed by a forward slash followed by the function name (this form   can also be seen in the resource JSON for the function).   This means that a span attribute MUST be used, as an Azure function   app can host multiple functions that would usually share   a TracerProvider (see also the `cloud.resource_id` attribute). 
            /// 
            /// - Examples:
            ///     - `my-function`
            ///     - `myazurefunctionapp/some-function-name`
            public var name: Self.Key<String> { .init(name: OTelAttributes.faas.name) }
    
            /// `faas.time`: A string containing the function invocation time in the [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format expressed in [UTC](https://www.w3.org/TR/NOTE-datetime). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `2020-01-23T13:47:06Z`
            public var time: Self.Key<String> { .init(name: OTelAttributes.faas.time) }
    
            /// `faas.trigger`: Type of the trigger which caused this function invocation. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `datasource`: A response to some data source operation such as a database or filesystem read/write
            ///     - `http`: To provide an answer to an inbound HTTP request
            ///     - `pubsub`: A function is set to be executed when messages are sent to a messaging system
            ///     - `timer`: A function is scheduled to be executed regularly
            ///     - `other`: If none of the others apply
            public var trigger: Self.Key<TriggerEnum> { .init(name: OTelAttributes.faas.trigger) }
            
            public enum TriggerEnum: String, SpanAttributeConvertible {
                /// `datasource`: A response to some data source operation such as a database or filesystem read/write
                case datasource = "datasource"
                /// `http`: To provide an answer to an inbound HTTP request
                case http = "http"
                /// `pubsub`: A function is set to be executed when messages are sent to a messaging system
                case pubsub = "pubsub"
                /// `timer`: A function is scheduled to be executed regularly
                case timer = "timer"
                /// `other`: If none of the others apply
                case other = "other"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `faas.version`: The immutable version of the function being executed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Depending on the cloud provider and platform, use:  - **AWS Lambda:** The [function version](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html)   (an integer represented as a decimal string). - **Google Cloud Run (Services):** The [revision](https://cloud.google.com/run/docs/managing/revisions)   (i.e., the function name plus the revision suffix). - **Google Cloud Functions:** The value of the   [`K_REVISION` environment variable](https://cloud.google.com/functions/docs/env-var#runtime_environment_variables_set_automatically). - **Azure Functions:** Not applicable. Do not set this attribute. 
            /// 
            /// - Examples:
            ///     - `26`
            ///     - `pinkfroid-00002`
            public var version: Self.Key<String> { .init(name: OTelAttributes.faas.version) }
        }
    
        /// `faas.document` namespace
        public var document: DocumentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DocumentAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `faas.document.collection`: The name of the source on which the triggering operation was performed. For example, in Cloud Storage or S3 corresponds to the bucket name, and in Cosmos DB to the database name. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `myBucketName`
                ///     - `myDbName`
                public var collection: Self.Key<String> { .init(name: OTelAttributes.faas.document.collection) }
        
                /// `faas.document.name`: The document name/table subjected to the operation. For example, in Cloud Storage or S3 is the name of the file, and in Cosmos DB the table name. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `myFile.txt`
                ///     - `myTableName`
                public var name: Self.Key<String> { .init(name: OTelAttributes.faas.document.name) }
        
                /// `faas.document.operation`: Describes the type of the operation that was performed on the data.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `insert`: When a new object is created.
                ///     - `edit`: When an object is modified.
                ///     - `delete`: When an object is deleted.
                public var operation: Self.Key<OperationEnum> { .init(name: OTelAttributes.faas.document.operation) }
                
                public enum OperationEnum: String, SpanAttributeConvertible {
                    /// `insert`: When a new object is created.
                    case insert = "insert"
                    /// `edit`: When an object is modified.
                    case edit = "edit"
                    /// `delete`: When an object is deleted.
                    case delete = "delete"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `faas.document.time`: A string containing the time when the data was accessed in the [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format expressed in [UTC](https://www.w3.org/TR/NOTE-datetime). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `2020-01-23T13:47:06Z`
                public var time: Self.Key<String> { .init(name: OTelAttributes.faas.document.time) }
            }
        
        
        }
    }
}