**STRUCT**

# `Body.VariateContents`

```swift
public struct VariateContents: Model
```

The HTML and plain-text content for a campaign

## Properties
### `contentLabel`

```swift
public var contentLabel: String
```

The label used to identify the content option.

### `archive`

```swift
public var archive: Archive?
```

Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/).

### `html`

```swift
public var html: String?
```

The raw HTML for the campaign.

### `plainText`

```swift
public var plainText: String?
```

The plain-text portion of the campaign. If left unspecified, we'll generate this automatically.

### `template`

```swift
public var template: Template?
```

Use this template to generate the HTML content for the campaign.

### `url`

```swift
public var url: String?
```

When importing a campaign, the URL for the HTML.

## Methods
### `init(contentLabel:archive:html:plainText:template:url:)`

```swift
public init(contentLabel: String, archive: Archive? = nil, html: String? = nil, plainText: String? = nil, template: Template? = nil, url: String? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
