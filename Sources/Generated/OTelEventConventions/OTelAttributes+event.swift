// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `event` namespace
    public enum event {
        /// `event.name`: Identifies the class / type of event. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// Event names are subject to the same rules as [attribute names](/docs/general/attribute-naming.md). Notably, event names are namespaced to avoid collisions and provide a clean separation of semantics for events in separate domains like browser, mobile, and kubernetes. 
        /// 
        /// - Examples:
        ///     - `browser.mouse.click`
        ///     - `device.app.lifecycle`
        public static let name = "event.name"
    
    
    }
}