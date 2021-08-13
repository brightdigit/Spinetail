**STRUCT**

# `SentTo`

```swift
public struct SentTo: Codable
```

A list of subscribers who were sent a specific campaign.

## Properties
### `sentTo`

```swift
public var sentTo: [SentTo1]?
```

An array of objects, each representing a campaign recipient.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

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
### `init(sentTo:campaignId:totalItems:links:)`

```swift
public init(sentTo: [SentTo1]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
