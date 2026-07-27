# Release Notes

## 1.0.0-beta.1

Spinetail's Mailchimp client is now generated from an OpenAPI description rather than
hand-written. This renames public types — most notably `MailchimpCampaign` becomes `Campaign` —
so this is a source-breaking release for consumers coming from `1.0.0-alpha.2`.

### Library
* Migrate to swift-openapi-generator and Swift 6.4 with multi-platform CI (client generated from `OpenAPI/openapi.yaml`; `MailchimpCampaign` renamed to `Campaign`) by @leogdion in https://github.com/brightdigit/Spinetail/pull/29
* V1.0.0 (de-vendored into a standalone package on `swift-tools-version:6.4` with complete strict concurrency) by @leogdion in https://github.com/brightdigit/Spinetail/pull/28

### Documentation
* Unify badge header, drop dead badges, add DocC catalog by @leogdion in https://github.com/brightdigit/Spinetail/pull/34
* Wave 0 review feedback: CI hygiene, docs & agent tooling by @leogdion in https://github.com/brightdigit/Spinetail/pull/32

### Tooling & CI
* Retire the CircleCI and Hound configuration in favor of the shared multi-platform GitHub Actions template (macOS/Linux/Windows/Android) by @leogdion in https://github.com/brightdigit/Spinetail/pull/29
* Move linting to mise with `.mise.toml`, `.swift-format`, `.swiftlint.yml`, and a `.swift-version` toolchain pin by @leogdion in https://github.com/brightdigit/Spinetail/pull/28
* Sync subrepo branch brightdigit-com-260621 by @leogdion in https://github.com/brightdigit/Spinetail/pull/31
* Add Claude Code GitHub Workflow by @leogdion in https://github.com/brightdigit/Spinetail/pull/30
* Drop the stale ENABLE_WATCHOS comment from the CI workflow by @leogdion in https://github.com/brightdigit/Spinetail/pull/36

**Full Changelog**: https://github.com/brightdigit/Spinetail/compare/1.0.0-alpha.2...1.0.0-beta.1
