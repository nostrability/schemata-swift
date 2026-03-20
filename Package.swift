// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SchemataSwift",
    products: [
        .library(name: "SchemataSwift", targets: ["SchemataSwift"]),
    ],
    targets: [
        .target(
            name: "SchemataSwift",
            resources: [.copy("Resources")]
        ),
        .testTarget(
            name: "SchemataSwiftTests",
            dependencies: ["SchemataSwift"]
        ),
    ]
)
