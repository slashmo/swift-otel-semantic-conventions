// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `heroku` namespace
    public var heroku: HerokuAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct HerokuAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `heroku.app` namespace
        public var app: AppAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct AppAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `heroku.app.id`: Unique identifier for the application 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `2daa2797-e42b-4624-9322-ec3f968df4da`
                public var id: Self.Key<String> { .init(name: OTelConventions.heroku.app.id) }
            }
        
        
        }
    
        /// `heroku.release` namespace
        public var release: ReleaseAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ReleaseAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `heroku.release.commit`: Commit hash for the current release 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `e6134959463efd8966b20e75b913cafe3f5ec`
                public var commit: Self.Key<String> { .init(name: OTelConventions.heroku.release.commit) }
        
                /// `heroku.release.creation_timestamp`: Time and date the release was created 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `2022-10-23T18:00:42Z`
                public var creation_timestamp: Self.Key<String> { .init(name: OTelConventions.heroku.release.creation_timestamp) }
            }
        
        
        }
    }
}