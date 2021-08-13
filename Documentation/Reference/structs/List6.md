**STRUCT**

# `List6`

```swift
public struct List6: Codable
```

Information about a specific segment.

## Properties
### `_id`

```swift
public var _id: Int?
```

The unique id for the segment.

### `name`

```swift
public var name: String?
```

The name of the segment.

### `memberCount`

```swift
public var memberCount: Int?
```

The number of active subscribers currently included in the segment.

### `type`

```swift
public var type: ModelType?
```

The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source&#x3D;mc-api&amp;utm_medium&#x3D;docs&amp;utm_campaign&#x3D;apidocs).

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the segment was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the segment was last updated in ISO 8601 format.

### `options`

```swift
public var options: Conditions2?
```

### `listId`

```swift
public var listId: String?
```

The list id.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:name:memberCount:type:createdAt:updatedAt:options:listId:links:)`

```swift
public init(_id: Int? = nil, name: String? = nil, memberCount: Int? = nil, type: ModelType? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, options: Conditions2? = nil, listId: String? = nil, links: [ResourceLink]? = nil)
```
