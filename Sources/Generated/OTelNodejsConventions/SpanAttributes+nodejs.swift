// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `nodejs` namespace
    public var nodejs: NodejsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct NodejsAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `nodejs.eventloop` namespace
        public var eventloop: EventloopAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct EventloopAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `nodejs.eventloop.state`: The state of event loop time.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `active`: Active time.
                ///     - `idle`: Idle time.
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.nodejs.eventloop.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `active`: Active time.
                    case active = "active"
                    /// `idle`: Idle time.
                    case idle = "idle"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}