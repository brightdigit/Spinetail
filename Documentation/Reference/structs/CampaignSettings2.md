**STRUCT**

# `CampaignSettings2`

```swift
public struct CampaignSettings2: Codable
```

The settings for your campaign, including subject, from name, reply-to address, and more.

## Properties
### `subjectLine`

```swift
public var subjectLine: String
```

The subject line for the campaign.

### `previewText`

```swift
public var previewText: String?
```

The preview text for the campaign.

### `title`

```swift
public var title: String?
```

The title of the campaign.

### `fromName`

```swift
public var fromName: String
```

The &#x27;from&#x27; name on the campaign (not an email address).

### `replyTo`

```swift
public var replyTo: String
```

The reply-to email address for the campaign.

### `useConversation`

```swift
public var useConversation: Bool?
```

Use Mailchimp Conversation feature to manage out-of-office replies.

### `toName`

```swift
public var toName: String?
```

The campaign&#x27;s custom &#x27;To&#x27; name. Typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/).

### `folderId`

```swift
public var folderId: String?
```

If the campaign is listed in a folder, the id for that folder.

### `authenticate`

```swift
public var authenticate: Bool?
```

Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the campaign. Defaults to &#x60;true&#x60;.

### `autoFooter`

```swift
public var autoFooter: Bool?
```

Automatically append Mailchimp&#x27;s [default footer](https://mailchimp.com/help/about-campaign-footers/) to the campaign.

### `inlineCss`

```swift
public var inlineCss: Bool?
```

Automatically inline the CSS included with the campaign content.

### `autoTweet`

```swift
public var autoTweet: Bool?
```

Automatically tweet a link to the [campaign archive](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) page when the campaign is sent.

### `autoFbPost`

```swift
public var autoFbPost: [String]?
```

An array of [Facebook](https://mailchimp.com/help/connect-or-disconnect-the-facebook-integration/) page ids to auto-post to.

### `fbComments`

```swift
public var fbComments: Bool?
```

Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to &#x60;true&#x60;.

### `templateId`

```swift
public var templateId: Int?
```

The id of the template to use.

## Methods
### `init(subjectLine:previewText:title:fromName:replyTo:useConversation:toName:folderId:authenticate:autoFooter:inlineCss:autoTweet:autoFbPost:fbComments:templateId:)`

```swift
public init(subjectLine: String, previewText: String? = nil, title: String? = nil, fromName: String, replyTo: String, useConversation: Bool? = nil, toName: String? = nil, folderId: String? = nil, authenticate: Bool? = nil, autoFooter: Bool? = nil, inlineCss: Bool? = nil, autoTweet: Bool? = nil, autoFbPost: [String]? = nil, fbComments: Bool? = nil, templateId: Int? = nil)
```
