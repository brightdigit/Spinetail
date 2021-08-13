**STRUCT**

# `AutomationCampaignSettings`

```swift
public struct AutomationCampaignSettings: Codable
```

The settings for the Automation workflow.

## Properties
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
### `init(fromName:replyTo:)`

```swift
public init(fromName: String? = nil, replyTo: String? = nil)
```
