// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `messaging` namespace
    public var messaging: MessagingAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct MessagingAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `messaging.client_id`: Deprecated, use `messaging.client.id` instead. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `client-5`
            ///     - `myhost@8742@s8083jm`
            @available(*, deprecated, message: "Replaced by `messaging.client.id`.")
            public var client_id: Self.Key<String> { .init(name: OTelAttributes.messaging.client_id) }
    
            /// `messaging.operation`: Deprecated, use `messaging.operation.type` instead. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `publish`
            ///     - `create`
            ///     - `process`
            @available(*, deprecated, message: "Replaced by `messaging.operation.type`.")
            public var _operation: Self.Key<String> { .init(name: OTelAttributes.messaging._operation) }
    
            /// `messaging.system`: The messaging system as identified by the client instrumentation.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `activemq`: Apache ActiveMQ
            ///     - `aws_sqs`: Amazon Simple Queue Service (SQS)
            ///     - `eventgrid`: Azure Event Grid
            ///     - `eventhubs`: Azure Event Hubs
            ///     - `servicebus`: Azure Service Bus
            ///     - `gcp_pubsub`: Google Cloud Pub/Sub
            ///     - `jms`: Java Message Service
            ///     - `kafka`: Apache Kafka
            ///     - `rabbitmq`: RabbitMQ
            ///     - `rocketmq`: Apache RocketMQ
            ///     - `pulsar`: Apache Pulsar
            /// 
            /// The actual messaging system may differ from the one known by the client. For example, when using Kafka client libraries to communicate with Azure Event Hubs, the `messaging.system` is set to `kafka` based on the instrumentation's best knowledge. 
            public var system: Self.Key<SystemEnum> { .init(name: OTelAttributes.messaging.system) }
            
            public enum SystemEnum: String, SpanAttributeConvertible {
                /// `activemq`: Apache ActiveMQ
                case activemq = "activemq"
                /// `aws_sqs`: Amazon Simple Queue Service (SQS)
                case aws_sqs = "aws_sqs"
                /// `eventgrid`: Azure Event Grid
                case eventgrid = "eventgrid"
                /// `eventhubs`: Azure Event Hubs
                case eventhubs = "eventhubs"
                /// `servicebus`: Azure Service Bus
                case servicebus = "servicebus"
                /// `gcp_pubsub`: Google Cloud Pub/Sub
                case gcp_pubsub = "gcp_pubsub"
                /// `jms`: Java Message Service
                case jms = "jms"
                /// `kafka`: Apache Kafka
                case kafka = "kafka"
                /// `rabbitmq`: RabbitMQ
                case rabbitmq = "rabbitmq"
                /// `rocketmq`: Apache RocketMQ
                case rocketmq = "rocketmq"
                /// `pulsar`: Apache Pulsar
                case pulsar = "pulsar"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
        /// `messaging.batch` namespace
        public var batch: BatchAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct BatchAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.batch.message_count`: The number of messages sent, received, or processed in the scope of the batching operation.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// Instrumentations SHOULD NOT set `messaging.batch.message_count` on spans that operate with a single message. When a messaging client library supports both batch and single-message API for the same operation, instrumentations SHOULD use `messaging.batch.message_count` for batching APIs and SHOULD NOT use it for single-message APIs. 
                /// 
                /// - Examples:
                ///     - `0`
                ///     - `1`
                ///     - `2`
                public var message_count: Self.Key<Int> { .init(name: OTelAttributes.messaging.batch.message_count) }
            }
        
        
        }
    
        /// `messaging.client` namespace
        public var client: ClientAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ClientAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.client.id`: A unique identifier for the client that consumes or produces a message. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `client-5`
                ///     - `myhost@8742@s8083jm`
                public var id: Self.Key<String> { .init(name: OTelAttributes.messaging.client.id) }
            }
        
        
        }
    
        /// `messaging.consumer` namespace
        public var consumer: ConsumerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ConsumerAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `messaging.consumer.group` namespace
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
                    /// `messaging.consumer.group.name`: The name of the consumer group with which a consumer is associated. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.consumer.group.name` is applicable and what it means in the context of that system. 
                    /// 
                    /// - Examples:
                    ///     - `my-group`
                    ///     - `indexer`
                    public var name: Self.Key<String> { .init(name: OTelAttributes.messaging.consumer.group.name) }
                }
            
            
            }
        }
    
        /// `messaging.destination` namespace
        public var destination: DestinationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DestinationAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.destination.anonymous`: A boolean that is true if the message destination is anonymous (could be unnamed or have auto-generated name).
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                public var anonymous: Self.Key<Bool> { .init(name: OTelAttributes.messaging.destination.anonymous) }
        
                /// `messaging.destination.name`: The message destination name
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// Destination name SHOULD uniquely identify a specific queue, topic or other entity within the broker. If the broker doesn't have such notion, the destination name SHOULD uniquely identify the broker. 
                /// 
                /// - Examples:
                ///     - `MyQueue`
                ///     - `MyTopic`
                public var name: Self.Key<String> { .init(name: OTelAttributes.messaging.destination.name) }
        
                /// `messaging.destination.template`: Low cardinality representation of the messaging destination name
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// Destination names could be constructed from templates. An example would be a destination name involving a user name or product id. Although the destination name in this case is of high cardinality, the underlying template is of low cardinality and can be effectively used for grouping and aggregation. 
                /// 
                /// - Example: `/customers/{customerId}`
                public var template: Self.Key<String> { .init(name: OTelAttributes.messaging.destination.template) }
        
                /// `messaging.destination.temporary`: A boolean that is true if the message destination is temporary and might not exist anymore after messages are processed.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                public var temporary: Self.Key<Bool> { .init(name: OTelAttributes.messaging.destination.temporary) }
            }
        
            /// `messaging.destination.partition` namespace
            public var partition: PartitionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct PartitionAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.destination.partition.id`: The identifier of the partition messages are sent to or received from, unique within the `messaging.destination.name`. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `1`
                    public var id: Self.Key<String> { .init(name: OTelAttributes.messaging.destination.partition.id) }
                }
            
            
            }
        
            /// `messaging.destination.subscription` namespace
            public var subscription: SubscriptionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct SubscriptionAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.destination.subscription.name`: The name of the destination subscription from which a message is consumed.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.destination.subscription.name` is applicable and what it means in the context of that system. 
                    /// 
                    /// - Example: `subscription-a`
                    public var name: Self.Key<String> { .init(name: OTelAttributes.messaging.destination.subscription.name) }
                }
            
            
            }
        }
    
        /// `messaging.destination_publish` namespace
        public var destination_publish: DestinationPublishAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DestinationPublishAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.destination_publish.anonymous`: Deprecated, no replacement at this time.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                @available(*, deprecated, message: "No replacement at this time.")
                public var anonymous: Self.Key<Bool> { .init(name: OTelAttributes.messaging.destination_publish.anonymous) }
        
                /// `messaging.destination_publish.name`: Deprecated, no replacement at this time.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `MyQueue`
                ///     - `MyTopic`
                @available(*, deprecated, message: "No replacement at this time.")
                public var name: Self.Key<String> { .init(name: OTelAttributes.messaging.destination_publish.name) }
            }
        
        
        }
    
        /// `messaging.eventhubs` namespace
        public var eventhubs: EventhubsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct EventhubsAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `messaging.eventhubs.consumer` namespace
            public var consumer: ConsumerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ConsumerAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.eventhubs.consumer.group`: Deprecated, use `messaging.consumer.group.name` instead. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `$Default`
                    @available(*, deprecated, message: "Replaced by `messaging.consumer.group.name`.")
                    public var group: Self.Key<String> { .init(name: OTelAttributes.messaging.eventhubs.consumer.group) }
                }
            
            
            }
        
            /// `messaging.eventhubs.message` namespace
            public var message: MessageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct MessageAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.eventhubs.message.enqueued_time`: The UTC epoch seconds at which the message has been accepted and stored in the entity. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `1701393730`
                    public var enqueued_time: Self.Key<Int> { .init(name: OTelAttributes.messaging.eventhubs.message.enqueued_time) }
                }
            
            
            }
        }
    
        /// `messaging.gcp_pubsub` namespace
        public var gcp_pubsub: GcpPubsubAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GcpPubsubAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `messaging.gcp_pubsub.message` namespace
            public var message: MessageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct MessageAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.gcp_pubsub.message.ack_deadline`: The ack deadline in seconds set for the modify ack deadline request. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `10`
                    public var ack_deadline: Self.Key<Int> { .init(name: OTelAttributes.messaging.gcp_pubsub.message.ack_deadline) }
            
                    /// `messaging.gcp_pubsub.message.ack_id`: The ack id for a given message. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `ack_id`
                    public var ack_id: Self.Key<String> { .init(name: OTelAttributes.messaging.gcp_pubsub.message.ack_id) }
            
                    /// `messaging.gcp_pubsub.message.delivery_attempt`: The delivery attempt for a given message. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `2`
                    public var delivery_attempt: Self.Key<Int> { .init(name: OTelAttributes.messaging.gcp_pubsub.message.delivery_attempt) }
            
                    /// `messaging.gcp_pubsub.message.ordering_key`: The ordering key for a given message. If the attribute is not present, the message does not have an ordering key. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `ordering_key`
                    public var ordering_key: Self.Key<String> { .init(name: OTelAttributes.messaging.gcp_pubsub.message.ordering_key) }
                }
            
            
            }
        }
    
        /// `messaging.kafka` namespace
        public var kafka: KafkaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct KafkaAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.kafka.offset`: The offset of a record in the corresponding Kafka partition. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `42`
                public var offset: Self.Key<Int> { .init(name: OTelAttributes.messaging.kafka.offset) }
            }
        
            /// `messaging.kafka.consumer` namespace
            public var consumer: ConsumerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ConsumerAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.kafka.consumer.group`: Deprecated, use `messaging.consumer.group.name` instead. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `my-group`
                    @available(*, deprecated, message: "Replaced by `messaging.consumer.group.name`.")
                    public var group: Self.Key<String> { .init(name: OTelAttributes.messaging.kafka.consumer.group) }
                }
            
            
            }
        
            /// `messaging.kafka.destination` namespace
            public var destination: DestinationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct DestinationAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.kafka.destination.partition`: Deprecated, use `messaging.destination.partition.id` instead. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `2`
                    @available(*, deprecated, message: "Replaced by `messaging.destination.partition.id`.")
                    public var partition: Self.Key<Int> { .init(name: OTelAttributes.messaging.kafka.destination.partition) }
                }
            
            
            }
        
            /// `messaging.kafka.message` namespace
            public var message: MessageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct MessageAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.kafka.message.key`: Message keys in Kafka are used for grouping alike messages to ensure they're processed on the same partition. They differ from `messaging.message.id` in that they're not unique. If the key is `null`, the attribute MUST NOT be set. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// If the key type is not string, it's string representation has to be supplied for the attribute. If the key has no unambiguous, canonical string form, don't include its value. 
                    /// 
                    /// - Example: `myKey`
                    public var key: Self.Key<String> { .init(name: OTelAttributes.messaging.kafka.message.key) }
            
                    /// `messaging.kafka.message.offset`: Deprecated, use `messaging.kafka.offset` instead. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `42`
                    @available(*, deprecated, message: "Replaced by `messaging.kafka.offset`.")
                    public var offset: Self.Key<Int> { .init(name: OTelAttributes.messaging.kafka.message.offset) }
            
                    /// `messaging.kafka.message.tombstone`: A boolean that is true if the message is a tombstone.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: boolean
                    public var tombstone: Self.Key<Bool> { .init(name: OTelAttributes.messaging.kafka.message.tombstone) }
                }
            
            
            }
        }
    
        /// `messaging.message` namespace
        public var message: MessageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct MessageAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.message.conversation_id`: The conversation ID identifying the conversation to which the message belongs, represented as a string. Sometimes called "Correlation ID". 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `MyConversationId`
                public var conversation_id: Self.Key<String> { .init(name: OTelAttributes.messaging.message.conversation_id) }
        
                /// `messaging.message.id`: A value used by the messaging system as an identifier for the message, represented as a string.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `452a7c7c7c7048c2f887f61572b18fc2`
                public var id: Self.Key<String> { .init(name: OTelAttributes.messaging.message.id) }
            }
        
            /// `messaging.message.body` namespace
            public var body: BodyAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct BodyAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.message.body.size`: The size of the message body in bytes. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// This can refer to both the compressed or uncompressed body size. If both sizes are known, the uncompressed body size should be used. 
                    /// 
                    /// - Example: `1439`
                    public var size: Self.Key<Int> { .init(name: OTelAttributes.messaging.message.body.size) }
                }
            
            
            }
        
            /// `messaging.message.envelope` namespace
            public var envelope: EnvelopeAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct EnvelopeAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.message.envelope.size`: The size of the message body and metadata in bytes. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// This can refer to both the compressed or uncompressed size. If both sizes are known, the uncompressed size should be used. 
                    /// 
                    /// - Example: `2738`
                    public var size: Self.Key<Int> { .init(name: OTelAttributes.messaging.message.envelope.size) }
                }
            
            
            }
        }
    
        /// `messaging.operation` namespace
        public var operation: OperationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct OperationAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.operation.name`: The system-specific name of the messaging operation. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `ack`
                ///     - `nack`
                ///     - `send`
                public var name: Self.Key<String> { .init(name: OTelAttributes.messaging.operation.name) }
        
                /// `messaging.operation.type`: A string identifying the type of the messaging operation. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `create`: A message is created. "Create" spans always refer to a single message and are used to provide a unique creation context for messages in batch sending scenarios.
                ///     - `send`: One or more messages are provided for sending to an intermediary. If a single message is sent, the context of the "Send" span can be used as the creation context and no "Create" span needs to be created.
                ///     - `receive`: One or more messages are requested by a consumer. This operation refers to pull-based scenarios, where consumers explicitly call methods of messaging SDKs to receive messages.
                ///     - `process`: One or more messages are processed by a consumer.
                ///     - `settle`: One or more messages are settled.
                ///     - `deliver`: Deprecated. Use `process` instead.
                ///     - `publish`: Deprecated. Use `send` instead.
                /// 
                /// If a custom value is used, it MUST be of low cardinality.
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.messaging.operation.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `create`: A message is created. "Create" spans always refer to a single message and are used to provide a unique creation context for messages in batch sending scenarios.
                    case create = "create"
                    /// `send`: One or more messages are provided for sending to an intermediary. If a single message is sent, the context of the "Send" span can be used as the creation context and no "Create" span needs to be created.
                    case send = "send"
                    /// `receive`: One or more messages are requested by a consumer. This operation refers to pull-based scenarios, where consumers explicitly call methods of messaging SDKs to receive messages.
                    case receive = "receive"
                    /// `process`: One or more messages are processed by a consumer.
                    case process = "process"
                    /// `settle`: One or more messages are settled.
                    case settle = "settle"
                    /// `deliver`: Deprecated. Use `process` instead.
                    @available(*, deprecated, message: "Replaced by `process`.")
                    case deliver = "deliver"
                    /// `publish`: Deprecated. Use `send` instead.
                    @available(*, deprecated, message: "Replaced by `send`.")
                    case publish = "publish"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `messaging.rabbitmq` namespace
        public var rabbitmq: RabbitmqAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RabbitmqAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `messaging.rabbitmq.destination` namespace
            public var destination: DestinationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct DestinationAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.rabbitmq.destination.routing_key`: RabbitMQ message routing key. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `myKey`
                    public var routing_key: Self.Key<String> { .init(name: OTelAttributes.messaging.rabbitmq.destination.routing_key) }
                }
            
            
            }
        
            /// `messaging.rabbitmq.message` namespace
            public var message: MessageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct MessageAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.rabbitmq.message.delivery_tag`: RabbitMQ message delivery tag 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `123`
                    public var delivery_tag: Self.Key<Int> { .init(name: OTelAttributes.messaging.rabbitmq.message.delivery_tag) }
                }
            
            
            }
        }
    
        /// `messaging.rocketmq` namespace
        public var rocketmq: RocketmqAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RocketmqAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.rocketmq.client_group`: Deprecated, use `messaging.consumer.group.name` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `myConsumerGroup`
                @available(*, deprecated, message: "Replaced by `messaging.consumer.group.name` on the consumer spans. No replacement for producer spans.")
                public var client_group: Self.Key<String> { .init(name: OTelAttributes.messaging.rocketmq.client_group) }
        
                /// `messaging.rocketmq.consumption_model`: Model of message consumption. This only applies to consumer spans. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `clustering`: Clustering consumption model
                ///     - `broadcasting`: Broadcasting consumption model
                public var consumption_model: Self.Key<Consumption_ModelEnum> { .init(name: OTelAttributes.messaging.rocketmq.consumption_model) }
                
                public enum Consumption_ModelEnum: String, SpanAttributeConvertible {
                    /// `clustering`: Clustering consumption model
                    case clustering = "clustering"
                    /// `broadcasting`: Broadcasting consumption model
                    case broadcasting = "broadcasting"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `messaging.rocketmq.namespace`: Namespace of RocketMQ resources, resources in different namespaces are individual. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `myNamespace`
                public var namespace: Self.Key<String> { .init(name: OTelAttributes.messaging.rocketmq.namespace) }
            }
        
            /// `messaging.rocketmq.message` namespace
            public var message: MessageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct MessageAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.rocketmq.message.delay_time_level`: The delay time level for delay message, which determines the message delay time. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `3`
                    public var delay_time_level: Self.Key<Int> { .init(name: OTelAttributes.messaging.rocketmq.message.delay_time_level) }
            
                    /// `messaging.rocketmq.message.delivery_timestamp`: The timestamp in milliseconds that the delay message is expected to be delivered to consumer. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `1665987217045`
                    public var delivery_timestamp: Self.Key<Int> { .init(name: OTelAttributes.messaging.rocketmq.message.delivery_timestamp) }
            
                    /// `messaging.rocketmq.message.group`: It is essential for FIFO message. Messages that belong to the same message group are always processed one by one within the same consumer group. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `myMessageGroup`
                    public var group: Self.Key<String> { .init(name: OTelAttributes.messaging.rocketmq.message.group) }
            
                    /// `messaging.rocketmq.message.keys`: Key(s) of message, another way to mark message besides message id. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: stringArray
                    public var keys: Self.Key<[String]> { .init(name: OTelAttributes.messaging.rocketmq.message.keys) }
            
                    /// `messaging.rocketmq.message.tag`: The secondary classifier of message besides topic. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `tagA`
                    public var tag: Self.Key<String> { .init(name: OTelAttributes.messaging.rocketmq.message.tag) }
            
                    /// `messaging.rocketmq.message.type`: Type of message. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `normal`: Normal message
                    ///     - `fifo`: FIFO message
                    ///     - `delay`: Delay message
                    ///     - `transaction`: Transaction message
                    public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.messaging.rocketmq.message.type) }
                    
                    public enum TypeEnum: String, SpanAttributeConvertible {
                        /// `normal`: Normal message
                        case normal = "normal"
                        /// `fifo`: FIFO message
                        case fifo = "fifo"
                        /// `delay`: Delay message
                        case delay = "delay"
                        /// `transaction`: Transaction message
                        case transaction = "transaction"
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        }
    
        /// `messaging.servicebus` namespace
        public var servicebus: ServicebusAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ServicebusAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `messaging.servicebus.disposition_status`: Describes the [settlement type](https://learn.microsoft.com/azure/service-bus-messaging/message-transfers-locks-settlement#peeklock). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `complete`: Message is completed
                ///     - `abandon`: Message is abandoned
                ///     - `dead_letter`: Message is sent to dead letter queue
                ///     - `defer`: Message is deferred
                public var disposition_status: Self.Key<Disposition_StatusEnum> { .init(name: OTelAttributes.messaging.servicebus.disposition_status) }
                
                public enum Disposition_StatusEnum: String, SpanAttributeConvertible {
                    /// `complete`: Message is completed
                    case complete = "complete"
                    /// `abandon`: Message is abandoned
                    case abandon = "abandon"
                    /// `dead_letter`: Message is sent to dead letter queue
                    case dead_letter = "dead_letter"
                    /// `defer`: Message is deferred
                    case `defer` = "defer"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `messaging.servicebus.destination` namespace
            public var destination: DestinationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct DestinationAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.servicebus.destination.subscription_name`: Deprecated, use `messaging.destination.subscription.name` instead. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `subscription-a`
                    @available(*, deprecated, message: "Replaced by `messaging.destination.subscription.name`.")
                    public var subscription_name: Self.Key<String> { .init(name: OTelAttributes.messaging.servicebus.destination.subscription_name) }
                }
            
            
            }
        
            /// `messaging.servicebus.message` namespace
            public var message: MessageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct MessageAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `messaging.servicebus.message.delivery_count`: Number of deliveries that have been attempted for this message. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `2`
                    public var delivery_count: Self.Key<Int> { .init(name: OTelAttributes.messaging.servicebus.message.delivery_count) }
            
                    /// `messaging.servicebus.message.enqueued_time`: The UTC epoch seconds at which the message has been accepted and stored in the entity. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `1701393730`
                    public var enqueued_time: Self.Key<Int> { .init(name: OTelAttributes.messaging.servicebus.message.enqueued_time) }
                }
            
            
            }
        }
    }
}