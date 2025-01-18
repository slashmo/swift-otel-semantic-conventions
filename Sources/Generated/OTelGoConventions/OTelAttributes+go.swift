// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `go` namespace
    public enum go {
    
    
        /// `go.memory` namespace
        public enum memory {
            /// `go.memory.type`: The type of memory.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `stack`: Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
            ///     - `other`: Memory used by the Go runtime, excluding other categories of memory usage described in this enumeration.
            /// 
            /// - Examples:
            ///     - `other`
            ///     - `stack`
            public static let type = "go.memory.type"
        
        
        }
    }
}