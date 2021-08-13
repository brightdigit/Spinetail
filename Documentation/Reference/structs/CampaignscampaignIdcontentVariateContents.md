**STRUCT**

# `CampaignscampaignIdcontentVariateContents`

```swift
public struct CampaignscampaignIdcontentVariateContents: Codable
```

## Properties
### `contentLabel`

```swift
public var contentLabel: String
```

The label used to identify the content option.

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

When importing a campaign, the URL for the HTML.

### `template`

```swift
public var template: TemplateContent1?
```

### `archive`

```swift
public var archive: UploadArchive?
```

## Methods
### `init(contentLabel:plainText:html:url:template:archive:)`

```swift
public init(contentLabel: String, plainText: String? = nil, html: String? = nil, url: String? = nil, template: TemplateContent1? = nil, archive: UploadArchive? = nil)
```
