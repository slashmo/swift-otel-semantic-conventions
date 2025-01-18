// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `android` namespace
    public var android: AndroidAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct AndroidAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `android.state`: Deprecated use the `device.app.lifecycle` event definition including `android.state` as a payload field instead. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
            ///     - `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
            ///     - `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
            /// 
            /// The Android lifecycle states are defined in [Activity lifecycle callbacks](https://developer.android.com/guide/components/activities/activity-lifecycle#lc), and from which the `OS identifiers` are derived. 
            @available(*, deprecated, message: "Replaced by `device.app.lifecycle`.")
            public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.android.state) }
            
            public enum StateEnum: String, SpanAttributeConvertible {
                /// `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
                case created = "created"
                /// `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
                case background = "background"
                /// `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
                case foreground = "foreground"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
        /// `android.os` namespace
        public var os: OsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct OsAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `android.os.api_level`: Uniquely identifies the framework API revision offered by a version (`os.version`) of the android operating system. More information can be found [here](https://developer.android.com/guide/topics/manifest/uses-sdk-element#ApiLevels). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `33`
                ///     - `32`
                public var api_level: Self.Key<String> { .init(name: OTelAttributes.android.os.api_level) }
            }
        
        
        }
    }
}