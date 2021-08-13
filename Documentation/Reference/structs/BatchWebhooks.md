**STRUCT**

# `BatchWebhooks`

```swift
public struct BatchWebhooks: Codable
```

Manage webhooks for batch requests.

## Properties
### `webhooks`

```swift
public var webhooks: [BatchWebhook3]?
```

An array of objects, each representing a Batch Webhook.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(webhooks:totalItems:links:)`

```swift
public init(webhooks: [BatchWebhook3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
