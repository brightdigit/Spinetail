**STRUCT**

# `Status200.Items`

```swift
public struct Items: Model
```

The send checklist for the campaign.

## Properties
### `details`

```swift
public var details: String?
```

Details about the specific feedback item.

### `heading`

```swift
public var heading: String?
```

The heading for the specific item.

### `id`

```swift
public var id: Int?
```

The ID for the specific item.

### `type`

```swift
public var type: `Type`?
```

The item type.

## Methods
### `init(details:heading:id:type:)`

```swift
public init(details: String? = nil, heading: String? = nil, id: Int? = nil, type: Type? = nil)
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
