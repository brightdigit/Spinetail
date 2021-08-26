**STRUCT**

# `Body.Outreach`

```swift
public struct Outreach: Model
```

The outreach associated with this order. For example, an email campaign or Facebook ad.

## Properties
### `id`

```swift
public var id: String?
```

A unique identifier for the outreach. Can be an email campaign ID.

## Methods
### `init(id:)`

```swift
public init(id: String? = nil)
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
