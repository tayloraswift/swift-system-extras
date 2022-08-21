// swift-tools-version:5.5
import PackageDescription

let package:Package = .init(
    name: "swift-system-extras",
    platforms: 
    [
        .macOS(.v11)
    ],
    products: 
    [
         .library(name: "SystemExtras",  targets: ["SystemExtras"]),
    ],
    dependencies: 
    [
        .package(url: "https://github.com/apple/swift-system.git",  from: "1.2.1"),
    ],
    targets: 
    [
        .target(name: "SystemExtras", 
            dependencies: 
            [
                .product(name: "SystemPackage", package: "swift-system"),
            ]),
    ]
)
