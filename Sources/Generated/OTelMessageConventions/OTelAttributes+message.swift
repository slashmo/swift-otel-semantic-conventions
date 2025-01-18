// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `message` namespace
    public enum message {
        /// `message.compressed_size`: Deprecated, use `rpc.message.compressed_size` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        @available(*, deprecated, message: "Replaced by `rpc.message.compressed_size`.")
        public static let compressed_size = "message.compressed_size"
    
        /// `message.id`: Deprecated, use `rpc.message.id` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        @available(*, deprecated, message: "Replaced by `rpc.message.id`.")
        public static let id = "message.id"
    
        /// `message.type`: Deprecated, use `rpc.message.type` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `SENT`
        ///     - `RECEIVED`
        @available(*, deprecated, message: "Replaced by `rpc.message.type`.")
        public static let type = "message.type"
    
        /// `message.uncompressed_size`: Deprecated, use `rpc.message.uncompressed_size` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        @available(*, deprecated, message: "Replaced by `rpc.message.uncompressed_size`.")
        public static let uncompressed_size = "message.uncompressed_size"
    
    
    }
}