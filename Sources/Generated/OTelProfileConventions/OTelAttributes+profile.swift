// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `profile` namespace
    public enum profile {
    
    
        /// `profile.frame` namespace
        public enum frame {
            /// `profile.frame.type`: Describes the interpreter or compiler of a single frame. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `dotnet`: [.NET](https://wikipedia.org/wiki/.NET)
            ///     - `jvm`: [JVM](https://wikipedia.org/wiki/Java_virtual_machine)
            ///     - `kernel`: [Kernel](https://wikipedia.org/wiki/Kernel_(operating_system))
            ///     - `native`: [C](https://wikipedia.org/wiki/C_(programming_language)), [C++](https://wikipedia.org/wiki/C%2B%2B), [Go](https://wikipedia.org/wiki/Go_(programming_language)), [Rust](https://wikipedia.org/wiki/Rust_(programming_language))
            ///     - `perl`: [Perl](https://wikipedia.org/wiki/Perl)
            ///     - `php`: [PHP](https://wikipedia.org/wiki/PHP)
            ///     - `cpython`: [Python](https://wikipedia.org/wiki/Python_(programming_language))
            ///     - `ruby`: [Ruby](https://wikipedia.org/wiki/Ruby_(programming_language))
            ///     - `v8js`: [V8JS](https://wikipedia.org/wiki/V8_(JavaScript_engine))
            /// 
            /// - Example: `cpython`
            public static let type = "profile.frame.type"
        
        
        }
    }
}