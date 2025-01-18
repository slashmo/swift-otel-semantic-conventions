// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `dns` namespace
    public enum dns {
    
    
        /// `dns.question` namespace
        public enum question {
            /// `dns.question.name`: The name being queried.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// If the name field contains non-printable characters (below 32 or above 126), those characters should be represented as escaped base 10 integers (\DDD). Back slashes and quotes should be escaped. Tabs, carriage returns, and line feeds should be converted to \t, \r, and \n respectively. 
            /// 
            /// - Examples:
            ///     - `www.example.com`
            ///     - `opentelemetry.io`
            public static let name = "dns.question.name"
        
        
        }
    }
}