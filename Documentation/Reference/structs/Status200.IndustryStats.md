**STRUCT**

# `Status200.IndustryStats`

```swift
public struct IndustryStats: Model
```

The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs) for all campaigns in the account's specified industry.

## Properties
### `bounceRate`

```swift
public var bounceRate: Double?
```

The average bounce rate for all campaigns in the account's specified industry.

### `clickRate`

```swift
public var clickRate: Double?
```

The average unique click rate for all campaigns in the account's specified industry.

### `openRate`

```swift
public var openRate: Double?
```

The average unique open rate for all campaigns in the account's specified industry.

## Methods
### `init(bounceRate:clickRate:openRate:)`

```swift
public init(bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
