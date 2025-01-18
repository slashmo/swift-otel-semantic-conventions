// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `file` namespace
    public enum file {
        /// `file.accessed`: Time when the file was last accessed, in ISO 8601 format. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// This attribute might not be supported by some file systems — NFS, FAT32, in embedded OS, etc. 
        /// 
        /// - Example: `2021-01-01T12:00:00Z`
        public static let accessed = "file.accessed"
    
        /// `file.attributes`: Array of file attributes. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: stringArray
        /// 
        /// Attributes names depend on the OS or file system. Here’s a non-exhaustive list of values expected for this attribute: `archive`, `compressed`, `directory`, `encrypted`, `execute`, `hidden`, `immutable`, `journaled`, `read`, `readonly`, `symbolic link`, `system`, `temporary`, `write`. 
        public static let attributes = "file.attributes"
    
        /// `file.changed`: Time when the file attributes or metadata was last changed, in ISO 8601 format. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// `file.changed` captures the time when any of the file's properties or attributes (including the content) are changed, while `file.modified` captures the timestamp when the file content is modified. 
        /// 
        /// - Example: `2021-01-01T12:00:00Z`
        public static let changed = "file.changed"
    
        /// `file.created`: Time when the file was created, in ISO 8601 format. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// This attribute might not be supported by some file systems — NFS, FAT32, in embedded OS, etc. 
        /// 
        /// - Example: `2021-01-01T12:00:00Z`
        public static let created = "file.created"
    
        /// `file.directory`: Directory where the file is located. It should include the drive letter, when appropriate. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `/home/user`
        ///     - `C:\Program Files\MyApp`
        public static let directory = "file.directory"
    
        /// `file.extension`: File extension, excluding the leading dot. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// When the file name has multiple extensions (example.tar.gz), only the last one should be captured ("gz", not "tar.gz"). 
        /// 
        /// - Examples:
        ///     - `png`
        ///     - `gz`
        public static let `extension` = "file.extension"
    
        /// `file.fork_name`: Name of the fork. A fork is additional data associated with a filesystem object. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// On Linux, a resource fork is used to store additional data with a filesystem object. A file always has at least one fork for the data portion, and additional forks may exist. On NTFS, this is analogous to an Alternate Data Stream (ADS), and the default data stream for a file is just called $DATA. Zone.Identifier is commonly used by Windows to track contents downloaded from the Internet. An ADS is typically of the form: C:\path\to\filename.extension:some_fork_name, and some_fork_name is the value that should populate `fork_name`. `filename.extension` should populate `file.name`, and `extension` should populate `file.extension`. The full path, `file.path`, will include the fork name. 
        /// 
        /// - Example: `Zone.Identifer`
        public static let fork_name = "file.fork_name"
    
        /// `file.inode`: Inode representing the file in the filesystem. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `256383`
        public static let inode = "file.inode"
    
        /// `file.mode`: Mode of the file in octal representation. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `0640`
        public static let mode = "file.mode"
    
        /// `file.modified`: Time when the file content was last modified, in ISO 8601 format. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `2021-01-01T12:00:00Z`
        public static let modified = "file.modified"
    
        /// `file.name`: Name of the file including the extension, without the directory. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `example.png`
        public static let name = "file.name"
    
        /// `file.path`: Full path to the file, including the file name. It should include the drive letter, when appropriate. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `/home/alice/example.png`
        ///     - `C:\Program Files\MyApp\myapp.exe`
        public static let path = "file.path"
    
        /// `file.size`: File size in bytes. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        public static let size = "file.size"
    
        /// `file.group` namespace
        public enum group {
            /// `file.group.id`: Primary Group ID (GID) of the file. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1000`
            public static let id = "file.group.id"
        
            /// `file.group.name`: Primary group name of the file. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `users`
            public static let name = "file.group.name"
        
        
        }
    
        /// `file.owner` namespace
        public enum owner {
            /// `file.owner.id`: The user ID (UID) or security identifier (SID) of the file owner. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `1000`
            public static let id = "file.owner.id"
        
            /// `file.owner.name`: Username of the file owner. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `root`
            public static let name = "file.owner.name"
        
        
        }
    
        /// `file.symbolic_link` namespace
        public enum symbolic_link {
            /// `file.symbolic_link.target_path`: Path to the target of a symbolic link. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This attribute is only applicable to symbolic links. 
            /// 
            /// - Example: `/usr/bin/python3`
            public static let target_path = "file.symbolic_link.target_path"
        
        
        }
    }
}