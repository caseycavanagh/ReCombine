// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReCombine",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "ReCombine", targets: ["ReCombine"]),
        .library(name: "ReCombineTest", targets: ["ReCombineTest"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "ReCombine", dependencies: []),
        .testTarget(name: "ReCombineTests", dependencies: ["ReCombine"]),
        .target(name: "ReCombineTest", dependencies: ["ReCombine"]),
    ]
)
