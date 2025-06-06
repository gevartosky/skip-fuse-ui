// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "skip-fuse-ui",
    platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9), .macCatalyst(.v16)],
    products: [
        .library(name: "SkipFuseUI", type: .dynamic, targets: ["SkipFuseUI"]),
        .library(name: "SkipSwiftUI", type: .dynamic, targets: ["SkipSwiftUI"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.2.21"),
        .package(url: "https://source.skip.tools/skip-fuse.git", from: "1.0.0"),
        .package(url: "https://source.skip.tools/skip-bridge.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/swift-jni.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-ui.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "SkipFuseUI", dependencies: ["SkipSwiftUI"]),
        .target(name: "SkipSwiftUI", dependencies: [
            .product(name: "SkipFuse", package: "skip-fuse"),
            .product(name: "SkipBridge", package: "skip-bridge"),
            .product(name: "SwiftJNI", package: "swift-jni"),
            .product(name: "SkipUI", package: "skip-ui")
        ], plugins: [.plugin(name: "skipstone", package: "skip")]),
        .testTarget(name: "SkipSwiftUITests", dependencies: [
            "SkipSwiftUI",
            .product(name: "SkipTest", package: "skip")
        ], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
