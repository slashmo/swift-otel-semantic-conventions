// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `geo` namespace
    public var geo: GeoAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct GeoAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `geo.postal_code`: Postal code associated with the location. Values appropriate for this field may also be known as a postcode or ZIP code and will vary widely from country to country. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `94040`
            public var postal_code: Self.Key<String> { .init(name: OTelConventions.geo.postal_code) }
        }
    
        /// `geo.continent` namespace
        public var continent: ContinentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ContinentAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `geo.continent.code`: Two-letter code representing continent’s name. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `AF`: Africa
                ///     - `AN`: Antarctica
                ///     - `AS`: Asia
                ///     - `EU`: Europe
                ///     - `NA`: North America
                ///     - `OC`: Oceania
                ///     - `SA`: South America
                public var code: Self.Key<CodeEnum> { .init(name: OTelConventions.geo.continent.code) }
                
                public enum CodeEnum: String, SpanAttributeConvertible {
                    /// `AF`: Africa
                    case af = "AF"
                    /// `AN`: Antarctica
                    case an = "AN"
                    /// `AS`: Asia
                    case `as` = "AS"
                    /// `EU`: Europe
                    case eu = "EU"
                    /// `NA`: North America
                    case na = "NA"
                    /// `OC`: Oceania
                    case oc = "OC"
                    /// `SA`: South America
                    case sa = "SA"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `geo.country` namespace
        public var country: CountryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CountryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `geo.country.iso_code`: Two-letter ISO Country Code ([ISO 3166-1 alpha2](https://wikipedia.org/wiki/ISO_3166-1#Codes)). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `CA`
                public var iso_code: Self.Key<String> { .init(name: OTelConventions.geo.country.iso_code) }
            }
        
        
        }
    
        /// `geo.locality` namespace
        public var locality: LocalityAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct LocalityAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `geo.locality.name`: Locality name. Represents the name of a city, town, village, or similar populated place. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Montreal`
                ///     - `Berlin`
                public var name: Self.Key<String> { .init(name: OTelConventions.geo.locality.name) }
            }
        
        
        }
    
        /// `geo.location` namespace
        public var location: LocationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct LocationAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `geo.location.lat`: Latitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: double
                /// 
                /// - Example: `45.505918`
                public var lat: Self.Key<Double> { .init(name: OTelConventions.geo.location.lat) }
        
                /// `geo.location.lon`: Longitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: double
                /// 
                /// - Example: `-73.614830`
                public var lon: Self.Key<Double> { .init(name: OTelConventions.geo.location.lon) }
            }
        
        
        }
    
        /// `geo.region` namespace
        public var region: RegionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RegionAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `geo.region.iso_code`: Region ISO code ([ISO 3166-2](https://wikipedia.org/wiki/ISO_3166-2)). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `CA-QC`
                public var iso_code: Self.Key<String> { .init(name: OTelConventions.geo.region.iso_code) }
            }
        
        
        }
    }
}