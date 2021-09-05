**STRUCT**

# `Audience.EmailSource`

```swift
public struct EmailSource: Model
```

Audience settings

## Properties
### `isSegment`

```swift
public var isSegment: Bool?
```

Is the source reference a segment

### `listName`

```swift
public var listName: String?
```

Associated list name to the source

### `name`

```swift
public var name: String?
```

Email source name

### `segmentType`

```swift
public var segmentType: String?
```

Segment type if this source is tied to a segment

### `type`

```swift
public var type: String?
```

Type of the email source

## Methods
### `init(isSegment:listName:name:segmentType:type:)`

```swift
public init(isSegment: Bool? = nil, listName: String? = nil, name: String? = nil, segmentType: String? = nil, type: String? = nil)
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
