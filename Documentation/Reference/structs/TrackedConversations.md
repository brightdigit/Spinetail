**STRUCT**

# `TrackedConversations`

```swift
public struct TrackedConversations: Codable
```

A collection of this account&#x27;s tracked conversations.

## Properties
### `conversations`

```swift
public var conversations: [Conversation1]?
```

A list of conversations.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(conversations:totalItems:links:)`

```swift
public init(conversations: [Conversation1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
