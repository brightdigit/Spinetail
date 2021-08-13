**STRUCT**

# `AutomationCampaignSettings1`

```swift
public struct AutomationCampaignSettings1: Codable
```

The settings for the Automation workflow.

## Properties
### `title`

```swift
public var title: String?
```

The title of the Automation.

### `fromName`

```swift
public var fromName: String?
```

The &#x27;from&#x27; name for the Automation (not an email address).

### `replyTo`

```swift
public var replyTo: String?
```

The reply-to email address for the Automation.

### `useConversation`

```swift
public var useConversation: Bool?
```

Whether to use Mailchimp Conversation feature to manage replies

### `toName`

```swift
public var toName: String?
```

The Automation&#x27;s custom &#x27;To&#x27; name, typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/).

### `authenticate`

```swift
public var authenticate: Bool?
```

Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the Automation. Defaults to &#x60;true&#x60;.

### `autoFooter`

```swift
public var autoFooter: Bool?
```

Whether to automatically append Mailchimp&#x27;s [default footer](https://mailchimp.com/help/about-campaign-footers/) to the Automation.

### `inlineCss`

```swift
public var inlineCss: Bool?
```

Whether to automatically inline the CSS included with the Automation content.

## Methods
### `init(title:fromName:replyTo:useConversation:toName:authenticate:autoFooter:inlineCss:)`

```swift
public init(title: String? = nil, fromName: String? = nil, replyTo: String? = nil, useConversation: Bool? = nil, toName: String? = nil, authenticate: Bool? = nil, autoFooter: Bool? = nil, inlineCss: Bool? = nil)
```
