**STRUCT**

# `Status200.Tags`

```swift
public struct Tags: Model
```

A list of tags matching the input query.

## Properties
### `id`

```swift
public var id: Int?
```

The unique id for the tag.

### `name`

```swift
public var name: String?
```

The name of the tag.

## Methods
### `init(id:name:)`

```swift
public init(id: Int? = nil, name: String? = nil)
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
