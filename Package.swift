// swift-tools-version: 6.0
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
        .library(name: "CardIO",
                 targets: ["CardIO"]),
    ],
    targets: [
        .target(
            name: "Caishen",
            dependencies: ["CardIO"],
            path: "Sources/Caishen",
            resources: [
                .process("Resources")     // for .xib, .storyboard, etc.
            ],
            publicHeadersPath: "include"
        ),
        .target(
            name: "CardIO",
            path: "Sources/CardIO",
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "CaishenTests",
            dependencies: ["Caishen"]
        ),
    ]
)
