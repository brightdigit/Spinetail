**STRUCT**

# `CampaignReports1`

```swift
public struct CampaignReports1: Codable
```

A list of reports containing campaigns marked as Sent.

## Properties
### `reports`

```swift
public var reports: [CampaignReport1]?
```

An array of objects, each representing a report resource.

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
### `init(reports:totalItems:links:)`

```swift
public init(reports: [CampaignReport1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
