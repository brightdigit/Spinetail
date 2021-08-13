**STRUCT**

# `EmailActivity`

```swift
public struct EmailActivity: Codable
```

A list of member&#x27;s subscriber activity in a specific campaign.

## Properties
### `emails`

```swift
public var emails: [EmailActivity2]?
```

An array of members that were sent the campaign.

### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the sent campaign.

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
### `init(emails:campaignId:totalItems:links:)`

```swift
public init(emails: [EmailActivity2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
