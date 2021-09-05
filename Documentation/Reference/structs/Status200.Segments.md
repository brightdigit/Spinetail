**STRUCT**

# `Status200.Segments`

```swift
public struct Segments: Model
```

Information about a specific segment.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the segment was created in ISO 8601 format.

### `id`

```swift
public var id: Int?
```

The unique id for the segment.

### `listId`

```swift
public var listId: String?
```

The list id.

### `memberCount`

```swift
public var memberCount: Int?
```

The number of active subscribers currently included in the segment.

### `name`

```swift
public var name: String?
```

The name of the segment.

### `options`

```swift
public var options: Options?
```

The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions.

### `type`

```swift
public var type: `Type`?
```

The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs).

### `updatedAt`

```swift
public var updatedAt: DateTime
```

The date and time the segment was last updated in ISO 8601 format.

## Methods
### `init(links:createdAt:id:listId:memberCount:name:options:type:updatedAt:)`

```swift
public init(links: [Links]? = nil, createdAt: Date? = nil, id: Int? = nil, listId: String? = nil, memberCount: Int? = nil, name: String? = nil, options: Options? = nil, type: Type? = nil, updatedAt: Date? = nil)
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
