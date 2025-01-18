// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `user` namespace
    public var user: UserAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct UserAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `user.email`: User email address. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `a.einstein@example.com`
            public var email: Self.Key<String> { .init(name: OTelAttributes.user.email) }
    
            /// `user.full_name`: User's full name 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `Albert Einstein`
            public var full_name: Self.Key<String> { .init(name: OTelAttributes.user.full_name) }
    
            /// `user.hash`: Unique user hash to correlate information for a user in anonymized form. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Useful if `user.id` or `user.name` contain confidential information and cannot be used. 
            /// 
            /// - Example: `364fc68eaf4c8acec74a4e52d7d1feaa`
            public var hash: Self.Key<String> { .init(name: OTelAttributes.user.hash) }
    
            /// `user.id`: Unique identifier of the user. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `S-1-5-21-202424912787-2692429404-2351956786-1000`
            public var id: Self.Key<String> { .init(name: OTelAttributes.user.id) }
    
            /// `user.name`: Short name or login/username of the user. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `a.einstein`
            public var name: Self.Key<String> { .init(name: OTelAttributes.user.name) }
    
            /// `user.roles`: Array of user roles at the time of the event. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public var roles: Self.Key<[String]> { .init(name: OTelAttributes.user.roles) }
        }
    
    
    }
}