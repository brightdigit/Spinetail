**STRUCT**

# `Unsubscribes`

```swift
public struct Unsubscribes: Codable
```

A list of members who have unsubscribed from a specific campaign.

## Properties
### `unsubscribes`

```swift
public var unsubscribes: [Unsubscribes2]?
```

An array of objects, each representing a member who unsubscribed from a campaign.

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
### `init(unsubscribes:campaignId:totalItems:links:)`

```swift
public init(unsubscribes: [Unsubscribes2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
