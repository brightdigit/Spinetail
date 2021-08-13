**STRUCT**

# `ClickDetailMembers`

```swift
public struct ClickDetailMembers: Codable
```

A collection of members who clicked on a specific link within a campaign.

## Properties
### `members`

```swift
public var members: [ClickDetailMember1]?
```

An array of objects, each representing a member who clicked a specific link within a campaign.

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
### `init(members:campaignId:totalItems:links:)`

```swift
public init(members: [ClickDetailMember1]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
