// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `cloudevents` namespace
    public var cloudevents: CloudeventsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct CloudeventsAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `cloudevents.event_id`: The [event_id](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#id) uniquely identifies the event. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `123e4567-e89b-12d3-a456-426614174000`
            ///     - `0001`
            public var event_id: Self.Key<String> { .init(name: OTelAttributes.cloudevents.event_id) }
    
            /// `cloudevents.event_source`: The [source](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#source-1) identifies the context in which an event happened. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `https://github.com/cloudevents`
            ///     - `/cloudevents/spec/pull/123`
            ///     - `my-service`
            public var event_source: Self.Key<String> { .init(name: OTelAttributes.cloudevents.event_source) }
    
            /// `cloudevents.event_spec_version`: The [version of the CloudEvents specification](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#specversion) which the event uses. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1.0`
            public var event_spec_version: Self.Key<String> { .init(name: OTelAttributes.cloudevents.event_spec_version) }
    
            /// `cloudevents.event_subject`: The [subject](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#subject) of the event in the context of the event producer (identified by source). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `mynewfile.jpg`
            public var event_subject: Self.Key<String> { .init(name: OTelAttributes.cloudevents.event_subject) }
    
            /// `cloudevents.event_type`: The [event_type](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#type) contains a value describing the type of event related to the originating occurrence. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `com.github.pull_request.opened`
            ///     - `com.example.object.deleted.v2`
            public var event_type: Self.Key<String> { .init(name: OTelAttributes.cloudevents.event_type) }
        }
    
    
    }
}