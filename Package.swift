// swift-tools-version:5.2.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MailchimpKit",
  platforms: [.macOS(.v10_12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MailchimpKit",
            targets: ["MailchimpKit"]),
    ],
  dependencies: [
      .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0"))
  ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MailchimpKit",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "MailchimpKitTests",
            dependencies: ["MailchimpKit"]),
    ]
)
