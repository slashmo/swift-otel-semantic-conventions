// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `event` namespace
    public var event: EventAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct EventAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `event.name`: Identifies the class / type of event. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Event names are subject to the same rules as [attribute names](/docs/general/attribute-naming.md). Notably, event names are namespaced to avoid collisions and provide a clean separation of semantics for events in separate domains like browser, mobile, and kubernetes. 
            /// 
            /// - Examples:
            ///     - `browser.mouse.click`
            ///     - `device.app.lifecycle`
            public var name: Self.Key<String> { .init(name: OTelConventions.event.name) }
        }
    
    
    }
}