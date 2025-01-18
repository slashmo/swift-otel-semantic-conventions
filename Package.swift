// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift-otel-semantic-conventions",
    products: [
        .library(name: "OTelSemanticMetricsConventions", targets: ["OTelHTTPMetricsConventions"]),
        .library(
            name: "OTelHTTPConventions",
            targets: ["OTelHTTPMetricsConventions"]
        ),
        .library(name: "OTelHTTPMetricsConventions", targets: ["OTelHTTPMetricsConventions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-metrics.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "OTelHTTPMetricsConventions",
            dependencies: [
                .product(name: "CoreMetrics", package: "swift-metrics"),
                .target(name: "OTelMetricsConventionsCore"),
            ]
        ),
        .testTarget(
            name: "OTelHTTPConventionsTests",
            dependencies: [
                .product(name: "Metrics", package: "swift-metrics"),
                .product(name: "Tracing", package: "swift-distributed-tracing"),
                .target(name: "OTelHTTPMetricsConventions"),
                .target(name: "OTelMetricsConventionsTestSupport"),
            ]
        ),

        .target(name: "OTelMetricsConventionsCore"),
        .target(name: "OTelMetricsConventionsTestSupport"),

        .target(name: "OTelConventions"),
        .testTarget(
            name: "OTelConventionsTests",
            dependencies: [
                .target(name: "OTelHostConventions"),
                .target(name: "OTelHttpConventions"),
            ]
        ),
    ]
)

// MARK: Generated Code Below. Do Not Edit

package.products.append(contentsOf: [
    .library(name: "OTelAndroidConventions", targets: ["OTelAndroidConventions"]),
    .library(name: "OTelArtifactConventions", targets: ["OTelArtifactConventions"]),
    .library(name: "OTelAspnetcoreConventions", targets: ["OTelAspnetcoreConventions"]),
    .library(name: "OTelAwsConventions", targets: ["OTelAwsConventions"]),
    .library(name: "OTelAzConventions", targets: ["OTelAzConventions"]),
    .library(name: "OTelBrowserConventions", targets: ["OTelBrowserConventions"]),
    .library(name: "OTelCicdConventions", targets: ["OTelCicdConventions"]),
    .library(name: "OTelClientConventions", targets: ["OTelClientConventions"]),
    .library(name: "OTelCloudConventions", targets: ["OTelCloudConventions"]),
    .library(name: "OTelCloudeventsConventions", targets: ["OTelCloudeventsConventions"]),
    .library(name: "OTelCloudfoundryConventions", targets: ["OTelCloudfoundryConventions"]),
    .library(name: "OTelCodeConventions", targets: ["OTelCodeConventions"]),
    .library(name: "OTelContainerConventions", targets: ["OTelContainerConventions"]),
    .library(name: "OTelCpuConventions", targets: ["OTelCpuConventions"]),
    .library(name: "OTelDbConventions", targets: ["OTelDbConventions"]),
    .library(name: "OTelDeploymentConventions", targets: ["OTelDeploymentConventions"]),
    .library(name: "OTelDestinationConventions", targets: ["OTelDestinationConventions"]),
    .library(name: "OTelDeviceConventions", targets: ["OTelDeviceConventions"]),
    .library(name: "OTelDiskConventions", targets: ["OTelDiskConventions"]),
    .library(name: "OTelDnsConventions", targets: ["OTelDnsConventions"]),
    .library(name: "OTelDotnetConventions", targets: ["OTelDotnetConventions"]),
    .library(name: "OTelEnduserConventions", targets: ["OTelEnduserConventions"]),
    .library(name: "OTelErrorConventions", targets: ["OTelErrorConventions"]),
    .library(name: "OTelEventConventions", targets: ["OTelEventConventions"]),
    .library(name: "OTelExceptionConventions", targets: ["OTelExceptionConventions"]),
    .library(name: "OTelFaasConventions", targets: ["OTelFaasConventions"]),
    .library(name: "OTelFeatureFlagConventions", targets: ["OTelFeatureFlagConventions"]),
    .library(name: "OTelFileConventions", targets: ["OTelFileConventions"]),
    .library(name: "OTelGcpConventions", targets: ["OTelGcpConventions"]),
    .library(name: "OTelGenAiConventions", targets: ["OTelGenAiConventions"]),
    .library(name: "OTelGeoConventions", targets: ["OTelGeoConventions"]),
    .library(name: "OTelGoConventions", targets: ["OTelGoConventions"]),
    .library(name: "OTelGraphqlConventions", targets: ["OTelGraphqlConventions"]),
    .library(name: "OTelHerokuConventions", targets: ["OTelHerokuConventions"]),
    .library(name: "OTelHostConventions", targets: ["OTelHostConventions"]),
    .library(name: "OTelHttpConventions", targets: ["OTelHttpConventions"]),
    .library(name: "OTelHwConventions", targets: ["OTelHwConventions"]),
    .library(name: "OTelIosConventions", targets: ["OTelIosConventions"]),
    .library(name: "OTelJvmConventions", targets: ["OTelJvmConventions"]),
    .library(name: "OTelK8SConventions", targets: ["OTelK8SConventions"]),
    .library(name: "OTelLinuxConventions", targets: ["OTelLinuxConventions"]),
    .library(name: "OTelLogConventions", targets: ["OTelLogConventions"]),
    .library(name: "OTelMessageConventions", targets: ["OTelMessageConventions"]),
    .library(name: "OTelMessagingConventions", targets: ["OTelMessagingConventions"]),
    .library(name: "OTelNetConventions", targets: ["OTelNetConventions"]),
    .library(name: "OTelNetworkConventions", targets: ["OTelNetworkConventions"]),
    .library(name: "OTelNodejsConventions", targets: ["OTelNodejsConventions"]),
    .library(name: "OTelOciConventions", targets: ["OTelOciConventions"]),
    .library(name: "OTelOpentracingConventions", targets: ["OTelOpentracingConventions"]),
    .library(name: "OTelOsConventions", targets: ["OTelOsConventions"]),
    .library(name: "OTelOtelConventions", targets: ["OTelOtelConventions"]),
    .library(name: "OTelPeerConventions", targets: ["OTelPeerConventions"]),
    .library(name: "OTelPoolConventions", targets: ["OTelPoolConventions"]),
    .library(name: "OTelProcessConventions", targets: ["OTelProcessConventions"]),
    .library(name: "OTelProfileConventions", targets: ["OTelProfileConventions"]),
    .library(name: "OTelRpcConventions", targets: ["OTelRpcConventions"]),
    .library(name: "OTelServerConventions", targets: ["OTelServerConventions"]),
    .library(name: "OTelServiceConventions", targets: ["OTelServiceConventions"]),
    .library(name: "OTelSessionConventions", targets: ["OTelSessionConventions"]),
    .library(name: "OTelSignalrConventions", targets: ["OTelSignalrConventions"]),
    .library(name: "OTelSourceConventions", targets: ["OTelSourceConventions"]),
    .library(name: "OTelSystemConventions", targets: ["OTelSystemConventions"]),
    .library(name: "OTelTelemetryConventions", targets: ["OTelTelemetryConventions"]),
    .library(name: "OTelTestConventions", targets: ["OTelTestConventions"]),
    .library(name: "OTelThreadConventions", targets: ["OTelThreadConventions"]),
    .library(name: "OTelTlsConventions", targets: ["OTelTlsConventions"]),
    .library(name: "OTelUrlConventions", targets: ["OTelUrlConventions"]),
    .library(name: "OTelUserConventions", targets: ["OTelUserConventions"]),
    .library(name: "OTelUserAgentConventions", targets: ["OTelUserAgentConventions"]),
    .library(name: "OTelV8JsConventions", targets: ["OTelV8JsConventions"]),
    .library(name: "OTelVcsConventions", targets: ["OTelVcsConventions"]),
    .library(name: "OTelWebengineConventions", targets: ["OTelWebengineConventions"]),

])
package.targets.append(contentsOf: [
    .target(
        name: "OTelAndroidConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelAndroidConventions"
    ),
    .target(
        name: "OTelArtifactConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelArtifactConventions"
    ),
    .target(
        name: "OTelAspnetcoreConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelAspnetcoreConventions"
    ),
    .target(
        name: "OTelAwsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelAwsConventions"
    ),
    .target(
        name: "OTelAzConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelAzConventions"
    ),
    .target(
        name: "OTelBrowserConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelBrowserConventions"
    ),
    .target(
        name: "OTelCicdConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelCicdConventions"
    ),
    .target(
        name: "OTelClientConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelClientConventions"
    ),
    .target(
        name: "OTelCloudConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelCloudConventions"
    ),
    .target(
        name: "OTelCloudeventsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelCloudeventsConventions"
    ),
    .target(
        name: "OTelCloudfoundryConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelCloudfoundryConventions"
    ),
    .target(
        name: "OTelCodeConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelCodeConventions"
    ),
    .target(
        name: "OTelContainerConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelContainerConventions"
    ),
    .target(
        name: "OTelCpuConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelCpuConventions"
    ),
    .target(
        name: "OTelDbConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDbConventions"
    ),
    .target(
        name: "OTelDeploymentConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDeploymentConventions"
    ),
    .target(
        name: "OTelDestinationConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDestinationConventions"
    ),
    .target(
        name: "OTelDeviceConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDeviceConventions"
    ),
    .target(
        name: "OTelDiskConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDiskConventions"
    ),
    .target(
        name: "OTelDnsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDnsConventions"
    ),
    .target(
        name: "OTelDotnetConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelDotnetConventions"
    ),
    .target(
        name: "OTelEnduserConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelEnduserConventions"
    ),
    .target(
        name: "OTelErrorConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelErrorConventions"
    ),
    .target(
        name: "OTelEventConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelEventConventions"
    ),
    .target(
        name: "OTelExceptionConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelExceptionConventions"
    ),
    .target(
        name: "OTelFaasConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelFaasConventions"
    ),
    .target(
        name: "OTelFeatureFlagConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelFeatureFlagConventions"
    ),
    .target(
        name: "OTelFileConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelFileConventions"
    ),
    .target(
        name: "OTelGcpConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelGcpConventions"
    ),
    .target(
        name: "OTelGenAiConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelGenAiConventions"
    ),
    .target(
        name: "OTelGeoConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelGeoConventions"
    ),
    .target(
        name: "OTelGoConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelGoConventions"
    ),
    .target(
        name: "OTelGraphqlConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelGraphqlConventions"
    ),
    .target(
        name: "OTelHerokuConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelHerokuConventions"
    ),
    .target(
        name: "OTelHostConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelHostConventions"
    ),
    .target(
        name: "OTelHttpConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelHttpConventions"
    ),
    .target(
        name: "OTelHwConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelHwConventions"
    ),
    .target(
        name: "OTelIosConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelIosConventions"
    ),
    .target(
        name: "OTelJvmConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelJvmConventions"
    ),
    .target(
        name: "OTelK8SConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelK8SConventions"
    ),
    .target(
        name: "OTelLinuxConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelLinuxConventions"
    ),
    .target(
        name: "OTelLogConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelLogConventions"
    ),
    .target(
        name: "OTelMessageConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelMessageConventions"
    ),
    .target(
        name: "OTelMessagingConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelMessagingConventions"
    ),
    .target(
        name: "OTelNetConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelNetConventions"
    ),
    .target(
        name: "OTelNetworkConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelNetworkConventions"
    ),
    .target(
        name: "OTelNodejsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelNodejsConventions"
    ),
    .target(
        name: "OTelOciConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelOciConventions"
    ),
    .target(
        name: "OTelOpentracingConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelOpentracingConventions"
    ),
    .target(
        name: "OTelOsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelOsConventions"
    ),
    .target(
        name: "OTelOtelConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelOtelConventions"
    ),
    .target(
        name: "OTelPeerConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelPeerConventions"
    ),
    .target(
        name: "OTelPoolConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelPoolConventions"
    ),
    .target(
        name: "OTelProcessConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelProcessConventions"
    ),
    .target(
        name: "OTelProfileConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelProfileConventions"
    ),
    .target(
        name: "OTelRpcConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelRpcConventions"
    ),
    .target(
        name: "OTelServerConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelServerConventions"
    ),
    .target(
        name: "OTelServiceConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelServiceConventions"
    ),
    .target(
        name: "OTelSessionConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelSessionConventions"
    ),
    .target(
        name: "OTelSignalrConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelSignalrConventions"
    ),
    .target(
        name: "OTelSourceConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelSourceConventions"
    ),
    .target(
        name: "OTelSystemConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelSystemConventions"
    ),
    .target(
        name: "OTelTelemetryConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelTelemetryConventions"
    ),
    .target(
        name: "OTelTestConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelTestConventions"
    ),
    .target(
        name: "OTelThreadConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelThreadConventions"
    ),
    .target(
        name: "OTelTlsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelTlsConventions"
    ),
    .target(
        name: "OTelUrlConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelUrlConventions"
    ),
    .target(
        name: "OTelUserConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelUserConventions"
    ),
    .target(
        name: "OTelUserAgentConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelUserAgentConventions"
    ),
    .target(
        name: "OTelV8JsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelV8JsConventions"
    ),
    .target(
        name: "OTelVcsConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelVcsConventions"
    ),
    .target(
        name: "OTelWebengineConventions",
        dependencies: [
            .target(name: "OTelConventions"),
            .product(name: "Tracing", package: "swift-distributed-tracing"),
        ],
        path: "Sources/Generated/OTelWebengineConventions"
    ),

])
