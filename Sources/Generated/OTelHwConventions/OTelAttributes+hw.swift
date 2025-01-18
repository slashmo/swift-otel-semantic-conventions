// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `hw` namespace
    public enum hw {
        /// `hw.id`: An identifier for the hardware component, unique within the monitored host 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `win32battery_battery_testsysa33_1`
        public static let id = "hw.id"
    
        /// `hw.name`: An easily-recognizable name for the hardware component 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `eth0`
        public static let name = "hw.name"
    
        /// `hw.parent`: Unique identifier of the parent component (typically the `hw.id` attribute of the enclosure, or disk controller) 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `dellStorage_perc_0`
        public static let parent = "hw.parent"
    
        /// `hw.state`: The current state of the component 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `ok`: Ok
        ///     - `degraded`: Degraded
        ///     - `failed`: Failed
        public static let state = "hw.state"
    
        /// `hw.type`: Type of the component 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `battery`: Battery
        ///     - `cpu`: CPU
        ///     - `disk_controller`: Disk controller
        ///     - `enclosure`: Enclosure
        ///     - `fan`: Fan
        ///     - `gpu`: GPU
        ///     - `logical_disk`: Logical disk
        ///     - `memory`: Memory
        ///     - `network`: Network
        ///     - `physical_disk`: Physical disk
        ///     - `power_supply`: Power supply
        ///     - `tape_drive`: Tape drive
        ///     - `temperature`: Temperature
        ///     - `voltage`: Voltage
        /// 
        /// Describes the category of the hardware component for which `hw.state` is being reported. For example, `hw.type=temperature` along with `hw.state=degraded` would indicate that the temperature of the hardware component has been reported as `degraded`. 
        public static let type = "hw.type"
    
    
    }
}