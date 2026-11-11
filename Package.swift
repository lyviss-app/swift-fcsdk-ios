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
        .binaryTarget(name: "FCSDKiOS", url: "https://swiftsdk.blob.core.windows.net/client-sdk/FCSDKiOS-4.3.7-beta5.xcframework.zip", checksum: "1ac0c6018018faa7a7ddcb4e00743ca8e3e9dd4ab9692e9627bbb914bcef97db"),
        .binaryTarget(name: "WebRTC", url: "https://swiftsdk.blob.core.windows.net/real-time/WebRTC-m130.xcframework.zip", checksum: "b6ba196509dc0a2217f7a940beb1236e29c2f4f7a5cbd51dfdd892ccae0c9f41")
    ]
)
