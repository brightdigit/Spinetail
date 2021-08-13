**STRUCT**

# `SendChecklist`

```swift
public struct SendChecklist: Codable
```

The send checklist for the campaign.

## Properties
### `isReady`

```swift
public var isReady: Bool?
```

Whether the campaign is ready to send.

### `items`

```swift
public var items: [SendChecklistItems]?
```

A list of feedback items to review before sending your campaign.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(isReady:items:links:)`

```swift
public init(isReady: Bool? = nil, items: [SendChecklistItems]? = nil, links: [ResourceLink]? = nil)
```
