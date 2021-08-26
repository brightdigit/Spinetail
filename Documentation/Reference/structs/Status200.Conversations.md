**STRUCT**

# `Status200.Conversations`

```swift
public struct Conversations: Model
```

Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `campaignId`

```swift
public var campaignId: String?
```

The unique identifier of the campaign for this conversation.

### `fromEmail`

```swift
public var fromEmail: String?
```

A label representing the email of the sender of this message.

### `fromLabel`

```swift
public var fromLabel: String?
```

A label representing the sender of this message.

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this conversation.

### `lastMessage`

```swift
public var lastMessage: LastMessage?
```

The most recent message in the conversation.

### `listId`

```swift
public var listId: String?
```

The unique identifier of the list for this conversation.

### `messageCount`

```swift
public var messageCount: Int?
```

The total number of messages in this conversation.

### `subject`

```swift
public var subject: String?
```

The subject of the message.

### `unreadMessages`

```swift
public var unreadMessages: Int?
```

The number of unread messages in this conversation.

## Methods
### `init(links:campaignId:fromEmail:fromLabel:id:lastMessage:listId:messageCount:subject:unreadMessages:)`

```swift
public init(links: [Links]? = nil, campaignId: String? = nil, fromEmail: String? = nil, fromLabel: String? = nil, id: String? = nil, lastMessage: LastMessage? = nil, listId: String? = nil, messageCount: Int? = nil, subject: String? = nil, unreadMessages: Int? = nil)
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
