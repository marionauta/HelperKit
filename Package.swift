// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "HelperKit",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "HelperKit",
            targets: ["HelperKit"]),
    ],
    targets: [
        .target(
            name: "HelperKit",
            dependencies: []),
    ]
)
