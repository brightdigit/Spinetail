**STRUCT**

# `Body.Settings`

```swift
public struct Settings: Model
```

The settings for your campaign, including subject, from name, reply-to address, and more.

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

### `fbComments`

```swift
public var fbComments: Bool?
```

Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to `true`.

### `folderId`

```swift
public var folderId: String?
```

If the campaign is listed in a folder, the id for that folder.

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

The reply-to email address for the campaign. Note: while this field is not required for campaign creation, it is required for sending.

### `subjectLine`

```swift
public var subjectLine: String?
```

The subject line for the campaign.

### `templateId`

```swift
public var templateId: Int?
```

The id of the template to use.

### `title`

```swift
public var title: String?
```

The title of the campaign.

### `toName`

```swift
public var toName: String?
```

The campaign's custom 'To' name. Typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/).

### `useConversation`

```swift
public var useConversation: Bool?
```

Use Mailchimp Conversation feature to manage out-of-office replies.

## Methods
### `init(authenticate:autoFbPost:autoFooter:autoTweet:fbComments:folderId:fromName:inlineCss:previewText:replyTo:subjectLine:templateId:title:toName:useConversation:)`

```swift
public init(authenticate: Bool? = nil, autoFbPost: [String]? = nil, autoFooter: Bool? = nil, autoTweet: Bool? = nil, fbComments: Bool? = nil, folderId: String? = nil, fromName: String? = nil, inlineCss: Bool? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, templateId: Int? = nil, title: String? = nil, toName: String? = nil, useConversation: Bool? = nil)
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
