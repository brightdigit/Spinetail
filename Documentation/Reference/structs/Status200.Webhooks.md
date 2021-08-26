**STRUCT**

# `Status200.Webhooks`

```swift
public struct Webhooks: Model
```

Webhook configured for the given list.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `events`

```swift
public var events: Events?
```

The events that can trigger the webhook and whether they are enabled.

### `id`

```swift
public var id: String?
```

An string that uniquely identifies this webhook.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `sources`

```swift
public var sources: Sources?
```

The possible sources of any events that can trigger the webhook and whether they are enabled.

### `url`

```swift
public var url: String?
```

A valid URL for the Webhook.

## Methods
### `init(links:events:id:listId:sources:url:)`

```swift
public init(links: [Links]? = nil, events: Events? = nil, id: String? = nil, listId: String? = nil, sources: Sources? = nil, url: String? = nil)
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
