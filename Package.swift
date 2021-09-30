// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTALib",
    products: [
        .library(name: "TALib", targets: ["TALib"]),
        .library(name: "CTALib", targets: ["CTALib"]),
    ],
    targets: [
        .target(
            name: "TALib",
            dependencies: ["CTALib"]
        ),
        .target(
            name: "CTALib",
            cSettings: [
                .headerSearchPath("ta_func/**"),
                .headerSearchPath("ta_common/**"),
            ]
        ),
    ]
)
