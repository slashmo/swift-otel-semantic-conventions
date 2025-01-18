// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `opentracing` namespace
    public enum opentracing {
        /// `opentracing.ref_type`: Parent-child Reference type
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `child_of`: The parent Span depends on the child Span in some capacity
        ///     - `follows_from`: The parent Span doesn't depend in any way on the result of the child Span
        /// 
        /// The causal relationship between a child Span and a parent Span. 
        public static let ref_type = "opentracing.ref_type"
    
    
    }
}