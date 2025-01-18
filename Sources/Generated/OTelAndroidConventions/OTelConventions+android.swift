// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `android` namespace
    public enum android {
        /// `android.state`: Deprecated use the `device.app.lifecycle` event definition including `android.state` as a payload field instead. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
        ///     - `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
        ///     - `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
        /// 
        /// The Android lifecycle states are defined in [Activity lifecycle callbacks](https://developer.android.com/guide/components/activities/activity-lifecycle#lc), and from which the `OS identifiers` are derived. 
        @available(*, deprecated, message: "Replaced by `device.app.lifecycle`.")
        public static let state = "android.state"
    
        /// `android.os` namespace
        public enum os {
            /// `android.os.api_level`: Uniquely identifies the framework API revision offered by a version (`os.version`) of the android operating system. More information can be found [here](https://developer.android.com/guide/topics/manifest/uses-sdk-element#ApiLevels). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `33`
            ///     - `32`
            public static let api_level = "android.os.api_level"
        
        
        }
    }
}