// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `system` namespace
    public var system: SystemAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct SystemAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `system.device`: The device identifier
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `(identifier)`
            public var device: Self.Key<String> { .init(name: OTelConventions.system.device) }
        }
    
        /// `system.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.cpu.logical_number`: The logical CPU number [0..n-1]
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1`
                public var logical_number: Self.Key<Int> { .init(name: OTelConventions.system.cpu.logical_number) }
        
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
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.system.cpu.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `user`
                    case user = "user"
                    /// `system`
                    case system = "system"
                    /// `nice`
                    case nice = "nice"
                    /// `idle`
                    case idle = "idle"
                    /// `iowait`
                    case iowait = "iowait"
                    /// `interrupt`
                    case interrupt = "interrupt"
                    /// `steal`
                    case steal = "steal"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.filesystem` namespace
        public var filesystem: FilesystemAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct FilesystemAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.filesystem.mode`: The filesystem mode
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `rw, ro`
                public var mode: Self.Key<String> { .init(name: OTelConventions.system.filesystem.mode) }
        
                /// `system.filesystem.mountpoint`: The filesystem mount path
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/mnt/data`
                public var mountpoint: Self.Key<String> { .init(name: OTelConventions.system.filesystem.mountpoint) }
        
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
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.system.filesystem.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `used`
                    case used = "used"
                    /// `free`
                    case free = "free"
                    /// `reserved`
                    case reserved = "reserved"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
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
                public var type: Self.Key<TypeEnum> { .init(name: OTelConventions.system.filesystem.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `fat32`
                    case fat32 = "fat32"
                    /// `exfat`
                    case exfat = "exfat"
                    /// `ntfs`
                    case ntfs = "ntfs"
                    /// `refs`
                    case refs = "refs"
                    /// `hfsplus`
                    case hfsplus = "hfsplus"
                    /// `ext4`
                    case ext4 = "ext4"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.memory` namespace
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
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.system.memory.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `used`
                    case used = "used"
                    /// `free`
                    case free = "free"
                    /// `shared`
                    @available(*, deprecated, message: "Removed, report shared memory usage with `metric.system.memory.shared` metric")
                    case shared = "shared"
                    /// `buffers`
                    case buffers = "buffers"
                    /// `cached`
                    case cached = "cached"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.network` namespace
        public var network: NetworkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct NetworkAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.system.network.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `close`
                    case close = "close"
                    /// `close_wait`
                    case close_wait = "close_wait"
                    /// `closing`
                    case closing = "closing"
                    /// `delete`
                    case delete = "delete"
                    /// `established`
                    case established = "established"
                    /// `fin_wait_1`
                    case fin_wait_1 = "fin_wait_1"
                    /// `fin_wait_2`
                    case fin_wait_2 = "fin_wait_2"
                    /// `last_ack`
                    case last_ack = "last_ack"
                    /// `listen`
                    case listen = "listen"
                    /// `syn_recv`
                    case syn_recv = "syn_recv"
                    /// `syn_sent`
                    case syn_sent = "syn_sent"
                    /// `time_wait`
                    case time_wait = "time_wait"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.paging` namespace
        public var paging: PagingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct PagingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.paging.direction`: The paging access direction
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `in`
                ///     - `out`
                /// 
                /// - Example: `in`
                public var direction: Self.Key<DirectionEnum> { .init(name: OTelConventions.system.paging.direction) }
                
                public enum DirectionEnum: String, SpanAttributeConvertible {
                    /// `in`
                    case `in` = "in"
                    /// `out`
                    case out = "out"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `system.paging.state`: The memory paging state
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                /// 
                /// - Example: `free`
                public var state: Self.Key<StateEnum> { .init(name: OTelConventions.system.paging.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `used`
                    case used = "used"
                    /// `free`
                    case free = "free"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `system.paging.type`: The memory paging type
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                /// 
                /// - Example: `minor`
                public var type: Self.Key<TypeEnum> { .init(name: OTelConventions.system.paging.type) }
                
                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `major`
                    case major = "major"
                    /// `minor`
                    case minor = "minor"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.process` namespace
        public var process: ProcessAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ProcessAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var status: Self.Key<StatusEnum> { .init(name: OTelConventions.system.process.status) }
                
                public enum StatusEnum: String, SpanAttributeConvertible {
                    /// `running`
                    case running = "running"
                    /// `sleeping`
                    case sleeping = "sleeping"
                    /// `stopped`
                    case stopped = "stopped"
                    /// `defunct`
                    case defunct = "defunct"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.processes` namespace
        public var processes: ProcessesAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ProcessesAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var status: Self.Key<StatusEnum> { .init(name: OTelConventions.system.processes.status) }
                
                public enum StatusEnum: String, SpanAttributeConvertible {
                    /// `running`
                    case running = "running"
                    /// `sleeping`
                    case sleeping = "sleeping"
                    /// `stopped`
                    case stopped = "stopped"
                    /// `defunct`
                    case defunct = "defunct"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}