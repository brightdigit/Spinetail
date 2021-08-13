**STRUCT**

# `AddWebhook1`

```swift
public struct AddWebhook1: Codable
```

Configure a webhook for the given list.

## Properties
### `url`

```swift
public var url: String?
```

A valid URL for the Webhook.

### `events`

```swift
public var events: Events1?
```

### `sources`

```swift
public var sources: Sources?
```

## Methods
### `init(url:events:sources:)`

```swift
public init(url: String? = nil, events: Events1? = nil, sources: Sources? = nil)
```
