// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `log` namespace
    public enum log {
        /// `log.iostream`: The stream associated with the log. See below for a list of well-known values. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `stdout`: Logs from stdout stream
        ///     - `stderr`: Events from stderr stream
        public static let iostream = "log.iostream"
    
        /// `log.file` namespace
        public enum file {
            /// `log.file.name`: The basename of the file. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `audit.log`
            public static let name = "log.file.name"
        
            /// `log.file.name_resolved`: The basename of the file, with symlinks resolved. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `uuid.log`
            public static let name_resolved = "log.file.name_resolved"
        
            /// `log.file.path`: The full path to the file. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `/var/log/mysql/audit.log`
            public static let path = "log.file.path"
        
            /// `log.file.path_resolved`: The full path to the file, with symlinks resolved. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `/var/lib/docker/uuid.log`
            public static let path_resolved = "log.file.path_resolved"
        
        
        }
    
        /// `log.record` namespace
        public enum record {
            /// `log.record.original`: The complete original Log Record. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This value MAY be added when processing a Log Record which was originally transmitted as a string or equivalent data type AND the Body field of the Log Record does not contain the same value. (e.g. a syslog or a log record read from a file.) 
            /// 
            /// - Examples:
            ///     - `77 <86>1 2015-08-06T21:58:59.694Z 192.168.2.133 inactive - - - Something happened`
            ///     - `[INFO] 8/3/24 12:34:56 Something happened`
            public static let original = "log.record.original"
        
            /// `log.record.uid`: A unique identifier for the Log Record. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// If an id is provided, other log records with the same id will be considered duplicates and can be removed safely. This means, that two distinguishable log records MUST have different values. The id MAY be an [Universally Unique Lexicographically Sortable Identifier (ULID)](https://github.com/ulid/spec), but other identifiers (e.g. UUID) may be used as needed. 
            /// 
            /// - Example: `01ARZ3NDEKTSV4RRFFQ69G5FAV`
            public static let uid = "log.record.uid"
        
        
        }
    }
}