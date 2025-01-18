// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `enduser` namespace
    public enum enduser {
        /// `enduser.id`: Deprecated, use `user.id` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `username`
        @available(*, deprecated, message: "Replaced by `user.id` attribute.")
        public static let id = "enduser.id"
    
        /// `enduser.role`: Deprecated, use `user.roles` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `admin`
        @available(*, deprecated, message: "Replaced by `user.roles` attribute.")
        public static let role = "enduser.role"
    
        /// `enduser.scope`: Deprecated, no replacement at this time.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `read:message, write:files`
        @available(*, deprecated, message: "Removed.")
        public static let scope = "enduser.scope"
    
    
    }
}