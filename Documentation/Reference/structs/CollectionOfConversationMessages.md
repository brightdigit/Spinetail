**STRUCT**

# `CollectionOfConversationMessages`

```swift
public struct CollectionOfConversationMessages: Codable
```

Messages from a specific conversation.

## Properties
### `conversationMessages`

```swift
public var conversationMessages: [ConversationMessage1]?
```

An array of objects, each representing a conversation messages resources.

### `conversationId`

```swift
public var conversationId: String?
```

A string that identifies this conversation.

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
### `init(conversationMessages:conversationId:totalItems:links:)`

```swift
public init(conversationMessages: [ConversationMessage1]? = nil, conversationId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
