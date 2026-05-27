// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_13),
        .tvOS(.v15),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "SAMKeychain", targets: ["SAMKeychain"]),
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            path: "Sources",
            resources: [
                .copy("../Support/SAMKeychain.bundle"),
            ],
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("Security"),
            ]
        ),
    ]
)
