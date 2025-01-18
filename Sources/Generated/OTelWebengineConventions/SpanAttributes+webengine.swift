// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `webengine` namespace
    public var webengine: WebengineAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct WebengineAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `webengine.description`: Additional description of the web engine (e.g. detailed version and edition information). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `WildFly Full 21.0.0.Final (WildFly Core 13.0.1.Final) - 2.2.2.Final`
            public var description: Self.Key<String> { .init(name: OTelConventions.webengine.description) }
    
            /// `webengine.name`: The name of the web engine. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `WildFly`
            public var name: Self.Key<String> { .init(name: OTelConventions.webengine.name) }
    
            /// `webengine.version`: The version of the web engine. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `21.0.0`
            public var version: Self.Key<String> { .init(name: OTelConventions.webengine.version) }
        }
    
    
    }
}