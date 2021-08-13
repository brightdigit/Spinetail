**STRUCT**

# `LastMessage`

```swift
public struct LastMessage: Codable
```

The most recent message in the conversation.

## Properties
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

The subject of this message.

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

### `timestamp`

```swift
public var timestamp: Date?
```

The date and time the message was either sent or received in ISO 8601 format.

## Methods
### `init(fromLabel:fromEmail:subject:message:read:timestamp:)`

```swift
public init(fromLabel: String? = nil, fromEmail: String? = nil, subject: String? = nil, message: String? = nil, read: Bool? = nil, timestamp: Date? = nil)
```
