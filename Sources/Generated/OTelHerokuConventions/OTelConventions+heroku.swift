// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `heroku` namespace
    public enum heroku {
    
    
        /// `heroku.app` namespace
        public enum app {
            /// `heroku.app.id`: Unique identifier for the application 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `2daa2797-e42b-4624-9322-ec3f968df4da`
            public static let id = "heroku.app.id"
        
        
        }
    
        /// `heroku.release` namespace
        public enum release {
            /// `heroku.release.commit`: Commit hash for the current release 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `e6134959463efd8966b20e75b913cafe3f5ec`
            public static let commit = "heroku.release.commit"
        
            /// `heroku.release.creation_timestamp`: Time and date the release was created 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `2022-10-23T18:00:42Z`
            public static let creation_timestamp = "heroku.release.creation_timestamp"
        
        
        }
    }
}