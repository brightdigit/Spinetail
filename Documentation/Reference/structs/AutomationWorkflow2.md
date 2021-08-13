**STRUCT**

# `AutomationWorkflow2`

```swift
public struct AutomationWorkflow2: Codable
```

A summary of an individual Automation workflow&#x27;s settings and content.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that identifies the Automation.

### `createTime`

```swift
public var createTime: Date?
```

The date and time the Automation was created in ISO 8601 format.

### `startTime`

```swift
public var startTime: Date?
```

The date and time the Automation was started in ISO 8601 format.

### `status`

```swift
public var status: Status?
```

The current status of the Automation.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent for the Automation.

### `recipients`

```swift
public var recipients: List9?
```

### `settings`

```swift
public var settings: AutomationCampaignSettings1?
```

### `tracking`

```swift
public var tracking: AutomationTrackingOptions?
```

### `triggerSettings`

```swift
public var triggerSettings: AutomationTrigger1?
```

### `reportSummary`

```swift
public var reportSummary: CampaignReportSummary2?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:createTime:startTime:status:emailsSent:recipients:settings:tracking:triggerSettings:reportSummary:links:)`

```swift
public init(_id: String? = nil, createTime: Date? = nil, startTime: Date? = nil, status: Status? = nil, emailsSent: Int? = nil, recipients: List9? = nil, settings: AutomationCampaignSettings1? = nil, tracking: AutomationTrackingOptions? = nil, triggerSettings: AutomationTrigger1? = nil, reportSummary: CampaignReportSummary2? = nil, links: [ResourceLink]? = nil)
```
