# Release Notes

## Unreleased

Spinetail is rebuilt on top of [swift-openapi-generator](https://github.com/apple/swift-openapi-generator).

### Changed
- Reimplemented the Mailchimp client on the generated swift-openapi client. The
  public `Spinetail` product now wraps a `SpinetailOpenAPI` target whose
  `Types.swift` / `Client.swift` are generated ahead of time from
  `OpenAPI/openapi.yaml` (via `Scripts/generate-openapi-spinetail.sh`) and
  committed — no build-time generator plugin.
- Replaced the hand-rolled request/response layer with an async wrapper
  (`Mailchimp`, `MailchimpClient`, `MailchimpCampaign`) plus an
  authentication middleware over the generated client.
- Dependencies are now `swift-openapi-runtime`, `swift-openapi-urlsession`, and
  `swift-http-types`. The URLSession transport is scoped away from WASI so the
  wasm / wasm-embedded builds link.

### Tooling / CI
- Modernized the CI to the BrightDigit Swift 6.4 template
  (`.github/workflows/Spinetail.yml`): Ubuntu (+ wasm), macOS, Windows, the full
  Apple-platform suite, and Android, plus lint on `swiftlang/swift:nightly-6.4.x-noble`.
- Added `.devcontainer`, `.mise.toml`, and refreshed lint config
  (`.swiftlint.yml`, `.swift-format`, `.swift-version`, `Scripts/lint.sh`).

_Tracked in brightdigit/Spinetail#31._
