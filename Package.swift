// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MailchimpKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "MailchimpKit", targets: ["MailchimpKit"])
    ],
    dependencies: [
      .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.4.3")),
    ],
    targets: [
        .target(name: "MailchimpKit", dependencies: [
          "Alamofire",
        ]),
        .testTarget(name: "MailchimpKitTests", dependencies: ["MailchimpKit"])
    ]
)
