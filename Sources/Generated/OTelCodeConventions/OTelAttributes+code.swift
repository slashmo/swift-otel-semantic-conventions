// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `code` namespace
    public enum code {
        /// `code.column`: The column number in `code.filepath` best representing the operation. It SHOULD point within the code unit named in `code.function`. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `16`
        public static let column = "code.column"
    
        /// `code.filepath`: The source code file name that identifies the code unit as uniquely as possible (preferably an absolute file path). 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `/usr/local/MyApplication/content_root/app/index.php`
        public static let filepath = "code.filepath"
    
        /// `code.function`: The method or function name, or equivalent (usually rightmost part of the code unit's name). 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `serveRequest`
        public static let function = "code.function"
    
        /// `code.lineno`: The line number in `code.filepath` best representing the operation. It SHOULD point within the code unit named in `code.function`. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: int
        /// 
        /// - Example: `42`
        public static let lineno = "code.lineno"
    
        /// `code.namespace`: The "namespace" within which `code.function` is defined. Usually the qualified class or module name, such that `code.namespace` + some separator + `code.function` form a unique identifier for the code unit. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `com.example.MyHttpService`
        public static let namespace = "code.namespace"
    
        /// `code.stacktrace`: A stacktrace as a string in the natural representation for the language runtime. The representation is to be determined and documented by each language SIG. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `at com.example.GenerateTrace.methodB(GenerateTrace.java:13)\n at com.example.GenerateTrace.methodA(GenerateTrace.java:9)\n at com.example.GenerateTrace.main(GenerateTrace.java:5)
        /// `
        public static let stacktrace = "code.stacktrace"
    
    
    }
}