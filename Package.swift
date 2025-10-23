// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "CapacitorEmailComposer",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorEmailComposer",
            targets: ["Plugin"]
        ),
    ],
    targets: [
        .target(
            name: "Plugin",
            path: "Sources/Plugin",
            publicHeadersPath: "."
        ),
    ]
)
