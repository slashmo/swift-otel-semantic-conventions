// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelAttributes {
    /// `signalr` namespace
    public enum signalr {
        /// `signalr.transport`: [SignalR transport type](https://github.com/dotnet/aspnetcore/blob/main/src/SignalR/docs/specs/TransportProtocols.md)
        /// 
        /// - Stability: stable
        /// 
        /// - Type: enum
        ///     - `server_sent_events`: ServerSentEvents protocol
        ///     - `long_polling`: LongPolling protocol
        ///     - `web_sockets`: WebSockets protocol
        /// 
        /// - Examples:
        ///     - `web_sockets`
        ///     - `long_polling`
        public static let transport = "signalr.transport"
    
        /// `signalr.connection` namespace
        public enum connection {
            /// `signalr.connection.status`: SignalR HTTP connection closure status.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: enum
            ///     - `normal_closure`: The connection was closed normally.
            ///     - `timeout`: The connection was closed due to a timeout.
            ///     - `app_shutdown`: The connection was closed because the app is shutting down.
            /// 
            /// - Examples:
            ///     - `app_shutdown`
            ///     - `timeout`
            public static let status = "signalr.connection.status"
        
        
        }
    }
}