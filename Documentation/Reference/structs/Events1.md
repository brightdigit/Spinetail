**STRUCT**

# `Events1`

```swift
public struct Events1: Codable
```

The events that can trigger the webhook and whether they are enabled.

## Properties
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

### `profile`

```swift
public var profile: Bool?
```

Whether the webhook is triggered when a subscriber&#x27;s profile is updated.

### `cleaned`

```swift
public var cleaned: Bool?
```

Whether the webhook is triggered when a subscriber&#x27;s email address is cleaned from the list.

### `upemail`

```swift
public var upemail: Bool?
```

Whether the webhook is triggered when a subscriber&#x27;s email address is changed.

### `campaign`

```swift
public var campaign: Bool?
```

Whether the webhook is triggered when a campaign is sent or cancelled.

## Methods
### `init(subscribe:unsubscribe:profile:cleaned:upemail:campaign:)`

```swift
public init(subscribe: Bool? = nil, unsubscribe: Bool? = nil, profile: Bool? = nil, cleaned: Bool? = nil, upemail: Bool? = nil, campaign: Bool? = nil)
```
