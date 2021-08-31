// swift-tools-version:5.2.0
// swiftlint:disable explicit_top_level_acl
import PackageDescription

let package = Package(
  name: "Spinetail",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v10),
    .tvOS(.v10),
    .watchOS(.v3)
  ],
  products: [
    .library(name: "Prch", targets: ["Prch"]),
    .library(name: "Spinetail", targets: ["Spinetail"]),
    .library(name: "SpinetailNIO", targets: ["SpinetailNIO"]),
    .library(name: "SpinetailVapor", targets: ["SpinetailVapor"]),
    
  ],
  dependencies: [
    .package(url: "https://github.com/shibapm/Komondor", from: "1.1.0"), // dev
    .package(url: "https://github.com/eneko/SourceDocs", from: "1.2.1"), // dev
    .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.47.0"), // dev
    .package(url: "https://github.com/realm/SwiftLint", from: "0.43.0"), // dev
    .package(
      url: "https://github.com/shibapm/Rocket.git",
      from: "1.2.0"
    ), // dev
    .package(
      url: "https://github.com/mattpolzin/swift-test-codecov",
      .branch("master")
    ) // dev
      .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.0.0"),
    .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0")
  ],
  targets: [
    .target(name: "Prch"),
    .target(name: "Spinetail", dependencies: ["Prch"]),
    .target(name: "SpinetailNIO", dependencies: ["Spinetail", .product(name: "AsyncHTTPClient", package: "async-http-client")]),
    .target(name: "SpinetailVapor", dependencies: ["Spinetail", .product(name: "Vapor", package: "vapor")]),
    .testTarget(name: "SpinetailTests", dependencies: ["Spinetail"])
  ]
)

#if canImport(PackageConfig)
  import PackageConfig

  let requiredCoverage: Int = 85

  let config = PackageConfiguration([
    "komondor": [
      "pre-push": [
        "swift test --enable-code-coverage"
        // swiftlint:disable:next line_length
        // "swift run swift-test-codecov .build/debug/codecov/Spinetail.json --minimum \(requiredCoverage)"
      ],
      "pre-commit": [
        "swift test --enable-code-coverage --generate-linuxmain",
        "swift run swiftformat .",
        "swift run swiftlint autocorrect",
        "swift run sourcedocs generate build --clean --reproducible-docs --spm-module Spinetail",
        "git add ." // ,
        // "swift run swiftformat --lint .",
        // "swift run swiftlint"
      ]
    ]
  ]).write()
#endif
