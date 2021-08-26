**STRUCT**

# `Status200.Forwards`

```swift
public struct Forwards: Model
```

An object describing the forwards and forward activity for the campaign.

## Properties
### `forwardsCount`

```swift
public var forwardsCount: Int?
```

How many times the campaign has been forwarded.

### `forwardsOpens`

```swift
public var forwardsOpens: Int?
```

How many times the forwarded campaign has been opened.

## Methods
### `init(forwardsCount:forwardsOpens:)`

```swift
public init(forwardsCount: Int? = nil, forwardsOpens: Int? = nil)
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
