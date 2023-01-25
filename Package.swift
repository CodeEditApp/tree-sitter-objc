// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterObjC",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterObjC", targets: ["TreeSitterObjC"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterObjC",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "grammar.js",
                    "LICENSE",
                    "package.json",
                    "README.md",
                ],
                sources: [
                    "src/parser.c",
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
