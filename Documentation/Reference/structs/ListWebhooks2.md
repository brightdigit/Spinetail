**STRUCT**

# `ListWebhooks2`

```swift
public struct ListWebhooks2: Codable
```

Webhook configured for the given list.

## Properties
### `_id`

```swift
public var _id: String?
```

An string that uniquely identifies this webhook.

### `url`

```swift
public var url: String?
```

A valid URL for the Webhook.

### `events`

```swift
public var events: Events2?
```

### `sources`

```swift
public var sources: Sources1?
```

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:url:events:sources:listId:links:)`

```swift
public init(_id: String? = nil, url: String? = nil, events: Events2? = nil, sources: Sources1? = nil, listId: String? = nil, links: [ResourceLink]? = nil)
```
