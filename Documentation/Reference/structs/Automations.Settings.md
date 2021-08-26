**STRUCT**

# `Automations.Settings`

```swift
public struct Settings: Model
```

The settings for the Automation workflow.

## Properties
### `authenticate`

```swift
public var authenticate: Bool?
```

Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the Automation. Defaults to `true`.

### `autoFooter`

```swift
public var autoFooter: Bool?
```

Whether to automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the Automation.

### `fromName`

```swift
public var fromName: String?
```

The 'from' name for the Automation (not an email address).

### `inlineCss`

```swift
public var inlineCss: Bool?
```

Whether to automatically inline the CSS included with the Automation content.

### `replyTo`

```swift
public var replyTo: String?
```

The reply-to email address for the Automation.

### `title`

```swift
public var title: String?
```

The title of the Automation.

### `toName`

```swift
public var toName: String?
```

The Automation's custom 'To' name, typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/).

### `useConversation`

```swift
public var useConversation: Bool?
```

Whether to use Mailchimp Conversation feature to manage replies

## Methods
### `init(authenticate:autoFooter:fromName:inlineCss:replyTo:title:toName:useConversation:)`

```swift
public init(authenticate: Bool? = nil, autoFooter: Bool? = nil, fromName: String? = nil, inlineCss: Bool? = nil, replyTo: String? = nil, title: String? = nil, toName: String? = nil, useConversation: Bool? = nil)
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
