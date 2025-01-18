// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `file` namespace
    public var file: FileAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct FileAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `file.accessed`: Time when the file was last accessed, in ISO 8601 format. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This attribute might not be supported by some file systems — NFS, FAT32, in embedded OS, etc. 
            /// 
            /// - Example: `2021-01-01T12:00:00Z`
            public var accessed: Self.Key<String> { .init(name: OTelConventions.file.accessed) }
    
            /// `file.attributes`: Array of file attributes. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            /// 
            /// Attributes names depend on the OS or file system. Here’s a non-exhaustive list of values expected for this attribute: `archive`, `compressed`, `directory`, `encrypted`, `execute`, `hidden`, `immutable`, `journaled`, `read`, `readonly`, `symbolic link`, `system`, `temporary`, `write`. 
            public var attributes: Self.Key<[String]> { .init(name: OTelConventions.file.attributes) }
    
            /// `file.changed`: Time when the file attributes or metadata was last changed, in ISO 8601 format. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// `file.changed` captures the time when any of the file's properties or attributes (including the content) are changed, while `file.modified` captures the timestamp when the file content is modified. 
            /// 
            /// - Example: `2021-01-01T12:00:00Z`
            public var changed: Self.Key<String> { .init(name: OTelConventions.file.changed) }
    
            /// `file.created`: Time when the file was created, in ISO 8601 format. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This attribute might not be supported by some file systems — NFS, FAT32, in embedded OS, etc. 
            /// 
            /// - Example: `2021-01-01T12:00:00Z`
            public var created: Self.Key<String> { .init(name: OTelConventions.file.created) }
    
            /// `file.directory`: Directory where the file is located. It should include the drive letter, when appropriate. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `/home/user`
            ///     - `C:\Program Files\MyApp`
            public var directory: Self.Key<String> { .init(name: OTelConventions.file.directory) }
    
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
            public var `extension`: Self.Key<String> { .init(name: OTelConventions.file.`extension`) }
    
            /// `file.fork_name`: Name of the fork. A fork is additional data associated with a filesystem object. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// On Linux, a resource fork is used to store additional data with a filesystem object. A file always has at least one fork for the data portion, and additional forks may exist. On NTFS, this is analogous to an Alternate Data Stream (ADS), and the default data stream for a file is just called $DATA. Zone.Identifier is commonly used by Windows to track contents downloaded from the Internet. An ADS is typically of the form: C:\path\to\filename.extension:some_fork_name, and some_fork_name is the value that should populate `fork_name`. `filename.extension` should populate `file.name`, and `extension` should populate `file.extension`. The full path, `file.path`, will include the fork name. 
            /// 
            /// - Example: `Zone.Identifer`
            public var fork_name: Self.Key<String> { .init(name: OTelConventions.file.fork_name) }
    
            /// `file.inode`: Inode representing the file in the filesystem. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `256383`
            public var inode: Self.Key<String> { .init(name: OTelConventions.file.inode) }
    
            /// `file.mode`: Mode of the file in octal representation. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `0640`
            public var mode: Self.Key<String> { .init(name: OTelConventions.file.mode) }
    
            /// `file.modified`: Time when the file content was last modified, in ISO 8601 format. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `2021-01-01T12:00:00Z`
            public var modified: Self.Key<String> { .init(name: OTelConventions.file.modified) }
    
            /// `file.name`: Name of the file including the extension, without the directory. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `example.png`
            public var name: Self.Key<String> { .init(name: OTelConventions.file.name) }
    
            /// `file.path`: Full path to the file, including the file name. It should include the drive letter, when appropriate. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `/home/alice/example.png`
            ///     - `C:\Program Files\MyApp\myapp.exe`
            public var path: Self.Key<String> { .init(name: OTelConventions.file.path) }
    
            /// `file.size`: File size in bytes. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            public var size: Self.Key<Int> { .init(name: OTelConventions.file.size) }
        }
    
        /// `file.group` namespace
        public var group: GroupAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GroupAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `file.group.id`: Primary Group ID (GID) of the file. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `1000`
                public var id: Self.Key<String> { .init(name: OTelConventions.file.group.id) }
        
                /// `file.group.name`: Primary group name of the file. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `users`
                public var name: Self.Key<String> { .init(name: OTelConventions.file.group.name) }
            }
        
        
        }
    
        /// `file.owner` namespace
        public var owner: OwnerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct OwnerAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `file.owner.id`: The user ID (UID) or security identifier (SID) of the file owner. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `1000`
                public var id: Self.Key<String> { .init(name: OTelConventions.file.owner.id) }
        
                /// `file.owner.name`: Username of the file owner. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `root`
                public var name: Self.Key<String> { .init(name: OTelConventions.file.owner.name) }
            }
        
        
        }
    
        /// `file.symbolic_link` namespace
        public var symbolic_link: SymbolicLinkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct SymbolicLinkAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `file.symbolic_link.target_path`: Path to the target of a symbolic link. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// This attribute is only applicable to symbolic links. 
                /// 
                /// - Example: `/usr/bin/python3`
                public var target_path: Self.Key<String> { .init(name: OTelConventions.file.symbolic_link.target_path) }
            }
        
        
        }
    }
}