// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `aws` namespace
    public var aws: AwsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct AwsAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `aws.request_id`: The AWS request ID as returned in the response headers `x-amz-request-id` or `x-amz-requestid`.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `79b9da39-b7ae-508a-a6bc-864b2829c622`
            ///     - `C9ER4AJX75574TDJ`
            public var request_id: Self.Key<String> { .init(name: OTelAttributes.aws.request_id) }
        }
    
        /// `aws.dynamodb` namespace
        public var dynamodb: DynamodbAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DynamodbAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aws.dynamodb.attribute_definitions`: The JSON-serialized value of each item in the `AttributeDefinitions` request field.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var attribute_definitions: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.attribute_definitions) }
        
                /// `aws.dynamodb.attributes_to_get`: The value of the `AttributesToGet` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var attributes_to_get: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.attributes_to_get) }
        
                /// `aws.dynamodb.consistent_read`: The value of the `ConsistentRead` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                public var consistent_read: Self.Key<Bool> { .init(name: OTelAttributes.aws.dynamodb.consistent_read) }
        
                /// `aws.dynamodb.consumed_capacity`: The JSON-serialized value of each item in the `ConsumedCapacity` response field.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var consumed_capacity: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.consumed_capacity) }
        
                /// `aws.dynamodb.count`: The value of the `Count` response parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `10`
                public var count: Self.Key<Int> { .init(name: OTelAttributes.aws.dynamodb.count) }
        
                /// `aws.dynamodb.exclusive_start_table`: The value of the `ExclusiveStartTableName` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Users`
                ///     - `CatsTable`
                public var exclusive_start_table: Self.Key<String> { .init(name: OTelAttributes.aws.dynamodb.exclusive_start_table) }
        
                /// `aws.dynamodb.global_secondary_index_updates`: The JSON-serialized value of each item in the `GlobalSecondaryIndexUpdates` request field.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var global_secondary_index_updates: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.global_secondary_index_updates) }
        
                /// `aws.dynamodb.global_secondary_indexes`: The JSON-serialized value of each item of the `GlobalSecondaryIndexes` request field
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var global_secondary_indexes: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.global_secondary_indexes) }
        
                /// `aws.dynamodb.index_name`: The value of the `IndexName` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `name_to_group`
                public var index_name: Self.Key<String> { .init(name: OTelAttributes.aws.dynamodb.index_name) }
        
                /// `aws.dynamodb.item_collection_metrics`: The JSON-serialized value of the `ItemCollectionMetrics` response field.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `{ "string" : [ { "ItemCollectionKey": { "string" : { "B": blob, "BOOL": boolean, "BS": [ blob ], "L": [ "AttributeValue" ], "M": { "string" : "AttributeValue" }, "N": "string", "NS": [ "string" ], "NULL": boolean, "S": "string", "SS": [ "string" ] } }, "SizeEstimateRangeGB": [ number ] } ] }`
                public var item_collection_metrics: Self.Key<String> { .init(name: OTelAttributes.aws.dynamodb.item_collection_metrics) }
        
                /// `aws.dynamodb.limit`: The value of the `Limit` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `10`
                public var limit: Self.Key<Int> { .init(name: OTelAttributes.aws.dynamodb.limit) }
        
                /// `aws.dynamodb.local_secondary_indexes`: The JSON-serialized value of each item of the `LocalSecondaryIndexes` request field.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var local_secondary_indexes: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.local_secondary_indexes) }
        
                /// `aws.dynamodb.projection`: The value of the `ProjectionExpression` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Title`
                ///     - `Title, Price, Color`
                ///     - `Title, Description, RelatedItems, ProductReviews`
                public var projection: Self.Key<String> { .init(name: OTelAttributes.aws.dynamodb.projection) }
        
                /// `aws.dynamodb.provisioned_read_capacity`: The value of the `ProvisionedThroughput.ReadCapacityUnits` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: double
                /// 
                /// - Examples:
                ///     - `1.0`
                ///     - `2.0`
                public var provisioned_read_capacity: Self.Key<Double> { .init(name: OTelAttributes.aws.dynamodb.provisioned_read_capacity) }
        
                /// `aws.dynamodb.provisioned_write_capacity`: The value of the `ProvisionedThroughput.WriteCapacityUnits` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: double
                /// 
                /// - Examples:
                ///     - `1.0`
                ///     - `2.0`
                public var provisioned_write_capacity: Self.Key<Double> { .init(name: OTelAttributes.aws.dynamodb.provisioned_write_capacity) }
        
                /// `aws.dynamodb.scan_forward`: The value of the `ScanIndexForward` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                public var scan_forward: Self.Key<Bool> { .init(name: OTelAttributes.aws.dynamodb.scan_forward) }
        
                /// `aws.dynamodb.scanned_count`: The value of the `ScannedCount` response parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `50`
                public var scanned_count: Self.Key<Int> { .init(name: OTelAttributes.aws.dynamodb.scanned_count) }
        
                /// `aws.dynamodb.segment`: The value of the `Segment` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `10`
                public var segment: Self.Key<Int> { .init(name: OTelAttributes.aws.dynamodb.segment) }
        
                /// `aws.dynamodb.select`: The value of the `Select` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `ALL_ATTRIBUTES`
                ///     - `COUNT`
                public var select: Self.Key<String> { .init(name: OTelAttributes.aws.dynamodb.select) }
        
                /// `aws.dynamodb.table_count`: The number of items in the `TableNames` response parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `20`
                public var table_count: Self.Key<Int> { .init(name: OTelAttributes.aws.dynamodb.table_count) }
        
                /// `aws.dynamodb.table_names`: The keys in the `RequestItems` object field.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public var table_names: Self.Key<[String]> { .init(name: OTelAttributes.aws.dynamodb.table_names) }
        
                /// `aws.dynamodb.total_segments`: The value of the `TotalSegments` request parameter.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `100`
                public var total_segments: Self.Key<Int> { .init(name: OTelAttributes.aws.dynamodb.total_segments) }
            }
        
        
        }
    
        /// `aws.ecs` namespace
        public var ecs: EcsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct EcsAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aws.ecs.launchtype`: The [launch type](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html) for an ECS task. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `ec2`
                ///     - `fargate`
                public var launchtype: Self.Key<LaunchtypeEnum> { .init(name: OTelAttributes.aws.ecs.launchtype) }
                
                public enum LaunchtypeEnum: String, SpanAttributeConvertible {
                    /// `ec2`
                    case ec2 = "ec2"
                    /// `fargate`
                    case fargate = "fargate"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `aws.ecs.cluster` namespace
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
                    /// `aws.ecs.cluster.arn`: The ARN of an [ECS cluster](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/clusters.html). 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `arn:aws:ecs:us-west-2:123456789123:cluster/my-cluster`
                    public var arn: Self.Key<String> { .init(name: OTelAttributes.aws.ecs.cluster.arn) }
                }
            
            
            }
        
            /// `aws.ecs.container` namespace
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
                    /// `aws.ecs.container.arn`: The Amazon Resource Name (ARN) of an [ECS container instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_instances.html). 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `arn:aws:ecs:us-west-1:123456789123:container/32624152-9086-4f0e-acae-1a75b14fe4d9`
                    public var arn: Self.Key<String> { .init(name: OTelAttributes.aws.ecs.container.arn) }
                }
            
            
            }
        
            /// `aws.ecs.task` namespace
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
                    /// `aws.ecs.task.arn`: The ARN of a running [ECS task](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids). 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Examples:
                    ///     - `arn:aws:ecs:us-west-1:123456789123:task/10838bed-421f-43ef-870a-f43feacbbb5b`
                    ///     - `arn:aws:ecs:us-west-1:123456789123:task/my-cluster/task-id/23ebb8ac-c18f-46c6-8bbe-d55d0e37cfbd`
                    public var arn: Self.Key<String> { .init(name: OTelAttributes.aws.ecs.task.arn) }
            
                    /// `aws.ecs.task.family`: The family name of the [ECS task definition](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html) used to create the ECS task. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `opentelemetry-family`
                    public var family: Self.Key<String> { .init(name: OTelAttributes.aws.ecs.task.family) }
            
                    /// `aws.ecs.task.id`: The ID of a running ECS task. The ID MUST be extracted from `task.arn`. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Examples:
                    ///     - `10838bed-421f-43ef-870a-f43feacbbb5b`
                    ///     - `23ebb8ac-c18f-46c6-8bbe-d55d0e37cfbd`
                    public var id: Self.Key<String> { .init(name: OTelAttributes.aws.ecs.task.id) }
            
                    /// `aws.ecs.task.revision`: The revision for the task definition used to create the ECS task. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Examples:
                    ///     - `8`
                    ///     - `26`
                    public var revision: Self.Key<String> { .init(name: OTelAttributes.aws.ecs.task.revision) }
                }
            
            
            }
        }
    
        /// `aws.eks` namespace
        public var eks: EksAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct EksAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `aws.eks.cluster` namespace
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
                    /// `aws.eks.cluster.arn`: The ARN of an EKS cluster. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `arn:aws:ecs:us-west-2:123456789123:cluster/my-cluster`
                    public var arn: Self.Key<String> { .init(name: OTelAttributes.aws.eks.cluster.arn) }
                }
            
            
            }
        }
    
        /// `aws.lambda` namespace
        public var lambda: LambdaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct LambdaAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aws.lambda.invoked_arn`: The full invoked ARN as provided on the `Context` passed to the function (`Lambda-Runtime-Invoked-Function-Arn` header on the `/runtime/invocation/next` applicable). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// This may be different from `cloud.resource_id` if an alias is involved.
                /// 
                /// - Example: `arn:aws:lambda:us-east-1:123456:function:myfunction:myalias`
                public var invoked_arn: Self.Key<String> { .init(name: OTelAttributes.aws.lambda.invoked_arn) }
            }
        
        
        }
    
        /// `aws.log` namespace
        public var log: LogAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct LogAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `aws.log.group` namespace
            public var group: GroupAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct GroupAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `aws.log.group.arns`: The Amazon Resource Name(s) (ARN) of the AWS log group(s). 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: stringArray
                    /// 
                    /// See the [log group ARN format documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html#CWL_ARN_Format). 
                    public var arns: Self.Key<[String]> { .init(name: OTelAttributes.aws.log.group.arns) }
            
                    /// `aws.log.group.names`: The name(s) of the AWS log group(s) an application is writing to. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: stringArray
                    /// 
                    /// Multiple log groups must be supported for cases like multi-container applications, where a single application has sidecar containers, and each write to their own log group. 
                    public var names: Self.Key<[String]> { .init(name: OTelAttributes.aws.log.group.names) }
                }
            
            
            }
        
            /// `aws.log.stream` namespace
            public var stream: StreamAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct StreamAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `aws.log.stream.arns`: The ARN(s) of the AWS log stream(s). 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: stringArray
                    /// 
                    /// See the [log stream ARN format documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html#CWL_ARN_Format). One log group can contain several log streams, so these ARNs necessarily identify both a log group and a log stream. 
                    public var arns: Self.Key<[String]> { .init(name: OTelAttributes.aws.log.stream.arns) }
            
                    /// `aws.log.stream.names`: The name(s) of the AWS log stream(s) an application is writing to. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: stringArray
                    public var names: Self.Key<[String]> { .init(name: OTelAttributes.aws.log.stream.names) }
                }
            
            
            }
        }
    
        /// `aws.s3` namespace
        public var s3: S3Attributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct S3Attributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aws.s3.bucket`: The S3 bucket name the request refers to. Corresponds to the `--bucket` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) operations.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// The `bucket` attribute is applicable to all S3 operations that reference a bucket, i.e. that require the bucket name as a mandatory parameter. This applies to almost all S3 operations except `list-buckets`. 
                /// 
                /// - Example: `some-bucket-name`
                public var bucket: Self.Key<String> { .init(name: OTelAttributes.aws.s3.bucket) }
        
                /// `aws.s3.copy_source`: The source object (in the form `bucket`/`key`) for the copy operation.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// The `copy_source` attribute applies to S3 copy operations and corresponds to the `--copy-source` parameter of the [copy-object operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/copy-object.html). This applies in particular to the following operations:  - [copy-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/copy-object.html) - [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html) 
                /// 
                /// - Example: `someFile.yml`
                public var copy_source: Self.Key<String> { .init(name: OTelAttributes.aws.s3.copy_source) }
        
                /// `aws.s3.delete`: The delete request container that specifies the objects to be deleted.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// The `delete` attribute is only applicable to the [delete-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-object.html) operation. The `delete` attribute corresponds to the `--delete` parameter of the [delete-objects operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-objects.html). 
                /// 
                /// - Example: `Objects=[{Key=string,VersionId=string},{Key=string,VersionId=string}],Quiet=boolean`
                public var delete: Self.Key<String> { .init(name: OTelAttributes.aws.s3.delete) }
        
                /// `aws.s3.key`: The S3 object key the request refers to. Corresponds to the `--key` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) operations.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// The `key` attribute is applicable to all object-related S3 operations, i.e. that require the object key as a mandatory parameter. This applies in particular to the following operations:  - [copy-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/copy-object.html) - [delete-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-object.html) - [get-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/get-object.html) - [head-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/head-object.html) - [put-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/put-object.html) - [restore-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/restore-object.html) - [select-object-content](https://docs.aws.amazon.com/cli/latest/reference/s3api/select-object-content.html) - [abort-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/abort-multipart-upload.html) - [complete-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/complete-multipart-upload.html) - [create-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/create-multipart-upload.html) - [list-parts](https://docs.aws.amazon.com/cli/latest/reference/s3api/list-parts.html) - [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html) - [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html) 
                /// 
                /// - Example: `someFile.yml`
                public var key: Self.Key<String> { .init(name: OTelAttributes.aws.s3.key) }
        
                /// `aws.s3.part_number`: The part number of the part being uploaded in a multipart-upload operation. This is a positive integer between 1 and 10,000.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// The `part_number` attribute is only applicable to the [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html) and [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html) operations. The `part_number` attribute corresponds to the `--part-number` parameter of the [upload-part operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html). 
                /// 
                /// - Example: `3456`
                public var part_number: Self.Key<Int> { .init(name: OTelAttributes.aws.s3.part_number) }
        
                /// `aws.s3.upload_id`: Upload ID that identifies the multipart upload.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// The `upload_id` attribute applies to S3 multipart-upload operations and corresponds to the `--upload-id` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) multipart operations. This applies in particular to the following operations:  - [abort-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/abort-multipart-upload.html) - [complete-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/complete-multipart-upload.html) - [list-parts](https://docs.aws.amazon.com/cli/latest/reference/s3api/list-parts.html) - [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html) - [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html) 
                /// 
                /// - Example: `dfRtDYWFbkRONycy.Yxwh66Yjlx.cph0gtNBtJ`
                public var upload_id: Self.Key<String> { .init(name: OTelAttributes.aws.s3.upload_id) }
            }
        
        
        }
    }
}