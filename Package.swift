// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Calatrava-static",
    products: [
        .executable(
            name: "Calatrava-static",
            targets: ["Calatrava-static"]),
        ],
    dependencies: [
        .package(url:"https://github.com/enums/Pjango.git" , from: "2.1.0"),
        ],
    targets: [
        .target(
            name: "Calatrava-static",
            dependencies: [
                "Pjango",
                ])
    ]
)
