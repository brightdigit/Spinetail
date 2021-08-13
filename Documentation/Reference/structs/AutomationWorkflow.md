**STRUCT**

# `AutomationWorkflow`

```swift
public struct AutomationWorkflow: Codable
```

A summary of an individual Automation workflow&#x27;s settings and content.

## Properties
### `recipients`

```swift
public var recipients: [AutomationWorkflowRecipient]
```

### `settings`

```swift
public var settings: AutomationCampaignSettings?
```

### `triggerSettings`

```swift
public var triggerSettings: AutomationTrigger
```

## Methods
### `init(recipients:settings:triggerSettings:)`

```swift
public init(recipients: [AutomationWorkflowRecipient], settings: AutomationCampaignSettings? = nil, triggerSettings: AutomationTrigger)
```
