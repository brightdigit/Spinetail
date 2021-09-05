**STRUCT**

# `Status200.ExactMatches`

```swift
public struct ExactMatches: Model
```

Exact matches of the provided search query.

## Properties
### `members`

```swift
public var members: [Members]?
```

An array of objects, each representing a specific list member.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

## Methods
### `init(members:totalItems:)`

```swift
public init(members: [Members]? = nil, totalItems: Int? = nil)
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
