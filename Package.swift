// swift-tools-version:6.4
// swiftlint:disable explicit_top_level_acl
import PackageDescription

let package = Package(
  name: "Spinetail",
  platforms: [
    .macOS(.v13),
    .iOS(.v16),
    .tvOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    // The public product is the abstract `Spinetail` layer (async Mailchimp
    // client, campaign DTO, auth middleware). It wraps the generated
    // swift-openapi-generator client, which consumers never see directly.
    .library(name: "Spinetail", targets: ["Spinetail"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-openapi-runtime",
      from: "1.8.0"
    ),
    .package(
      url: "https://github.com/apple/swift-openapi-urlsession",
      from: "1.0.0"
    ),
    // Transitive via swift-openapi-runtime; declared explicitly so the
    // contract tests can name HTTPRequest/HTTPResponse in their mock transport.
    .package(
      url: "https://github.com/apple/swift-http-types",
      from: "1.0.0"
    )
  ],
  targets: [
    // GENERATED ONLY: Types.swift / Client.swift are generated ahead of time by
    // Scripts/generate-openapi-spinetail.sh and committed (no build plugin).
    // The generator config lives alongside the output but is not a Swift source.
    .target(
      name: "SpinetailOpenAPI",
      dependencies: [
        .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
        .product(name: "HTTPTypes", package: "swift-http-types")
      ],
      exclude: [
        "openapi-generator-config.yaml"
      ]
    ),
    // Abstract layer: the hand-written async wrapper, campaign DTO, and auth
    // middleware. The only target consumers depend on.
    .target(
      name: "Spinetail",
      dependencies: [
        "SpinetailOpenAPI",
        .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
        .product(name: "HTTPTypes", package: "swift-http-types")
      ]
    ),
    .testTarget(
      name: "SpinetailTests",
      dependencies: [
        "Spinetail",
        "SpinetailOpenAPI",
        .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        .product(name: "HTTPTypes", package: "swift-http-types")
      ]
    )
  ]
)
