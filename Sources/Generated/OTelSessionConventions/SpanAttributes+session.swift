// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `session` namespace
    public var session: SessionAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct SessionAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `session.id`: A unique id to identify a session.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `00112233-4455-6677-8899-aabbccddeeff`
            public var id: Self.Key<String> { .init(name: OTelConventions.session.id) }
    
            /// `session.previous_id`: The previous `session.id` for this user, when known.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `00112233-4455-6677-8899-aabbccddeeff`
            public var previous_id: Self.Key<String> { .init(name: OTelConventions.session.previous_id) }
        }
    
    
    }
}