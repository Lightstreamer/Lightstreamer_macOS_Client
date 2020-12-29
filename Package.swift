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
            url: "https://www.lightstreamer.com/repo/cocoapods/ls-macos-client/4.3.0/ls-macos-client-4.3.0.zip", 
            checksum: "6f7b714915de1f0a64bc5f54a57fc68aacf99b64c6acfc5cd3afb1bb8d00d3b7"
        )
    ]
)
