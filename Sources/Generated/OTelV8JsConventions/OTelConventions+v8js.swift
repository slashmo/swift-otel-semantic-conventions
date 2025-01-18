// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `v8js` namespace
    public enum v8js {
    
    
        /// `v8js.gc` namespace
        public enum gc {
            /// `v8js.gc.type`: The type of garbage collection.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `major`: Major (Mark Sweep Compact).
            ///     - `minor`: Minor (Scavenge).
            ///     - `incremental`: Incremental (Incremental Marking).
            ///     - `weakcb`: Weak Callbacks (Process Weak Callbacks).
            public static let type = "v8js.gc.type"
        
        
        }
    
        /// `v8js.heap` namespace
        public enum heap {
        
        
            /// `v8js.heap.space` namespace
            public enum space {
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
                public static let name = "v8js.heap.space.name"
            
            
            }
        }
    }
}