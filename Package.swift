// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Caishen",
    defaultLocalization: "en",
        platforms: [
            .iOS(.v14)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Caishen",
            targets: ["Caishen"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Caishen"
        ),
        .executableTarget(
            name: "Example",
            dependencies: ["Caishen"],
            path: "Example/Caishen",
            resources: [
                .process("Resources")       // for .xib, .storyboard, etc.
            ], 
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "CaishenTests",
            dependencies: ["Caishen"]
        ),
    ]
)
