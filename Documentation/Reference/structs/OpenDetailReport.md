**STRUCT**

# `OpenDetailReport`

```swift
public struct OpenDetailReport: Codable
```

A detailed report of any campaign emails that were opened by a list member.

## Properties
### `members`

```swift
public var members: [OpenActivity1]?
```

An array of objects, each representing a list member who opened a campaign email. Each members object will contain information about the number of total opens by a single member, as well as timestamps for each open event.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `totalOpens`

```swift
public var totalOpens: Int?
```

The total number of opens matching the query regardless of pagination.

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
### `init(members:campaignId:totalOpens:totalItems:links:)`

```swift
public init(members: [OpenActivity1]? = nil, campaignId: String? = nil, totalOpens: Int? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
