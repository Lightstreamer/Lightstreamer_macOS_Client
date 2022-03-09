// swift-tools-version:5.3
//
// Copyright (c) Lightstreamer Srl
// See LICENSE.md for license terms
//

import PackageDescription

let package = Package(
    name: "Lightstreamer_macOS_Client",
    platforms: [
        .macOS("10.10")
    ],
    products: [
        .library(
            name: "Lightstreamer_macOS_Client", 
            targets: ["Lightstreamer_macOS_Client_Wrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Lightstreamer_macOS_Client_Wrapper",
            dependencies: [
                .target(name: "Lightstreamer_macOS_Client")
            ],
            path: "Sources",
            linkerSettings: [
                .linkedLibrary("iconv"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration")
            ]
        ),
        .binaryTarget(
            name: "Lightstreamer_macOS_Client", 
            url: "https://sdk.lightstreamer.com/ls-macos-client/4.3.2/lib/ls-macos-client-4.3.2.zip", 
            checksum: "6563d3a994ccb725c5e2e736351065d2449f2676976b9aef71c02c1fb51f0be9"
        )
    ]
)
