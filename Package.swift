// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTALib",
    products: [
        .library(name: "CTALib", targets: ["CTALib"]),
    ],
    targets: [
        .target(
            name: "CTALib",
            exclude: [
                "tools",
                "ta_abstract/excel_glue.c",
            ],
            cSettings: [
                .headerSearchPath("ta_func/**"),
                .headerSearchPath("ta_common/**"),
                .headerSearchPath("ta_abstract/**"),
            ]
        ),
    ]
)
