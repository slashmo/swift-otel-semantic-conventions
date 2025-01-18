// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `user` namespace
    public enum user {
        /// `user.email`: User email address. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `a.einstein@example.com`
        public static let email = "user.email"
    
        /// `user.full_name`: User's full name 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `Albert Einstein`
        public static let full_name = "user.full_name"
    
        /// `user.hash`: Unique user hash to correlate information for a user in anonymized form. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// Useful if `user.id` or `user.name` contain confidential information and cannot be used. 
        /// 
        /// - Example: `364fc68eaf4c8acec74a4e52d7d1feaa`
        public static let hash = "user.hash"
    
        /// `user.id`: Unique identifier of the user. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `S-1-5-21-202424912787-2692429404-2351956786-1000`
        public static let id = "user.id"
    
        /// `user.name`: Short name or login/username of the user. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `a.einstein`
        public static let name = "user.name"
    
        /// `user.roles`: Array of user roles at the time of the event. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: stringArray
        public static let roles = "user.roles"
    
    
    }
}