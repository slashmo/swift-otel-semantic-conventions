// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `url` namespace
    public var url: UrlAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct UrlAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `url.domain`: Domain extracted from the `url.full`, such as "opentelemetry.io". 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// In some cases a URL may refer to an IP and/or port directly, without a domain name. In this case, the IP address would go to the domain field. If the URL contains a [literal IPv6 address](https://www.rfc-editor.org/rfc/rfc2732#section-2) enclosed by `[` and `]`, the `[` and `]` characters should also be captured in the domain field. 
            /// 
            /// - Examples:
            ///     - `www.foo.bar`
            ///     - `opentelemetry.io`
            ///     - `3.12.167.2`
            ///     - `[1080:0:0:0:8:800:200C:417A]`
            public var domain: Self.Key<String> { .init(name: OTelAttributes.url.domain) }
    
            /// `url.extension`: The file extension extracted from the `url.full`, excluding the leading dot. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// The file extension is only set if it exists, as not every url has a file extension. When the file name has multiple extensions `example.tar.gz`, only the last one should be captured `gz`, not `tar.gz`. 
            /// 
            /// - Examples:
            ///     - `png`
            ///     - `gz`
            public var `extension`: Self.Key<String> { .init(name: OTelAttributes.url.`extension`) }
    
            /// `url.fragment`: The [URI fragment](https://www.rfc-editor.org/rfc/rfc3986#section-3.5) component 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Example: `SemConv`
            public var fragment: Self.Key<String> { .init(name: OTelAttributes.url.fragment) }
    
            /// `url.full`: Absolute URL describing a network resource according to [RFC3986](https://www.rfc-editor.org/rfc/rfc3986)
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// For network calls, URL usually has `scheme://host[:port][path][?query][#fragment]` format, where the fragment is not transmitted over HTTP, but if it is known, it SHOULD be included nevertheless.  `url.full` MUST NOT contain credentials passed via URL in form of `https://username:password@www.example.com/`. In such case username and password SHOULD be redacted and attribute's value SHOULD be `https://REDACTED:REDACTED@www.example.com/`.  `url.full` SHOULD capture the absolute URL when it is available (or can be reconstructed).  Sensitive content provided in `url.full` SHOULD be scrubbed when instrumentations can identify it.  ![Experimental](https://img.shields.io/badge/-experimental-blue) Query string values for the following keys SHOULD be redacted by default and replaced by the value `REDACTED`:  * [`AWSAccessKeyId`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth) * [`Signature`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth) * [`sig`](https://learn.microsoft.com/azure/storage/common/storage-sas-overview#sas-token) * [`X-Goog-Signature`](https://cloud.google.com/storage/docs/access-control/signed-urls)  This list is subject to change over time.  When a query string value is redacted, the query string key SHOULD still be preserved, e.g. `https://www.example.com/path?color=blue&sig=REDACTED`. 
            /// 
            /// - Examples:
            ///     - `https://www.foo.bar/search?q=OpenTelemetry#SemConv`
            ///     - `//localhost`
            public var full: Self.Key<String> { .init(name: OTelAttributes.url.full) }
    
            /// `url.original`: Unmodified original URL as seen in the event source. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// In network monitoring, the observed URL may be a full URL, whereas in access logs, the URL is often just represented as a path. This field is meant to represent the URL as it was observed, complete or not. `url.original` might contain credentials passed via URL in form of `https://username:password@www.example.com/`. In such case password and username SHOULD NOT be redacted and attribute's value SHOULD remain the same. 
            /// 
            /// - Examples:
            ///     - `https://www.foo.bar/search?q=OpenTelemetry#SemConv`
            ///     - `search?q=OpenTelemetry`
            public var original: Self.Key<String> { .init(name: OTelAttributes.url.original) }
    
            /// `url.path`: The [URI path](https://www.rfc-editor.org/rfc/rfc3986#section-3.3) component 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// Sensitive content provided in `url.path` SHOULD be scrubbed when instrumentations can identify it. 
            /// 
            /// - Example: `/search`
            public var path: Self.Key<String> { .init(name: OTelAttributes.url.path) }
    
            /// `url.port`: Port extracted from the `url.full` 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `443`
            public var port: Self.Key<Int> { .init(name: OTelAttributes.url.port) }
    
            /// `url.query`: The [URI query](https://www.rfc-editor.org/rfc/rfc3986#section-3.4) component 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// Sensitive content provided in `url.query` SHOULD be scrubbed when instrumentations can identify it.  ![Experimental](https://img.shields.io/badge/-experimental-blue) Query string values for the following keys SHOULD be redacted by default and replaced by the value `REDACTED`:  * [`AWSAccessKeyId`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth) * [`Signature`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth) * [`sig`](https://learn.microsoft.com/azure/storage/common/storage-sas-overview#sas-token) * [`X-Goog-Signature`](https://cloud.google.com/storage/docs/access-control/signed-urls)  This list is subject to change over time.  When a query string value is redacted, the query string key SHOULD still be preserved, e.g. `q=OpenTelemetry&sig=REDACTED`. 
            /// 
            /// - Example: `q=OpenTelemetry`
            public var query: Self.Key<String> { .init(name: OTelAttributes.url.query) }
    
            /// `url.registered_domain`: The highest registered url domain, stripped of the subdomain. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This value can be determined precisely with the [public suffix list](http://publicsuffix.org). For example, the registered domain for `foo.example.com` is `example.com`. Trying to approximate this by simply taking the last two labels will not work well for TLDs such as `co.uk`. 
            /// 
            /// - Examples:
            ///     - `example.com`
            ///     - `foo.co.uk`
            public var registered_domain: Self.Key<String> { .init(name: OTelAttributes.url.registered_domain) }
    
            /// `url.scheme`: The [URI scheme](https://www.rfc-editor.org/rfc/rfc3986#section-3.1) component identifying the used protocol. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `https`
            ///     - `ftp`
            ///     - `telnet`
            public var scheme: Self.Key<String> { .init(name: OTelAttributes.url.scheme) }
    
            /// `url.subdomain`: The subdomain portion of a fully qualified domain name includes all of the names except the host name under the registered_domain. In a partially qualified domain, or if the qualification level of the full name cannot be determined, subdomain contains all of the names below the registered domain. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// The subdomain portion of `www.east.mydomain.co.uk` is `east`. If the domain has multiple levels of subdomain, such as `sub2.sub1.example.com`, the subdomain field should contain `sub2.sub1`, with no trailing period. 
            /// 
            /// - Examples:
            ///     - `east`
            ///     - `sub2.sub1`
            public var subdomain: Self.Key<String> { .init(name: OTelAttributes.url.subdomain) }
    
            /// `url.template`: The low-cardinality template of an [absolute path reference](https://www.rfc-editor.org/rfc/rfc3986#section-4.2). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `/users/{id}`
            ///     - `/users/:id`
            ///     - `/users?id={id}`
            public var template: Self.Key<String> { .init(name: OTelAttributes.url.template) }
    
            /// `url.top_level_domain`: The effective top level domain (eTLD), also known as the domain suffix, is the last part of the domain name. For example, the top level domain for example.com is `com`. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This value can be determined precisely with the [public suffix list](http://publicsuffix.org). 
            /// 
            /// - Examples:
            ///     - `com`
            ///     - `co.uk`
            public var top_level_domain: Self.Key<String> { .init(name: OTelAttributes.url.top_level_domain) }
        }
    
    
    }
}