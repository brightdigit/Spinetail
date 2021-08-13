**STRUCT**

# `AbuseComplaints`

```swift
public struct AbuseComplaints: Codable
```

A collection of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to &#x27;report spam&#x27; in their email program.

## Properties
### `abuseReports`

```swift
public var abuseReports: [AbuseComplaint3]?
```

An array of objects, each representing an abuse report resource.

### `listId`

```swift
public var listId: String?
```

The list id for the abuse report.

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
### `init(abuseReports:listId:totalItems:links:)`

```swift
public init(abuseReports: [AbuseComplaint3]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
