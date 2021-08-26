**STRUCT**

# `Orders.Outreach`

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

### `name`

```swift
public var name: String?
```

The name for the outreach.

### `publishedTime`

```swift
public var publishedTime: DateTime
```

The date and time the Outreach was published in ISO 8601 format.

### `type`

```swift
public var type: String?
```

The type of the outreach.

## Methods
### `init(id:name:publishedTime:type:)`

```swift
public init(id: String? = nil, name: String? = nil, publishedTime: Date? = nil, type: String? = nil)
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
