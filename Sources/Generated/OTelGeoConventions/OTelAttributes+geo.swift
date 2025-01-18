// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `geo` namespace
    public enum geo {
        /// `geo.postal_code`: Postal code associated with the location. Values appropriate for this field may also be known as a postcode or ZIP code and will vary widely from country to country. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `94040`
        public static let postal_code = "geo.postal_code"
    
        /// `geo.continent` namespace
        public enum continent {
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
            public static let code = "geo.continent.code"
        
        
        }
    
        /// `geo.country` namespace
        public enum country {
            /// `geo.country.iso_code`: Two-letter ISO Country Code ([ISO 3166-1 alpha2](https://wikipedia.org/wiki/ISO_3166-1#Codes)). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `CA`
            public static let iso_code = "geo.country.iso_code"
        
        
        }
    
        /// `geo.locality` namespace
        public enum locality {
            /// `geo.locality.name`: Locality name. Represents the name of a city, town, village, or similar populated place. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `Montreal`
            ///     - `Berlin`
            public static let name = "geo.locality.name"
        
        
        }
    
        /// `geo.location` namespace
        public enum location {
            /// `geo.location.lat`: Latitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `45.505918`
            public static let lat = "geo.location.lat"
        
            /// `geo.location.lon`: Longitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Example: `-73.614830`
            public static let lon = "geo.location.lon"
        
        
        }
    
        /// `geo.region` namespace
        public enum region {
            /// `geo.region.iso_code`: Region ISO code ([ISO 3166-2](https://wikipedia.org/wiki/ISO_3166-2)). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `CA-QC`
            public static let iso_code = "geo.region.iso_code"
        
        
        }
    }
}