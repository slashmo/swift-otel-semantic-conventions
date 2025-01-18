// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `dotnet` namespace
    public var dotnet: DotnetAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct DotnetAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `dotnet.gc` namespace
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
        
            }
        
            /// `dotnet.gc.heap` namespace
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
                    /// `dotnet.gc.heap.generation`: Name of the garbage collector managed heap generation.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `gen0`: Generation 0
                    ///     - `gen1`: Generation 1
                    ///     - `gen2`: Generation 2
                    ///     - `loh`: Large Object Heap
                    ///     - `poh`: Pinned Object Heap
                    /// 
                    /// - Examples:
                    ///     - `gen0`
                    ///     - `gen1`
                    ///     - `gen2`
                    public var generation: Self.Key<GenerationEnum> { .init(name: OTelConventions.dotnet.gc.heap.generation) }
                    
                    public enum GenerationEnum: String, SpanAttributeConvertible {
                        /// `gen0`: Generation 0
                        case gen0 = "gen0"
                        /// `gen1`: Generation 1
                        case gen1 = "gen1"
                        /// `gen2`: Generation 2
                        case gen2 = "gen2"
                        /// `loh`: Large Object Heap
                        case loh = "loh"
                        /// `poh`: Pinned Object Heap
                        case poh = "poh"
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        }
    }
}