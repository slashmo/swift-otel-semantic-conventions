// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `graphql` namespace
    public enum graphql {
        /// `graphql.document`: The GraphQL document being executed.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// The value may be sanitized to exclude sensitive information.
        /// 
        /// - Example: `query findBookById { bookById(id: ?) { name } }`
        public static let document = "graphql.document"
    
        /// `graphql.operation` namespace
        public enum operation {
            /// `graphql.operation.name`: The name of the operation being executed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `findBookById`
            public static let name = "graphql.operation.name"
        
            /// `graphql.operation.type`: The type of the operation being executed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `query`: GraphQL query
            ///     - `mutation`: GraphQL mutation
            ///     - `subscription`: GraphQL subscription
            /// 
            /// - Examples:
            ///     - `query`
            ///     - `mutation`
            ///     - `subscription`
            public static let type = "graphql.operation.type"
        
        
        }
    }
}