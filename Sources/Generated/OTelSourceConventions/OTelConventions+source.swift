// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `source` namespace
    public enum source {
        /// `source.address`: Source address - domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// When observed from the destination side, and when communicating through an intermediary, `source.address` SHOULD represent the source address behind any intermediaries, for example proxies, if it's available. 
        /// 
        /// - Examples:
        ///     - `source.example.com`
        ///     - `10.1.2.80`
        ///     - `/tmp/my.sock`
        public static let address = "source.address"
    
        /// `source.port`: Source port number
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Examples:
        ///     - `3389`
        ///     - `2888`
        public static let port = "source.port"
    
    
    }
}