**STRUCT**

# `CampaignContentVariateContents`

```swift
public struct CampaignContentVariateContents: Codable
```

## Properties
### `contentLabel`

```swift
public var contentLabel: String?
```

Label used to identify the content option.

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

## Methods
### `init(contentLabel:plainText:html:)`

```swift
public init(contentLabel: String? = nil, plainText: String? = nil, html: String? = nil)
```
