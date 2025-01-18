// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `os` namespace
    public enum os {
        /// `os.build_id`: Unique identifier for a particular build or compilation of the operating system.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `TQ3C.230805.001.B2`
        ///     - `20E247`
        ///     - `22621`
        public static let build_id = "os.build_id"
    
        /// `os.description`: Human readable (not intended to be parsed) OS version information, like e.g. reported by `ver` or `lsb_release -a` commands. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `Microsoft Windows [Version 10.0.18363.778]`
        ///     - `Ubuntu 18.04.1 LTS`
        public static let description = "os.description"
    
        /// `os.name`: Human readable operating system name.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `iOS`
        ///     - `Android`
        ///     - `Ubuntu`
        public static let name = "os.name"
    
        /// `os.type`: The operating system type. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `windows`: Microsoft Windows
        ///     - `linux`: Linux
        ///     - `darwin`: Apple Darwin
        ///     - `freebsd`: FreeBSD
        ///     - `netbsd`: NetBSD
        ///     - `openbsd`: OpenBSD
        ///     - `dragonflybsd`: DragonFly BSD
        ///     - `hpux`: HP-UX (Hewlett Packard Unix)
        ///     - `aix`: AIX (Advanced Interactive eXecutive)
        ///     - `solaris`: SunOS, Oracle Solaris
        ///     - `z_os`: IBM z/OS
        public static let type = "os.type"
    
        /// `os.version`: The version string of the operating system as defined in [Version Attributes](/docs/resource/README.md#version-attributes). 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `14.2.1`
        ///     - `18.04.1`
        public static let version = "os.version"
    
    
    }
}