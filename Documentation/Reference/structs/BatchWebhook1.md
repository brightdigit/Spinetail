**STRUCT**

# `BatchWebhook1`

```swift
public struct BatchWebhook1: Codable
```

A webhook configured for batch status updates.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this Batch Webhook.

### `url`

```swift
public var url: String?
```

A valid URL for the Webhook.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:url:links:)`

```swift
public init(_id: String? = nil, url: String? = nil, links: [ResourceLink]? = nil)
```
