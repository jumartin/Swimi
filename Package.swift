// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swimi",
    products: [
        .library(
            name: "Swimi",
            targets: ["Swimi"]),
    ],
	
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "3.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "9.0.0"),
        .package(url: "https://github.com/mattgallagher/CwlCatchException.git", from: "2.0.0")
    ],
	
    targets: [
 
        .target(
            name: "Swimi",
            dependencies: [],
            path: "Swimi"),
        .testTarget(
            name: "SwimiTests",
            dependencies: ["Swimi", "Quick", "Nimble", "CwlCatchException"],
            path: "SwimiTests")
    ]
)
