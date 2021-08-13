**STRUCT**

# `AbuseComplaints1`

```swift
public struct AbuseComplaints1: Codable
```

A list of abuse complaints for a specific list.

## Properties
### `abuseReports`

```swift
public var abuseReports: [AbuseComplaint2]?
```

An array of objects, each representing an abuse report resource.

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
### `init(abuseReports:campaignId:totalItems:links:)`

```swift
public init(abuseReports: [AbuseComplaint2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
