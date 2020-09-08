// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "O3API",
    products: [
        .library(name: "O3API", targets: ["O3API"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.2.2")),
    ],
    targets: [
        .target(name: "O3API", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)
