**STRUCT**

# `DomainPerformance`

```swift
public struct DomainPerformance: Codable
```

Statistics for the top-performing email domains in a campaign.

## Properties
### `domains`

```swift
public var domains: [EmailDomain]?
```

The top 5 email domains based on total delivered emails.

### `totalSent`

```swift
public var totalSent: Int?
```

The total number of emails sent for the campaign.

### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

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
### `init(domains:totalSent:campaignId:totalItems:links:)`

```swift
public init(domains: [EmailDomain]? = nil, totalSent: Int? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
