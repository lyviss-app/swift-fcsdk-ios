// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-fcsdk-ios",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "FCSDKiOS",
            type: .static,
            targets: ["SwiftFCSDKiOS"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftFCSDKiOS",
            dependencies: [
                "FCSDKiOS",
                "WebRTC"
            ]),
        .binaryTarget(name: "FCSDKiOS", url: "https://swiftsdk.blob.core.windows.net/client-sdk/FCSDKiOS-4.3.6-beta10.xcframework.zip", checksum: "31d8390a3eca81f8a2c267cdc0a6f4cf04134a48d92602f3077bcb04fae3980a"),
        .binaryTarget(name: "WebRTC", url: "https://swiftsdk.blob.core.windows.net/real-time/WebRTC-m130.xcframework.zip", checksum: "b6ba196509dc0a2217f7a940beb1236e29c2f4f7a5cbd51dfdd892ccae0c9f41")
    ]
)
