**STRUCT**

# `Body.Tags`

```swift
public struct Tags: Model
```

Add or remove tags on a member by declaring a tag either active or inactive on a member.

## Properties
### `name`

```swift
public var name: String
```

The name of the tag.

### `status`

```swift
public var status: Status
```

The status for the tag on the member, pass in active to add a tag or inactive to remove it.

## Methods
### `init(name:status:)`

```swift
public init(name: String, status: Status)
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
