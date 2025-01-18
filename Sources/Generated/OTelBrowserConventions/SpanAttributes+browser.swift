// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `browser` namespace
    public var browser: BrowserAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct BrowserAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `browser.brands`: Array of brand name and version separated by a space
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            /// 
            /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.brands`). 
            public var brands: Self.Key<[String]> { .init(name: OTelConventions.browser.brands) }
    
            /// `browser.language`: Preferred language of the user using the browser
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This value is intended to be taken from the Navigator API `navigator.language`. 
            /// 
            /// - Examples:
            ///     - `en`
            ///     - `en-US`
            ///     - `fr`
            ///     - `fr-FR`
            public var language: Self.Key<String> { .init(name: OTelConventions.browser.language) }
    
            /// `browser.mobile`: A boolean that is true if the browser is running on a mobile device
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            /// 
            /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.mobile`). If unavailable, this attribute SHOULD be left unset. 
            public var mobile: Self.Key<Bool> { .init(name: OTelConventions.browser.mobile) }
    
            /// `browser.platform`: The platform on which the browser is running
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.platform`). If unavailable, the legacy `navigator.platform` API SHOULD NOT be used instead and this attribute SHOULD be left unset in order for the values to be consistent. The list of possible values is defined in the [W3C User-Agent Client Hints specification](https://wicg.github.io/ua-client-hints/#sec-ch-ua-platform). Note that some (but not all) of these values can overlap with values in the [`os.type` and `os.name` attributes](./os.md). However, for consistency, the values in the `browser.platform` attribute should capture the exact value that the user agent provides. 
            /// 
            /// - Examples:
            ///     - `Windows`
            ///     - `macOS`
            ///     - `Android`
            public var platform: Self.Key<String> { .init(name: OTelConventions.browser.platform) }
        }
    
    
    }
}