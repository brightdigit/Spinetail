**STRUCT**

# `Emails.Activity`

```swift
public struct Activity: Model
```

A summary of the interaction with the campaign.

## Properties
### `action`

```swift
public var action: String?
```

One of the following actions: 'open', 'click', or 'bounce'

### `ip`

```swift
public var ip: String?
```

The IP address recorded for the action.

### `timestamp`

```swift
public var timestamp: DateTime
```

The date and time recorded for the action in ISO 8601 format.

### `type`

```swift
public var type: String?
```

If the action is a 'bounce', the type of bounce received: 'hard', 'soft'.

### `url`

```swift
public var url: String?
```

If the action is a 'click', the URL on which the member clicked.

## Methods
### `init(action:ip:timestamp:type:url:)`

```swift
public init(action: String? = nil, ip: String? = nil, timestamp: Date? = nil, type: String? = nil, url: String? = nil)
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
