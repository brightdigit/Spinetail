**STRUCT**

# `Conversation1`

```swift
public struct Conversation1: Codable
```

Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this conversation.

### `messageCount`

```swift
public var messageCount: Int?
```

The total number of messages in this conversation.

### `campaignId`

```swift
public var campaignId: String?
```

The unique identifier of the campaign for this conversation.

### `listId`

```swift
public var listId: String?
```

The unique identifier of the list for this conversation.

### `unreadMessages`

```swift
public var unreadMessages: Int?
```

The number of unread messages in this conversation.

### `fromLabel`

```swift
public var fromLabel: String?
```

A label representing the sender of this message.

### `fromEmail`

```swift
public var fromEmail: String?
```

A label representing the email of the sender of this message.

### `subject`

```swift
public var subject: String?
```

The subject of the message.

### `lastMessage`

```swift
public var lastMessage: LastMessage?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:messageCount:campaignId:listId:unreadMessages:fromLabel:fromEmail:subject:lastMessage:links:)`

```swift
public init(_id: String? = nil, messageCount: Int? = nil, campaignId: String? = nil, listId: String? = nil, unreadMessages: Int? = nil, fromLabel: String? = nil, fromEmail: String? = nil, subject: String? = nil, lastMessage: LastMessage? = nil, links: [ResourceLink]? = nil)
```
