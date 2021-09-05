**STRUCT**

# `Conversations.LastMessage`

```swift
public struct LastMessage: Model
```

The most recent message in the conversation.

## Properties
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

### `message`

```swift
public var message: String?
```

The plain-text content of the message.

### `read`

```swift
public var read: Bool?
```

Whether this message has been marked as read.

### `subject`

```swift
public var subject: String?
```

The subject of this message.

### `timestamp`

```swift
public var timestamp: DateTime
```

The date and time the message was either sent or received in ISO 8601 format.

## Methods
### `init(fromEmail:fromLabel:message:read:subject:timestamp:)`

```swift
public init(fromEmail: String? = nil, fromLabel: String? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: Date? = nil)
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
