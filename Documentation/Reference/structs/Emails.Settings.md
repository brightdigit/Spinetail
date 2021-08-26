**STRUCT**

# `Emails.Settings`

```swift
public struct Settings: Model
```

Settings for the campaign including the email subject, from name, and from email address.

## Properties
### `authenticate`

```swift
public var authenticate: Bool?
```

Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the campaign. Defaults to `true`.

### `autoFbPost`

```swift
public var autoFbPost: [String]?
```

An array of [Facebook](https://mailchimp.com/help/connect-or-disconnect-the-facebook-integration/) page ids to auto-post to.

### `autoFooter`

```swift
public var autoFooter: Bool?
```

Automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the campaign.

### `autoTweet`

```swift
public var autoTweet: Bool?
```

Automatically tweet a link to the [campaign archive](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) page when the campaign is sent.

### `dragAndDrop`

```swift
public var dragAndDrop: Bool?
```

Whether the campaign uses the drag-and-drop editor.

### `fbComments`

```swift
public var fbComments: Bool?
```

Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to `true`.

### `fromName`

```swift
public var fromName: String?
```

The 'from' name on the campaign (not an email address).

### `inlineCss`

```swift
public var inlineCss: Bool?
```

Automatically inline the CSS included with the campaign content.

### `previewText`

```swift
public var previewText: String?
```

The preview text for the campaign.

### `replyTo`

```swift
public var replyTo: String?
```

The reply-to email address for the campaign.

### `subjectLine`

```swift
public var subjectLine: String?
```

The subject line for the campaign.

### `templateId`

```swift
public var templateId: Int?
```

The id for the template used in this campaign.

### `title`

```swift
public var title: String?
```

The title of the campaign.

## Methods
### `init(authenticate:autoFbPost:autoFooter:autoTweet:dragAndDrop:fbComments:fromName:inlineCss:previewText:replyTo:subjectLine:templateId:title:)`

```swift
public init(authenticate: Bool? = nil, autoFbPost: [String]? = nil, autoFooter: Bool? = nil, autoTweet: Bool? = nil, dragAndDrop: Bool? = nil, fbComments: Bool? = nil, fromName: String? = nil, inlineCss: Bool? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, templateId: Int? = nil, title: String? = nil)
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
