// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "CapacitorEmailComposer",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorEmailComposer",
            targets: ["CapacitorEmailComposer"]
        ),
    ],
    targets: [
        .target(
            name: "CapacitorEmailComposerObjC",
            path: "Sources/CapacitorEmailComposerObjC",
            publicHeadersPath: "."
        ),
        .target(
            name: "CapacitorEmailComposer",
            dependencies: ["CapacitorEmailComposerObjC"],
            path: "Sources/CapacitorEmailComposer",
            resources: [.copy("Info.plist")]
        )
    ]
)
