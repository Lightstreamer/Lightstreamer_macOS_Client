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
            url: "https://sdk.lightstreamer.com/ls-macos-client/4.3.3/lib/ls-macos-client-4.3.3.zip", 
            checksum: "42b0914776c72b7c54935f27df31670652b46417e7a30ea959ed8c597b26f116"
        )
    ]
)
