// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `jvm` namespace
    public var jvm: JvmAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct JvmAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `jvm.buffer` namespace
        public var buffer: BufferAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct BufferAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `jvm.buffer.pool` namespace
            public var pool: PoolAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct PoolAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `jvm.buffer.pool.name`: Name of the buffer pool.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// Pool names are generally obtained via [BufferPoolMXBean#getName()](https://docs.oracle.com/en/java/javase/11/docs/api/java.management/java/lang/management/BufferPoolMXBean.html#getName()). 
                    /// 
                    /// - Examples:
                    ///     - `mapped`
                    ///     - `direct`
                    public var name: Self.Key<String> { .init(name: OTelConventions.jvm.buffer.pool.name) }
                }
            
            
            }
        }
    
        /// `jvm.gc` namespace
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
                /// `jvm.gc.action`: Name of the garbage collector action.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// Garbage collector action is generally obtained via [GarbageCollectionNotificationInfo#getGcAction()](https://docs.oracle.com/en/java/javase/11/docs/api/jdk.management/com/sun/management/GarbageCollectionNotificationInfo.html#getGcAction()). 
                /// 
                /// - Examples:
                ///     - `end of minor GC`
                ///     - `end of major GC`
                public var action: Self.Key<String> { .init(name: OTelConventions.jvm.gc.action) }
        
                /// `jvm.gc.name`: Name of the garbage collector.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// Garbage collector name is generally obtained via [GarbageCollectionNotificationInfo#getGcName()](https://docs.oracle.com/en/java/javase/11/docs/api/jdk.management/com/sun/management/GarbageCollectionNotificationInfo.html#getGcName()). 
                /// 
                /// - Examples:
                ///     - `G1 Young Generation`
                ///     - `G1 Old Generation`
                public var name: Self.Key<String> { .init(name: OTelConventions.jvm.gc.name) }
            }
        
        
        }
    
        /// `jvm.memory` namespace
        public var memory: MemoryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct MemoryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `jvm.memory.type`: The type of memory.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: enum
                ///     - `heap`: Heap memory.
                ///     - `non_heap`: Non-heap memory
                /// 
                /// - Examples:
                ///     - `heap`
                ///     - `non_heap`
                public var type: Self.Key<TypeEnum> { .init(name: OTelConventions.jvm.memory.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `heap`: Heap memory.
                    case heap = "heap"
                    /// `non_heap`: Non-heap memory
                    case non_heap = "non_heap"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `jvm.memory.pool` namespace
            public var pool: PoolAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct PoolAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `jvm.memory.pool.name`: Name of the memory pool.
                    /// 
                    /// - Stability: stable
                    /// 
                    /// - Type: string
                    /// 
                    /// Pool names are generally obtained via [MemoryPoolMXBean#getName()](https://docs.oracle.com/en/java/javase/11/docs/api/java.management/java/lang/management/MemoryPoolMXBean.html#getName()). 
                    /// 
                    /// - Examples:
                    ///     - `G1 Old Gen`
                    ///     - `G1 Eden space`
                    ///     - `G1 Survivor Space`
                    public var name: Self.Key<String> { .init(name: OTelConventions.jvm.memory.pool.name) }
                }
            
            
            }
        }
    
        /// `jvm.thread` namespace
        public var thread: ThreadAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ThreadAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `jvm.thread.daemon`: Whether the thread is daemon or not.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: boolean
                public var daemon: Self.Key<Bool> { .init(name: OTelConventions.jvm.thread.daemon) }
        
                /// `jvm.thread.state`: State of the thread.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: enum
                ///     - `new`: A thread that has not yet started is in this state.
                ///     - `runnable`: A thread executing in the Java virtual machine is in this state.
                ///     - `blocked`: A thread that is blocked waiting for a monitor lock is in this state.
                ///     - `waiting`: A thread that is waiting indefinitely for another thread to perform a particular action is in this state.
                ///     - `timed_waiting`: A thread that is waiting for another thread to perform an action for up to a specified waiting time is in this state.
                ///     - `terminated`: A thread that has exited is in this state.
                /// 
                /// - Examples:
                ///     - `runnable`
                ///     - `blocked`
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.jvm.thread.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `new`: A thread that has not yet started is in this state.
                    case new = "new"
                    /// `runnable`: A thread executing in the Java virtual machine is in this state.
                    case runnable = "runnable"
                    /// `blocked`: A thread that is blocked waiting for a monitor lock is in this state.
                    case blocked = "blocked"
                    /// `waiting`: A thread that is waiting indefinitely for another thread to perform a particular action is in this state.
                    case waiting = "waiting"
                    /// `timed_waiting`: A thread that is waiting for another thread to perform an action for up to a specified waiting time is in this state.
                    case timed_waiting = "timed_waiting"
                    /// `terminated`: A thread that has exited is in this state.
                    case terminated = "terminated"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}