// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `cpu` namespace
    public var cpu: CpuAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
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
            /// `cpu.mode`: The mode of the CPU
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
            ///     - `kernel`
            /// 
            /// - Examples:
            ///     - `user`
            ///     - `system`
            public var mode: Self.Key<ModeEnum> { .init(name: OTelConventions.cpu.mode) }
            
            public enum ModeEnum: String, SpanAttributeConvertible {
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
                /// `kernel`
                case kernel = "kernel"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
    
    }
}