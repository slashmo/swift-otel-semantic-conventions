// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `jvm` namespace
    public enum jvm {
    
    
        /// `jvm.buffer` namespace
        public enum buffer {
        
        
            /// `jvm.buffer.pool` namespace
            public enum pool {
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
                public static let name = "jvm.buffer.pool.name"
            
            
            }
        }
    
        /// `jvm.gc` namespace
        public enum gc {
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
            public static let action = "jvm.gc.action"
        
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
            public static let name = "jvm.gc.name"
        
        
        }
    
        /// `jvm.memory` namespace
        public enum memory {
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
            public static let type = "jvm.memory.type"
        
            /// `jvm.memory.pool` namespace
            public enum pool {
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
                public static let name = "jvm.memory.pool.name"
            
            
            }
        }
    
        /// `jvm.thread` namespace
        public enum thread {
            /// `jvm.thread.daemon`: Whether the thread is daemon or not.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: boolean
            public static let daemon = "jvm.thread.daemon"
        
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
            public static let state = "jvm.thread.state"
        
        
        }
    }
}