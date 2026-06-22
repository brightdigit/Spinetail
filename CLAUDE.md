# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Spinetail is a Swift package wrapping the Mailchimp Marketing API. The current
codebase is a narrow, purpose-built async client for a single consumer
(`ContributeMailchimp`, a newsletter importer): it exposes only two operations —
listing sent campaigns and fetching a campaign's archive HTML.

> **The README is stale.** README.md describes an older architecture built on
> Prch/SwagGen (`Mailchimp.API`, `Client(api:session:)`, request/response
> objects like `Campaigns.PostCampaigns.Request`). None of that exists anymore.
> Do not trust the README's code examples or supported-request tables; the real
> API surface is `MailchimpClient` (see below). The Swift 6.4 /
> swift-openapi-generator migration in commit 4474323 replaced it all.

## Commands

Tooling is pinned in `.mise.toml` and run through `mise exec --`. Install once
with `mise install`.

- **Build:** `swift build`
- **Build incl. tests:** `swift build --build-tests`
- **Test (all):** `swift test`
- **Test (single):** `swift test --filter MailchimpClientTests/serverURLDerivedFromAPIKey`
  (the suite uses swift-testing `@Suite`/`@Test`, not XCTest)
- **Lint + format + build check:** `./Scripts/lint.sh`
  - Auto-fixes locally (swift-format, swiftlint --fix, periphery) unless `CI` is set.
  - `LINT_MODE=STRICT` adds `--strict`; `FORMAT_ONLY=1` skips the lint/build pass.
- **Regenerate the OpenAPI client:** `./Scripts/generate-openapi-spinetail.sh`
  (or `mise run generate-openapi`)

## Architecture

Two targets, layered:

- **`SpinetailOpenAPI`** — generated, committed code (`Types.swift`,
  `Client.swift`). Produced **ahead of time** by
  `Scripts/generate-openapi-spinetail.sh`, **not** by a build plugin. The
  generator filters the ~207k-line full Mailchimp spec
  (`OpenAPI/openapi.yaml`) down to just `getCampaigns` and
  `getCampaignsIdContent` via the `filter:` key in
  `Sources/SpinetailOpenAPI/openapi-generator-config.yaml`.
- **`Spinetail`** — the hand-written public layer and the only target consumers
  import. Three files:
  - `MailchimpClient.swift` — the public `struct MailchimpClient`. Derives the
    datacenter host from the API key suffix (`...-us21` →
    `https://us21.api.mailchimp.com/3.0`). Public methods: `sentCampaigns(forListID:)`
    and `archiveHTML(forCampaignID:)`. The `init(client:)` overload exists to
    inject a test transport.
  - `AuthenticationMiddleware.swift` — `ClientMiddleware` adding HTTP Basic auth
    (username ignored by Mailchimp, API key as password).
  - `MailchimpCampaign.swift` — flat DTO mapped from the generated campaign
    payload. All fields optional by design; mapping never throws (the consumer
    validates presence).

Tests inject a `MockTransport` (`ClientTransport` replaying canned JSON keyed by
URL path, recording observed paths + auth headers) rather than hitting the
network.

## Working rules

- **Never edit, lint, or format `Sources/SpinetailOpenAPI/`.** It's generated.
  To change it, edit the spec/config and rerun the generate script —
  regeneration must be diff-free unless the spec, config, or generator version
  changed. It's excluded from SwiftLint (`.swiftlint.yml`) and from swift-format
  (lint.sh only formats `Sources/Spinetail` + `Tests`).
- **To add an API operation:** add its operation id to `filter: operations:` in
  the generator config, regenerate, then surface it through `MailchimpClient`.
- **WASI gating:** `OpenAPIURLSession` (URLSession transport) does not build for
  wasm. Anything depending on it is wrapped in `#if !os(WASI)` (and the
  Package.swift `Platform.withoutWASI` condition). Preserve this — CI builds
  `wasm` and `wasm-embedded` legs.

## CI

`.github/workflows/Spinetail.yml` is a shared BrightDigit template (Swift 6.4).
It builds on Linux (incl. wasm/wasm-embedded, gated by the `ENABLE_WASM` repo
variable), macOS + Apple platforms, Windows, and Android. Only the standard
Linux leg runs the test suite + coverage; wasm legs are build-only.
