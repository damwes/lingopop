// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LingoPop",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/soffes/HotKey", exact: "0.2.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "LingoPop",
            dependencies: [.product(name: "HotKey", package: "HotKey")],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ],
        )
    ]
)
