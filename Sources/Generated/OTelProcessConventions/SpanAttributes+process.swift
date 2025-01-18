// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `process` namespace
    public var process: ProcessAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct ProcessAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `process.args_count`: Length of the process.command_args array 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// This field can be useful for querying or performing bucket analysis on how many arguments were provided to start a process. More arguments may be an indication of suspicious activity. 
            /// 
            /// - Example: `4`
            public var args_count: Self.Key<Int> { .init(name: OTelAttributes.process.args_count) }
    
            /// `process.command`: The command used to launch the process (i.e. the command name). On Linux based systems, can be set to the zeroth string in `proc/[pid]/cmdline`. On Windows, can be set to the first parameter extracted from `GetCommandLineW`. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `cmd/otelcol`
            public var command: Self.Key<String> { .init(name: OTelAttributes.process.command) }
    
            /// `process.command_args`: All the command arguments (including the command/executable itself) as received by the process. On Linux-based systems (and some other Unixoid systems supporting procfs), can be set according to the list of null-delimited strings extracted from `proc/[pid]/cmdline`. For libc-based executables, this would be the full argv vector passed to `main`. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            public var command_args: Self.Key<[String]> { .init(name: OTelAttributes.process.command_args) }
    
            /// `process.command_line`: The full command used to launch the process as a single string representing the full command. On Windows, can be set to the result of `GetCommandLineW`. Do not set this if you have to assemble it just for monitoring; use `process.command_args` instead. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `C:\cmd\otecol --config="my directory\config.yaml"`
            public var command_line: Self.Key<String> { .init(name: OTelAttributes.process.command_line) }
    
            /// `process.context_switch_type`: Specifies whether the context switches for this data point were voluntary or involuntary.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `voluntary`
            ///     - `involuntary`
            public var context_switch_type: Self.Key<Context_Switch_TypeEnum> { .init(name: OTelAttributes.process.context_switch_type) }
            
            public enum Context_Switch_TypeEnum: String, SpanAttributeConvertible {
                /// `voluntary`
                case voluntary = "voluntary"
                /// `involuntary`
                case involuntary = "involuntary"
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `process.interactive`: Whether the process is connected to an interactive shell. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            public var interactive: Self.Key<Bool> { .init(name: OTelAttributes.process.interactive) }
    
            /// `process.owner`: The username of the user that owns the process. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `root`
            public var owner: Self.Key<String> { .init(name: OTelAttributes.process.owner) }
    
            /// `process.parent_pid`: Parent Process identifier (PPID). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `111`
            public var parent_pid: Self.Key<Int> { .init(name: OTelAttributes.process.parent_pid) }
    
            /// `process.pid`: Process identifier (PID). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `1234`
            public var pid: Self.Key<Int> { .init(name: OTelAttributes.process.pid) }
    
            /// `process.title`: Process title (proctitle) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// In many Unix-like systems, process title (proctitle), is the string that represents the name or command line of a running process, displayed by system monitoring tools like ps, top, and htop. 
            /// 
            /// - Examples:
            ///     - `cat /etc/hostname`
            ///     - `xfce4-session`
            ///     - `bash`
            public var title: Self.Key<String> { .init(name: OTelAttributes.process.title) }
    
            /// `process.vpid`: Virtual process identifier. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// The process ID within a PID namespace. This is not necessarily unique across all processes on the host but it is unique within the process namespace that the process exists within. 
            /// 
            /// - Example: `12`
            public var vpid: Self.Key<Int> { .init(name: OTelAttributes.process.vpid) }
    
            /// `process.working_directory`: The working directory of the process. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `/root`
            public var working_directory: Self.Key<String> { .init(name: OTelAttributes.process.working_directory) }
        }
    
        /// `process.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.cpu.state`: Deprecated, use `cpu.mode` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `system`
                ///     - `user`
                ///     - `wait`
                @available(*, deprecated, message: "Replaced by `cpu.mode`")
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.process.cpu.state) }
                
                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `system`
                    case system = "system"
                    /// `user`
                    case user = "user"
                    /// `wait`
                    case wait = "wait"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `process.creation` namespace
        public var creation: CreationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CreationAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.creation.time`: The date and time the process was created, in ISO 8601 format. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `2023-11-21T09:25:34.853Z`
                public var time: Self.Key<String> { .init(name: OTelAttributes.process.creation.time) }
            }
        
        
        }
    
        /// `process.executable` namespace
        public var executable: ExecutableAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ExecutableAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.executable.name`: The name of the process executable. On Linux based systems, can be set to the `Name` in `proc/[pid]/status`. On Windows, can be set to the base name of `GetProcessImageFileNameW`. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `otelcol`
                public var name: Self.Key<String> { .init(name: OTelAttributes.process.executable.name) }
        
                /// `process.executable.path`: The full path to the process executable. On Linux based systems, can be set to the target of `proc/[pid]/exe`. On Windows, can be set to the result of `GetProcessImageFileNameW`. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/usr/bin/cmd/otelcol`
                public var path: Self.Key<String> { .init(name: OTelAttributes.process.executable.path) }
            }
        
            /// `process.executable.build_id` namespace
            public var build_id: BuildIdAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct BuildIdAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `process.executable.build_id.gnu`: The GNU build ID as found in the `.note.gnu.build-id` ELF section (hex string). 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `c89b11207f6479603b0d49bf291c092c2b719293`
                    public var gnu: Self.Key<String> { .init(name: OTelAttributes.process.executable.build_id.gnu) }
            
                    /// `process.executable.build_id.go`: The Go build ID as retrieved by `go tool buildid <go executable>`. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `foh3mEXu7BLZjsN9pOwG/kATcXlYVCDEFouRMQed_/WwRFB1hPo9LBkekthSPG/x8hMC8emW2cCjXD0_1aY`
                    public var go: Self.Key<String> { .init(name: OTelAttributes.process.executable.build_id.go) }
            
                    /// `process.executable.build_id.htlhash`: Profiling specific build ID for executables. See the OTel specification for Profiles for more information. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `600DCAFE4A110000F2BF38C493F5FB92`
                    public var htlhash: Self.Key<String> { .init(name: OTelAttributes.process.executable.build_id.htlhash) }
            
                    /// `process.executable.build_id.profiling`: "Deprecated, use `process.executable.build_id.htlhash` instead." 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `600DCAFE4A110000F2BF38C493F5FB92`
                    @available(*, deprecated, message: "Replaced by `process.executable.build_id.htlhash`")
                    public var profiling: Self.Key<String> { .init(name: OTelAttributes.process.executable.build_id.profiling) }
                }
            
            
            }
        }
    
        /// `process.exit` namespace
        public var exit: ExitAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ExitAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.exit.code`: The exit code of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `127`
                public var code: Self.Key<Int> { .init(name: OTelAttributes.process.exit.code) }
        
                /// `process.exit.time`: The date and time the process exited, in ISO 8601 format. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `2023-11-21T09:26:12.315Z`
                public var time: Self.Key<String> { .init(name: OTelAttributes.process.exit.time) }
            }
        
        
        }
    
        /// `process.group_leader` namespace
        public var group_leader: GroupLeaderAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GroupLeaderAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.group_leader.pid`: The PID of the process's group leader. This is also the process group ID (PGID) of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `23`
                public var pid: Self.Key<Int> { .init(name: OTelAttributes.process.group_leader.pid) }
            }
        
        
        }
    
        /// `process.linux` namespace
        public var linux: LinuxAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct LinuxAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.linux.cgroup`: The control group associated with the process.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// Control groups (cgroups) are a kernel feature used to organize and manage process resources. This attribute provides the path(s) to the cgroup(s) associated with the process, which should match the contents of the [/proc/<PID>/cgroup](https://man7.org/linux/man-pages/man7/cgroups.7.html) file. 
                /// 
                /// - Examples:
                ///     - `1:name=systemd:/user.slice/user-1000.slice/session-3.scope`
                ///     - `0::/user.slice/user-1000.slice/user@1000.service/tmux-spawn-0267755b-4639-4a27-90ed-f19f88e53748.scope`
                public var cgroup: Self.Key<String> { .init(name: OTelAttributes.process.linux.cgroup) }
            }
        
        
        }
    
        /// `process.paging` namespace
        public var paging: PagingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct PagingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.paging.fault_type`: The type of page fault for this data point. Type `major` is for major/hard page faults, and `minor` is for minor/soft page faults. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                public var fault_type: Self.Key<Fault_TypeEnum> { .init(name: OTelAttributes.process.paging.fault_type) }
                
                public enum Fault_TypeEnum: String, SpanAttributeConvertible {
                    /// `major`
                    case major = "major"
                    /// `minor`
                    case minor = "minor"
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `process.real_user` namespace
        public var real_user: RealUserAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RealUserAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.real_user.id`: The real user ID (RUID) of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1000`
                public var id: Self.Key<Int> { .init(name: OTelAttributes.process.real_user.id) }
        
                /// `process.real_user.name`: The username of the real user of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `operator`
                public var name: Self.Key<String> { .init(name: OTelAttributes.process.real_user.name) }
            }
        
        
        }
    
        /// `process.runtime` namespace
        public var runtime: RuntimeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RuntimeAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.runtime.description`: An additional description about the runtime of the process, for example a specific vendor customization of the runtime environment. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `Eclipse OpenJ9 Eclipse OpenJ9 VM openj9-0.21.0`
                public var description: Self.Key<String> { .init(name: OTelAttributes.process.runtime.description) }
        
                /// `process.runtime.name`: The name of the runtime of this process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `OpenJDK Runtime Environment`
                public var name: Self.Key<String> { .init(name: OTelAttributes.process.runtime.name) }
        
                /// `process.runtime.version`: The version of the runtime of this process, as returned by the runtime without modification. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `14.0.2`
                public var version: Self.Key<String> { .init(name: OTelAttributes.process.runtime.version) }
            }
        
        
        }
    
        /// `process.saved_user` namespace
        public var saved_user: SavedUserAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct SavedUserAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.saved_user.id`: The saved user ID (SUID) of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1002`
                public var id: Self.Key<Int> { .init(name: OTelAttributes.process.saved_user.id) }
        
                /// `process.saved_user.name`: The username of the saved user. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `operator`
                public var name: Self.Key<String> { .init(name: OTelAttributes.process.saved_user.name) }
            }
        
        
        }
    
        /// `process.session_leader` namespace
        public var session_leader: SessionLeaderAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct SessionLeaderAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.session_leader.pid`: The PID of the process's session leader. This is also the session ID (SID) of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `14`
                public var pid: Self.Key<Int> { .init(name: OTelAttributes.process.session_leader.pid) }
            }
        
        
        }
    
        /// `process.user` namespace
        public var user: UserAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct UserAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `process.user.id`: The effective user ID (EUID) of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1001`
                public var id: Self.Key<Int> { .init(name: OTelAttributes.process.user.id) }
        
                /// `process.user.name`: The username of the effective user of the process. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `root`
                public var name: Self.Key<String> { .init(name: OTelAttributes.process.user.name) }
            }
        
        
        }
    }
}