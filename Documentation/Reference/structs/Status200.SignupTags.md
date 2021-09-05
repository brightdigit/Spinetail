**STRUCT**

# `Status200.SignupTags`

```swift
public struct SignupTags: Model
```

A summary of an individual landing page's settings and content.

## Properties
### `tagId`

```swift
public var tagId: Int?
```

The unique id for the tag.

### `tagName`

```swift
public var tagName: String?
```

The name of the tag.

## Methods
### `init(tagId:tagName:)`

```swift
public init(tagId: Int? = nil, tagName: String? = nil)
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
