**STRUCT**

# `Status200.ConversationMessages`

```swift
public struct ConversationMessages: Model
```

An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `conversationId`

```swift
public var conversationId: String?
```

A string that identifies this message's conversation

### `fromEmail`

```swift
public var fromEmail: String?
```

A label representing the email of the sender of this message

### `fromLabel`

```swift
public var fromLabel: String?
```

A label representing the sender of this message

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this message

### `listId`

```swift
public var listId: Int?
```

The list's web ID

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

### `subject`

```swift
public var subject: String?
```

The subject of this message

### `timestamp`

```swift
public var timestamp: DateTime
```

The date and time the message was either sent or received in ISO 8601 format.

## Methods
### `init(links:conversationId:fromEmail:fromLabel:id:listId:message:read:subject:timestamp:)`

```swift
public init(links: [Links]? = nil, conversationId: String? = nil, fromEmail: String? = nil, fromLabel: String? = nil, id: String? = nil, listId: Int? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: Date? = nil)
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
