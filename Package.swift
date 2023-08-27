// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraryGitLab",
    platforms: [
        .macOS(.v10_15),.iOS(.v15),.watchOS(.v8)
        ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "MyLibraryGitLab",
//            targets: ["MyLibraryGitLab"]),
//    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-generator", .upToNextMinor(from: "0.1.0")),
        .package(url: "https://github.com/apple/swift-openapi-runtime", .upToNextMinor(from: "0.1.0")),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", .upToNextMinor(from: "0.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "MyLibrary",
            dependencies: [
                            .product(
                                name: "OpenAPIRuntime",
                                package: "swift-openapi-runtime"
                            ),
                            .product(
                                name: "OpenAPIURLSession",
                                package: "swift-openapi-urlsession"
                            ),
                        ],
            path: "Sources",
            plugins: [
                            .plugin(
                                name: "OpenAPIGenerator",
                                package: "swift-openapi-generator"
                            )
                        ]
        ),
        .testTarget(
            name: "MyLibraryGitLabTests",
            dependencies: ["MyLibraryGitLab"]),
    ]
)
