// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `system` namespace
    public enum system {
        /// `system.device`: The device identifier
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `(identifier)`
        public static let device = "system.device"
    
        /// `system.cpu` namespace
        public enum cpu {
            /// `system.cpu.logical_number`: The logical CPU number [0..n-1]
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `1`
            public static let logical_number = "system.cpu.logical_number"
        
            /// `system.cpu.state`: Deprecated, use `cpu.mode` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `user`
            ///     - `system`
            ///     - `nice`
            ///     - `idle`
            ///     - `iowait`
            ///     - `interrupt`
            ///     - `steal`
            /// 
            /// - Examples:
            ///     - `idle`
            ///     - `interrupt`
            @available(*, deprecated, message: "Replaced by `cpu.mode`")
            public static let state = "system.cpu.state"
        
        
        }
    
        /// `system.filesystem` namespace
        public enum filesystem {
            /// `system.filesystem.mode`: The filesystem mode
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `rw, ro`
            public static let mode = "system.filesystem.mode"
        
            /// `system.filesystem.mountpoint`: The filesystem mount path
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `/mnt/data`
            public static let mountpoint = "system.filesystem.mountpoint"
        
            /// `system.filesystem.state`: The filesystem state
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `used`
            ///     - `free`
            ///     - `reserved`
            /// 
            /// - Example: `used`
            public static let state = "system.filesystem.state"
        
            /// `system.filesystem.type`: The filesystem type
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `fat32`
            ///     - `exfat`
            ///     - `ntfs`
            ///     - `refs`
            ///     - `hfsplus`
            ///     - `ext4`
            /// 
            /// - Example: `ext4`
            public static let type = "system.filesystem.type"
        
        
        }
    
        /// `system.memory` namespace
        public enum memory {
            /// `system.memory.state`: The memory state
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `used`
            ///     - `free`
            ///     - `shared`
            ///     - `buffers`
            ///     - `cached`
            /// 
            /// - Examples:
            ///     - `free`
            ///     - `cached`
            public static let state = "system.memory.state"
        
        
        }
    
        /// `system.network` namespace
        public enum network {
            /// `system.network.state`: A stateless protocol MUST NOT set this attribute
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `close`
            ///     - `close_wait`
            ///     - `closing`
            ///     - `delete`
            ///     - `established`
            ///     - `fin_wait_1`
            ///     - `fin_wait_2`
            ///     - `last_ack`
            ///     - `listen`
            ///     - `syn_recv`
            ///     - `syn_sent`
            ///     - `time_wait`
            /// 
            /// - Example: `close_wait`
            public static let state = "system.network.state"
        
        
        }
    
        /// `system.paging` namespace
        public enum paging {
            /// `system.paging.direction`: The paging access direction
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `in`
            ///     - `out`
            /// 
            /// - Example: `in`
            public static let direction = "system.paging.direction"
        
            /// `system.paging.state`: The memory paging state
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `used`
            ///     - `free`
            /// 
            /// - Example: `free`
            public static let state = "system.paging.state"
        
            /// `system.paging.type`: The memory paging type
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `major`
            ///     - `minor`
            /// 
            /// - Example: `minor`
            public static let type = "system.paging.type"
        
        
        }
    
        /// `system.process` namespace
        public enum process {
            /// `system.process.status`: The process state, e.g., [Linux Process State Codes](https://man7.org/linux/man-pages/man1/ps.1.html#PROCESS_STATE_CODES) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `running`
            ///     - `sleeping`
            ///     - `stopped`
            ///     - `defunct`
            /// 
            /// - Example: `running`
            public static let status = "system.process.status"
        
        
        }
    
        /// `system.processes` namespace
        public enum processes {
            /// `system.processes.status`: Deprecated, use `system.process.status` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `running`
            ///     - `sleeping`
            ///     - `stopped`
            ///     - `defunct`
            /// 
            /// - Example: `running`
            @available(*, deprecated, message: "Replaced by `system.process.status`.")
            public static let status = "system.processes.status"
        
        
        }
    }
}