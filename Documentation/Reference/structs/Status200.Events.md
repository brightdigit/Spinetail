**STRUCT**

# `Status200.Events`

```swift
public struct Events: Model
```

The events that can trigger the webhook and whether they are enabled.

## Properties
### `campaign`

```swift
public var campaign: Bool?
```

Whether the webhook is triggered when a campaign is sent or cancelled.

### `cleaned`

```swift
public var cleaned: Bool?
```

Whether the webhook is triggered when a subscriber's email address is cleaned from the list.

### `profile`

```swift
public var profile: Bool?
```

Whether the webhook is triggered when a subscriber's profile is updated.

### `subscribe`

```swift
public var subscribe: Bool?
```

Whether the webhook is triggered when a list subscriber is added.

### `unsubscribe`

```swift
public var unsubscribe: Bool?
```

Whether the webhook is triggered when a list member unsubscribes.

### `upemail`

```swift
public var upemail: Bool?
```

Whether the webhook is triggered when a subscriber's email address is changed.

## Methods
### `init(campaign:cleaned:profile:subscribe:unsubscribe:upemail:)`

```swift
public init(campaign: Bool? = nil, cleaned: Bool? = nil, profile: Bool? = nil, subscribe: Bool? = nil, unsubscribe: Bool? = nil, upemail: Bool? = nil)
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
