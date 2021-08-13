**STRUCT**

# `ConversationMessage`

```swift
public struct ConversationMessage: Codable
```

An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this message

### `conversationId`

```swift
public var conversationId: String?
```

A string that identifies this message&#x27;s conversation

### `listId`

```swift
public var listId: Int?
```

The list&#x27;s web ID

### `fromLabel`

```swift
public var fromLabel: String?
```

A label representing the sender of this message

### `fromEmail`

```swift
public var fromEmail: String?
```

A label representing the email of the sender of this message

### `subject`

```swift
public var subject: String?
```

The subject of this message

### `message`

```swift
public var message: String?
```

The plain-text content of the message

### `read`

```swift
public var read: Bool?
```

Whether this message has been marked as read

### `timestamp`

```swift
public var timestamp: Date?
```

The date and time the message was either sent or received in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:conversationId:listId:fromLabel:fromEmail:subject:message:read:timestamp:links:)`

```swift
public init(_id: String? = nil, conversationId: String? = nil, listId: Int? = nil, fromLabel: String? = nil, fromEmail: String? = nil, subject: String? = nil, message: String? = nil, read: Bool? = nil, timestamp: Date? = nil, links: [ResourceLink]? = nil)
```
