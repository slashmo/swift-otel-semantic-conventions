// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `dotnet` namespace
    public enum dotnet {
    
    
        /// `dotnet.gc` namespace
        public enum gc {
        
        
            /// `dotnet.gc.heap` namespace
            public enum heap {
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
                public static let generation = "dotnet.gc.heap.generation"
            
            
            }
        }
    }
}