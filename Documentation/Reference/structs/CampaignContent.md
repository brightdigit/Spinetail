**STRUCT**

# `CampaignContent`

```swift
public struct CampaignContent: Codable
```

The HTML and plain-text content for a campaign.

## Properties
### `variateContents`

```swift
public var variateContents: [CampaignContentVariateContents]?
```

Content options for multivariate campaigns.

### `plainText`

```swift
public var plainText: String?
```

The plain-text portion of the campaign. If left unspecified, we&#x27;ll generate this automatically.

### `html`

```swift
public var html: String?
```

The raw HTML for the campaign.

### `archiveHtml`

```swift
public var archiveHtml: String?
```

The Archive HTML for the campaign.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(variateContents:plainText:html:archiveHtml:links:)`

```swift
public init(variateContents: [CampaignContentVariateContents]? = nil, plainText: String? = nil, html: String? = nil, archiveHtml: String? = nil, links: [ResourceLink]? = nil)
```
