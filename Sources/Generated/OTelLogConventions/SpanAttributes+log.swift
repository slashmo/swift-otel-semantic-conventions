// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `log` namespace
    public var log: LogAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct LogAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `log.iostream`: The stream associated with the log. See below for a list of well-known values. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `stdout`: Logs from stdout stream
            ///     - `stderr`: Events from stderr stream
            public var iostream: Self.Key<IostreamEnum> { .init(name: OTelAttributes.log.iostream) }
            
            public enum IostreamEnum: String, SpanAttributeConvertible {
                /// `stdout`: Logs from stdout stream
                case stdout = "stdout"
                /// `stderr`: Events from stderr stream
                case stderr = "stderr"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
        /// `log.file` namespace
        public var file: FileAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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
                /// `log.file.name`: The basename of the file. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `audit.log`
                public var name: Self.Key<String> { .init(name: OTelAttributes.log.file.name) }
        
                /// `log.file.name_resolved`: The basename of the file, with symlinks resolved. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `uuid.log`
                public var name_resolved: Self.Key<String> { .init(name: OTelAttributes.log.file.name_resolved) }
        
                /// `log.file.path`: The full path to the file. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/var/log/mysql/audit.log`
                public var path: Self.Key<String> { .init(name: OTelAttributes.log.file.path) }
        
                /// `log.file.path_resolved`: The full path to the file, with symlinks resolved. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/var/lib/docker/uuid.log`
                public var path_resolved: Self.Key<String> { .init(name: OTelAttributes.log.file.path_resolved) }
            }
        
        
        }
    
        /// `log.record` namespace
        public var record: RecordAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RecordAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
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
                public var original: Self.Key<String> { .init(name: OTelAttributes.log.record.original) }
        
                /// `log.record.uid`: A unique identifier for the Log Record. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// If an id is provided, other log records with the same id will be considered duplicates and can be removed safely. This means, that two distinguishable log records MUST have different values. The id MAY be an [Universally Unique Lexicographically Sortable Identifier (ULID)](https://github.com/ulid/spec), but other identifiers (e.g. UUID) may be used as needed. 
                /// 
                /// - Example: `01ARZ3NDEKTSV4RRFFQ69G5FAV`
                public var uid: Self.Key<String> { .init(name: OTelAttributes.log.record.uid) }
            }
        
        
        }
    }
}