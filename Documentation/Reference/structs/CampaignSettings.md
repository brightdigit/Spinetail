**STRUCT**

# `CampaignSettings`

```swift
public struct CampaignSettings: Codable
```

Settings for the campaign including the email subject, from name, and from email address.

## Properties
### `subjectLine`

```swift
public var subjectLine: String?
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

## Methods
### `init(subjectLine:previewText:title:fromName:replyTo:)`

```swift
public init(subjectLine: String? = nil, previewText: String? = nil, title: String? = nil, fromName: String? = nil, replyTo: String? = nil)
```
