// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `feature_flag` namespace
    public enum feature_flag {
        /// `feature_flag.key`: The lookup key of the feature flag.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `logo-color`
        public static let key = "feature_flag.key"
    
        /// `feature_flag.provider_name`: Identifies the feature flag provider.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `Flag Manager`
        public static let provider_name = "feature_flag.provider_name"
    
        /// `feature_flag.variant`: A semantic identifier for an evaluated flag value. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// A semantic identifier, commonly referred to as a variant, provides a means for referring to a value without including the value itself. This can provide additional context for understanding the meaning behind a value. For example, the variant `red` maybe be used for the value `#c05543`.
        /// 
        /// - Examples:
        ///     - `red`
        ///     - `true`
        ///     - `on`
        public static let variant = "feature_flag.variant"
    
        /// `feature_flag.version`: The version of the ruleset used during the evaluation. This may be any stable value which uniquely identifies the ruleset. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `1`
        ///     - `01ABCDEF`
        public static let version = "feature_flag.version"
    
        /// `feature_flag.context` namespace
        public enum context {
            /// `feature_flag.context.id`: The unique identifier for the flag evaluation context. For example, the targeting key. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `5157782b-2203-4c80-a857-dbbd5e7761db`
            public static let id = "feature_flag.context.id"
        
        
        }
    
        /// `feature_flag.evaluation` namespace
        public enum evaluation {
            /// `feature_flag.evaluation.reason`: The reason code which shows how a feature flag value was determined. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `static`: The resolved value is static (no dynamic evaluation).
            ///     - `default`: The resolved value fell back to a pre-configured value (no dynamic evaluation occurred or dynamic evaluation yielded no result).
            ///     - `targeting_match`: The resolved value was the result of a dynamic evaluation, such as a rule or specific user-targeting.
            ///     - `split`: The resolved value was the result of pseudorandom assignment.
            ///     - `cached`: The resolved value was retrieved from cache.
            ///     - `disabled`: The resolved value was the result of the flag being disabled in the management system.
            ///     - `unknown`: The reason for the resolved value could not be determined.
            ///     - `stale`: The resolved value is non-authoritative or possibly out of date
            ///     - `error`: The resolved value was the result of an error.
            /// 
            /// - Examples:
            ///     - `static`
            ///     - `targeting_match`
            ///     - `error`
            ///     - `default`
            public static let reason = "feature_flag.evaluation.reason"
        
            /// `feature_flag.evaluation.error` namespace
            public enum error {
                /// `feature_flag.evaluation.error.message`: A message explaining the nature of an error occurring during flag evaluation.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `Flag `header-color` expected type `string` but found type `number``
                public static let message = "feature_flag.evaluation.error.message"
            
            
            }
        }
    
        /// `feature_flag.set` namespace
        public enum set {
            /// `feature_flag.set.id`: The identifier of the [flag set](https://openfeature.dev/specification/glossary/#flag-set) to which the feature flag belongs. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `proj-1`
            ///     - `ab98sgs`
            ///     - `service1/dev`
            public static let id = "feature_flag.set.id"
        
        
        }
    }
}