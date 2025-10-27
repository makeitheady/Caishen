// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Caishen",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Caishen",
            targets: ["Caishen"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Caishen",
            resources: [
                .process("Resources"),
                .process("Assets/Media.xcassets"),
                .process("UI/CardView.xib")
            ]
        ),
        .testTarget(
            name: "CaishenTests",
            dependencies: ["Caishen"]),
    ]
)
