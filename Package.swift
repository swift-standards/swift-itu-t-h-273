// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-itu-t-h-273",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "ITU-T H 273", targets: ["ITU-T H 273"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ITU-T H 273",
            dependencies: []
        ),
        .testTarget(
            name: "ITU-T H 273 Tests",
            dependencies: [
                .target(name: "ITU-T H 273")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
