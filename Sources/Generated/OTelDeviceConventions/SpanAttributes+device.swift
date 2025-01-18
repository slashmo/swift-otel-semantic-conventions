// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `device` namespace
    public var device: DeviceAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct DeviceAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `device.id`: A unique identifier representing the device 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// The device identifier MUST only be defined using the values outlined below. This value is not an advertising identifier and MUST NOT be used as such. On iOS (Swift or Objective-C), this value MUST be equal to the [vendor identifier](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor). On Android (Java or Kotlin), this value MUST be equal to the Firebase Installation ID or a globally unique UUID which is persisted across sessions in your application. More information can be found [here](https://developer.android.com/training/articles/user-data-ids) on best practices and exact implementation details. Caution should be taken when storing personal data or anything which can identify a user. GDPR and data protection laws may apply, ensure you do your own due diligence. 
            /// 
            /// - Example: `2ab2916d-a51f-4ac8-80ee-45ac31a28092`
            public var id: Self.Key<String> { .init(name: OTelAttributes.device.id) }
    
            /// `device.manufacturer`: The name of the device manufacturer 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// The Android OS provides this field via [Build](https://developer.android.com/reference/android/os/Build#MANUFACTURER). iOS apps SHOULD hardcode the value `Apple`. 
            /// 
            /// - Examples:
            ///     - `Apple`
            ///     - `Samsung`
            public var manufacturer: Self.Key<String> { .init(name: OTelAttributes.device.manufacturer) }
        }
    
        /// `device.model` namespace
        public var model: ModelAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ModelAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `device.model.identifier`: The model identifier for the device 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// It's recommended this value represents a machine-readable version of the model identifier rather than the market or consumer-friendly name of the device. 
                /// 
                /// - Examples:
                ///     - `iPhone3,4`
                ///     - `SM-G920F`
                public var identifier: Self.Key<String> { .init(name: OTelAttributes.device.model.identifier) }
        
                /// `device.model.name`: The marketing name for the device model 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// It's recommended this value represents a human-readable version of the device model rather than a machine-readable alternative. 
                /// 
                /// - Examples:
                ///     - `iPhone 6s Plus`
                ///     - `Samsung Galaxy S6`
                public var name: Self.Key<String> { .init(name: OTelAttributes.device.model.name) }
            }
        
        
        }
    }
}