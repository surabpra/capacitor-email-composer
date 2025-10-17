// swift-tools-version:5.9
import PackageDescription
 
let package = Package(
    name: "CapacitorEmailComposer",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CapacitorEmailComposer",
            targets: ["Plugin"]
        ),
    ],
    dependencies: [
        // Core Capacitor dependency
        .package(url: "https://github.com/ionic-team/capacitor-swiftpm", from: "6.0.0"),
    ],
    targets: [
        .target(
            name: "Plugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swiftpm")
            ],
            path: "ios/Plugin",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include")
            ]
        ),
    ]
)