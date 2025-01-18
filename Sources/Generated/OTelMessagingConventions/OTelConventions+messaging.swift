// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `messaging` namespace
    public enum messaging {
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
        public static let client_id = "messaging.client_id"
    
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
        public static let _operation = "messaging.operation"
    
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
        public static let system = "messaging.system"
    
        /// `messaging.batch` namespace
        public enum batch {
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
            public static let message_count = "messaging.batch.message_count"
        
        
        }
    
        /// `messaging.client` namespace
        public enum client {
            /// `messaging.client.id`: A unique identifier for the client that consumes or produces a message. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `client-5`
            ///     - `myhost@8742@s8083jm`
            public static let id = "messaging.client.id"
        
        
        }
    
        /// `messaging.consumer` namespace
        public enum consumer {
        
        
            /// `messaging.consumer.group` namespace
            public enum group {
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
                public static let name = "messaging.consumer.group.name"
            
            
            }
        }
    
        /// `messaging.destination` namespace
        public enum destination {
            /// `messaging.destination.anonymous`: A boolean that is true if the message destination is anonymous (could be unnamed or have auto-generated name).
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            public static let anonymous = "messaging.destination.anonymous"
        
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
            public static let name = "messaging.destination.name"
        
            /// `messaging.destination.template`: Low cardinality representation of the messaging destination name
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Destination names could be constructed from templates. An example would be a destination name involving a user name or product id. Although the destination name in this case is of high cardinality, the underlying template is of low cardinality and can be effectively used for grouping and aggregation. 
            /// 
            /// - Example: `/customers/{customerId}`
            public static let template = "messaging.destination.template"
        
            /// `messaging.destination.temporary`: A boolean that is true if the message destination is temporary and might not exist anymore after messages are processed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            public static let temporary = "messaging.destination.temporary"
        
            /// `messaging.destination.partition` namespace
            public enum partition {
                /// `messaging.destination.partition.id`: The identifier of the partition messages are sent to or received from, unique within the `messaging.destination.name`. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `1`
                public static let id = "messaging.destination.partition.id"
            
            
            }
        
            /// `messaging.destination.subscription` namespace
            public enum subscription {
                /// `messaging.destination.subscription.name`: The name of the destination subscription from which a message is consumed.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.destination.subscription.name` is applicable and what it means in the context of that system. 
                /// 
                /// - Example: `subscription-a`
                public static let name = "messaging.destination.subscription.name"
            
            
            }
        }
    
        /// `messaging.destination_publish` namespace
        public enum destination_publish {
            /// `messaging.destination_publish.anonymous`: Deprecated, no replacement at this time.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            @available(*, deprecated, message: "No replacement at this time.")
            public static let anonymous = "messaging.destination_publish.anonymous"
        
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
            public static let name = "messaging.destination_publish.name"
        
        
        }
    
        /// `messaging.eventhubs` namespace
        public enum eventhubs {
        
        
            /// `messaging.eventhubs.consumer` namespace
            public enum consumer {
                /// `messaging.eventhubs.consumer.group`: Deprecated, use `messaging.consumer.group.name` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `$Default`
                @available(*, deprecated, message: "Replaced by `messaging.consumer.group.name`.")
                public static let group = "messaging.eventhubs.consumer.group"
            
            
            }
        
            /// `messaging.eventhubs.message` namespace
            public enum message {
                /// `messaging.eventhubs.message.enqueued_time`: The UTC epoch seconds at which the message has been accepted and stored in the entity. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1701393730`
                public static let enqueued_time = "messaging.eventhubs.message.enqueued_time"
            
            
            }
        }
    
        /// `messaging.gcp_pubsub` namespace
        public enum gcp_pubsub {
        
        
            /// `messaging.gcp_pubsub.message` namespace
            public enum message {
                /// `messaging.gcp_pubsub.message.ack_deadline`: The ack deadline in seconds set for the modify ack deadline request. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `10`
                public static let ack_deadline = "messaging.gcp_pubsub.message.ack_deadline"
            
                /// `messaging.gcp_pubsub.message.ack_id`: The ack id for a given message. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `ack_id`
                public static let ack_id = "messaging.gcp_pubsub.message.ack_id"
            
                /// `messaging.gcp_pubsub.message.delivery_attempt`: The delivery attempt for a given message. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `2`
                public static let delivery_attempt = "messaging.gcp_pubsub.message.delivery_attempt"
            
                /// `messaging.gcp_pubsub.message.ordering_key`: The ordering key for a given message. If the attribute is not present, the message does not have an ordering key. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `ordering_key`
                public static let ordering_key = "messaging.gcp_pubsub.message.ordering_key"
            
            
            }
        }
    
        /// `messaging.kafka` namespace
        public enum kafka {
            /// `messaging.kafka.offset`: The offset of a record in the corresponding Kafka partition. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `42`
            public static let offset = "messaging.kafka.offset"
        
            /// `messaging.kafka.consumer` namespace
            public enum consumer {
                /// `messaging.kafka.consumer.group`: Deprecated, use `messaging.consumer.group.name` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `my-group`
                @available(*, deprecated, message: "Replaced by `messaging.consumer.group.name`.")
                public static let group = "messaging.kafka.consumer.group"
            
            
            }
        
            /// `messaging.kafka.destination` namespace
            public enum destination {
                /// `messaging.kafka.destination.partition`: Deprecated, use `messaging.destination.partition.id` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `2`
                @available(*, deprecated, message: "Replaced by `messaging.destination.partition.id`.")
                public static let partition = "messaging.kafka.destination.partition"
            
            
            }
        
            /// `messaging.kafka.message` namespace
            public enum message {
                /// `messaging.kafka.message.key`: Message keys in Kafka are used for grouping alike messages to ensure they're processed on the same partition. They differ from `messaging.message.id` in that they're not unique. If the key is `null`, the attribute MUST NOT be set. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// If the key type is not string, it's string representation has to be supplied for the attribute. If the key has no unambiguous, canonical string form, don't include its value. 
                /// 
                /// - Example: `myKey`
                public static let key = "messaging.kafka.message.key"
            
                /// `messaging.kafka.message.offset`: Deprecated, use `messaging.kafka.offset` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `42`
                @available(*, deprecated, message: "Replaced by `messaging.kafka.offset`.")
                public static let offset = "messaging.kafka.message.offset"
            
                /// `messaging.kafka.message.tombstone`: A boolean that is true if the message is a tombstone.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                public static let tombstone = "messaging.kafka.message.tombstone"
            
            
            }
        }
    
        /// `messaging.message` namespace
        public enum message {
            /// `messaging.message.conversation_id`: The conversation ID identifying the conversation to which the message belongs, represented as a string. Sometimes called "Correlation ID". 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `MyConversationId`
            public static let conversation_id = "messaging.message.conversation_id"
        
            /// `messaging.message.id`: A value used by the messaging system as an identifier for the message, represented as a string.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `452a7c7c7c7048c2f887f61572b18fc2`
            public static let id = "messaging.message.id"
        
            /// `messaging.message.body` namespace
            public enum body {
                /// `messaging.message.body.size`: The size of the message body in bytes. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// This can refer to both the compressed or uncompressed body size. If both sizes are known, the uncompressed body size should be used. 
                /// 
                /// - Example: `1439`
                public static let size = "messaging.message.body.size"
            
            
            }
        
            /// `messaging.message.envelope` namespace
            public enum envelope {
                /// `messaging.message.envelope.size`: The size of the message body and metadata in bytes. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// This can refer to both the compressed or uncompressed size. If both sizes are known, the uncompressed size should be used. 
                /// 
                /// - Example: `2738`
                public static let size = "messaging.message.envelope.size"
            
            
            }
        }
    
        /// `messaging.operation` namespace
        public enum operation {
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
            public static let name = "messaging.operation.name"
        
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
            public static let type = "messaging.operation.type"
        
        
        }
    
        /// `messaging.rabbitmq` namespace
        public enum rabbitmq {
        
        
            /// `messaging.rabbitmq.destination` namespace
            public enum destination {
                /// `messaging.rabbitmq.destination.routing_key`: RabbitMQ message routing key. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `myKey`
                public static let routing_key = "messaging.rabbitmq.destination.routing_key"
            
            
            }
        
            /// `messaging.rabbitmq.message` namespace
            public enum message {
                /// `messaging.rabbitmq.message.delivery_tag`: RabbitMQ message delivery tag 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `123`
                public static let delivery_tag = "messaging.rabbitmq.message.delivery_tag"
            
            
            }
        }
    
        /// `messaging.rocketmq` namespace
        public enum rocketmq {
            /// `messaging.rocketmq.client_group`: Deprecated, use `messaging.consumer.group.name` instead. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `myConsumerGroup`
            @available(*, deprecated, message: "Replaced by `messaging.consumer.group.name` on the consumer spans. No replacement for producer spans.")
            public static let client_group = "messaging.rocketmq.client_group"
        
            /// `messaging.rocketmq.consumption_model`: Model of message consumption. This only applies to consumer spans. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `clustering`: Clustering consumption model
            ///     - `broadcasting`: Broadcasting consumption model
            public static let consumption_model = "messaging.rocketmq.consumption_model"
        
            /// `messaging.rocketmq.namespace`: Namespace of RocketMQ resources, resources in different namespaces are individual. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `myNamespace`
            public static let namespace = "messaging.rocketmq.namespace"
        
            /// `messaging.rocketmq.message` namespace
            public enum message {
                /// `messaging.rocketmq.message.delay_time_level`: The delay time level for delay message, which determines the message delay time. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `3`
                public static let delay_time_level = "messaging.rocketmq.message.delay_time_level"
            
                /// `messaging.rocketmq.message.delivery_timestamp`: The timestamp in milliseconds that the delay message is expected to be delivered to consumer. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1665987217045`
                public static let delivery_timestamp = "messaging.rocketmq.message.delivery_timestamp"
            
                /// `messaging.rocketmq.message.group`: It is essential for FIFO message. Messages that belong to the same message group are always processed one by one within the same consumer group. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `myMessageGroup`
                public static let group = "messaging.rocketmq.message.group"
            
                /// `messaging.rocketmq.message.keys`: Key(s) of message, another way to mark message besides message id. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                public static let keys = "messaging.rocketmq.message.keys"
            
                /// `messaging.rocketmq.message.tag`: The secondary classifier of message besides topic. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `tagA`
                public static let tag = "messaging.rocketmq.message.tag"
            
                /// `messaging.rocketmq.message.type`: Type of message. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `normal`: Normal message
                ///     - `fifo`: FIFO message
                ///     - `delay`: Delay message
                ///     - `transaction`: Transaction message
                public static let type = "messaging.rocketmq.message.type"
            
            
            }
        }
    
        /// `messaging.servicebus` namespace
        public enum servicebus {
            /// `messaging.servicebus.disposition_status`: Describes the [settlement type](https://learn.microsoft.com/azure/service-bus-messaging/message-transfers-locks-settlement#peeklock). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `complete`: Message is completed
            ///     - `abandon`: Message is abandoned
            ///     - `dead_letter`: Message is sent to dead letter queue
            ///     - `defer`: Message is deferred
            public static let disposition_status = "messaging.servicebus.disposition_status"
        
            /// `messaging.servicebus.destination` namespace
            public enum destination {
                /// `messaging.servicebus.destination.subscription_name`: Deprecated, use `messaging.destination.subscription.name` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `subscription-a`
                @available(*, deprecated, message: "Replaced by `messaging.destination.subscription.name`.")
                public static let subscription_name = "messaging.servicebus.destination.subscription_name"
            
            
            }
        
            /// `messaging.servicebus.message` namespace
            public enum message {
                /// `messaging.servicebus.message.delivery_count`: Number of deliveries that have been attempted for this message. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `2`
                public static let delivery_count = "messaging.servicebus.message.delivery_count"
            
                /// `messaging.servicebus.message.enqueued_time`: The UTC epoch seconds at which the message has been accepted and stored in the entity. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1701393730`
                public static let enqueued_time = "messaging.servicebus.message.enqueued_time"
            
            
            }
        }
    }
}