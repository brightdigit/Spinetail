**STRUCT**

# `IndustryStats1`

```swift
public struct IndustryStats1: Codable
```

The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source&#x3D;mc-api&amp;utm_medium&#x3D;docs&amp;utm_campaign&#x3D;apidocs) for all campaigns in the account&#x27;s specified industry.

## Properties
### `openRate`

```swift
public var openRate: Decimal?
```

The average unique open rate for all campaigns in the account&#x27;s specified industry.

### `bounceRate`

```swift
public var bounceRate: Decimal?
```

The average bounce rate for all campaigns in the account&#x27;s specified industry.

### `clickRate`

```swift
public var clickRate: Decimal?
```

The average unique click rate for all campaigns in the account&#x27;s specified industry.

## Methods
### `init(openRate:bounceRate:clickRate:)`

```swift
public init(openRate: Decimal? = nil, bounceRate: Decimal? = nil, clickRate: Decimal? = nil)
```
