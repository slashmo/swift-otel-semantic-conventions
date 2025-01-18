// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `v8js` namespace
    public var v8js: V8JsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct V8JsAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `v8js.gc` namespace
        public var gc: GcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `v8js.gc.type`: The type of garbage collection.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `major`: Major (Mark Sweep Compact).
                ///     - `minor`: Minor (Scavenge).
                ///     - `incremental`: Incremental (Incremental Marking).
                ///     - `weakcb`: Weak Callbacks (Process Weak Callbacks).
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.v8js.gc.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `major`: Major (Mark Sweep Compact).
                    case major = "major"
                    /// `minor`: Minor (Scavenge).
                    case minor = "minor"
                    /// `incremental`: Incremental (Incremental Marking).
                    case incremental = "incremental"
                    /// `weakcb`: Weak Callbacks (Process Weak Callbacks).
                    case weakcb = "weakcb"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `v8js.heap` namespace
        public var heap: HeapAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct HeapAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `v8js.heap.space` namespace
            public var space: SpaceAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct SpaceAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `v8js.heap.space.name`: The name of the space type of heap memory.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `new_space`: New memory space.
                    ///     - `old_space`: Old memory space.
                    ///     - `code_space`: Code memory space.
                    ///     - `map_space`: Map memory space.
                    ///     - `large_object_space`: Large object memory space.
                    /// 
                    /// Value can be retrieved from value `space_name` of [`v8.getHeapSpaceStatistics()`](https://nodejs.org/api/v8.html#v8getheapspacestatistics) 
                    public var name: Self.Key<NameEnum> { .init(name: OTelAttributes.v8js.heap.space.name) }
                    
                    public enum NameEnum: String, SpanAttributeConvertible {
                        /// `new_space`: New memory space.
                        case new_space = "new_space"
                        /// `old_space`: Old memory space.
                        case old_space = "old_space"
                        /// `code_space`: Code memory space.
                        case code_space = "code_space"
                        /// `map_space`: Map memory space.
                        case map_space = "map_space"
                        /// `large_object_space`: Large object memory space.
                        case large_object_space = "large_object_space"
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        }
    }
}