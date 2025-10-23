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
            path: "Sources/Plugin",
            exclude: ["EmailComposer.swift", "EmailComposerPlugin.swift", "Info.plist"],
            publicHeadersPath: "."
        ),
        .target(
            name: "CapacitorEmailComposer",
            dependencies: ["CapacitorEmailComposerObjC"],
            path: "Sources/Plugin",
            exclude: ["EmailComposerPlugin.m", "EmailComposerPlugin.h"],
            resources: [.copy("Info.plist")]
        )
    ]
)
