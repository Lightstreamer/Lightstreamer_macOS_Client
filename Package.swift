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
            url: "https://www.lightstreamer.com/repo/cocoapods/ls-macos-client/4.3.1/ls-macos-client-4.3.1.zip", 
            checksum: "9346e4b38fc1bc9ab66275899af8e5cd24b8db8caa78ea96af7dc96e594e8dd4"
        )
    ]
)
