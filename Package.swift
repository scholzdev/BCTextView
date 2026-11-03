// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BCTextView",
    platforms: [.macOS("27.0")],
    products: [
        // A Fast, Efficient text view for code.
        .library(
            name: "BCTextView",
            targets: ["BCTextView"]
        ),
    ],
    dependencies: [
        // Text mutation, storage helpers
        .package(
            url: "https://github.com/ChimeHQ/TextStory",
            from: "0.9.0"
        ),
        // Useful data structures
        .package(
            url: "https://github.com/apple/swift-collections.git",
            .upToNextMajor(from: "1.0.0")
        ),
        // SwiftLint
        .package(
            url: "https://github.com/lukepistrol/SwiftLintPlugin",
            from: "0.52.2"
        )
    ],
    targets: [
        // The main text view target.
        .target(
            name: "BCTextView",
            dependencies: [
                "TextStory",
                .product(name: "Collections", package: "swift-collections"),
                "BCTextViewObjC"
            ],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        ),

        // ObjC addons
        .target(
            name: "BCTextViewObjC",
            publicHeadersPath: "include"
        ),

        // Tests for the text view
        .testTarget(
            name: "BCTextViewTests",
            dependencies: [
                "BCTextView"
            ],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        ),
    ]
)
