**STRUCT**

# `CampaignContent1`

```swift
public struct CampaignContent1: Codable
```

The HTML and plain-text content for a campaign

## Properties
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

### `url`

```swift
public var url: String?
```

When importing a campaign, the URL where the HTML lives.

### `template`

```swift
public var template: TemplateContent?
```

### `archive`

```swift
public var archive: UploadArchive?
```

### `variateContents`

```swift
public var variateContents: [CampaignscampaignIdcontentVariateContents]?
```

Content options for [Multivariate Campaigns](https://mailchimp.com/help/about-multivariate-campaigns/). Each content option must provide HTML content and may optionally provide plain text. For campaigns not testing content, only one object should be provided.

## Methods
### `init(plainText:html:url:template:archive:variateContents:)`

```swift
public init(plainText: String? = nil, html: String? = nil, url: String? = nil, template: TemplateContent? = nil, archive: UploadArchive? = nil, variateContents: [CampaignscampaignIdcontentVariateContents]? = nil)
```
