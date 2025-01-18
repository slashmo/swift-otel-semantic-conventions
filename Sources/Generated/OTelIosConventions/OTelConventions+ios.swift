// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `ios` namespace
    public enum ios {
        /// `ios.state`: Deprecated use the `device.app.lifecycle` event definition including `ios.state` as a payload field instead. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
        ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
        ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
        ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
        ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
        /// 
        /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate#1656902), and from which the `OS terminology` column values are derived. 
        @available(*, deprecated, message: "Moved to a payload field of `device.app.lifecycle`.")
        public static let state = "ios.state"
    
    
    }
}