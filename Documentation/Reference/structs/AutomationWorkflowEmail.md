**STRUCT**

# `AutomationWorkflowEmail`

```swift
public struct AutomationWorkflowEmail: Codable
```

A summary of an individual Automation workflow email.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies the Automation email.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this automation in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/campaigns/show/?id&#x3D;{web_id}&#x60;.

### `workflowId`

```swift
public var workflowId: String?
```

A string that uniquely identifies an Automation workflow.

### `position`

```swift
public var position: Int?
```

The position of an Automation email in a workflow.

### `delay`

```swift
public var delay: AutomationDelay1?
```

### `createTime`

```swift
public var createTime: Date?
```

The date and time the campaign was created in ISO 8601 format.

### `startTime`

```swift
public var startTime: Date?
```

The date and time the campaign was started in ISO 8601 format.

### `archiveUrl`

```swift
public var archiveUrl: String?
```

The link to the campaign&#x27;s archive version in ISO 8601 format.

### `status`

```swift
public var status: Status?
```

The current status of the campaign.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent for this campaign.

### `sendTime`

```swift
public var sendTime: Date?
```

The date and time a campaign was sent in ISO 8601 format

### `contentType`

```swift
public var contentType: String?
```

How the campaign&#x27;s content is put together (&#x27;template&#x27;, &#x27;drag_and_drop&#x27;, &#x27;html&#x27;, &#x27;url&#x27;).

### `needsBlockRefresh`

```swift
public var needsBlockRefresh: Bool?
```

Determines if the automation email needs its blocks refreshed by opening the web-based campaign editor.

### `hasLogoMergeTag`

```swift
public var hasLogoMergeTag: Bool?
```

Determines if the campaign contains the *|BRAND:LOGO|* merge tag.

### `recipients`

```swift
public var recipients: List11?
```

### `settings`

```swift
public var settings: CampaignSettings5?
```

### `tracking`

```swift
public var tracking: CampaignTrackingOptions1?
```

### `socialCard`

```swift
public var socialCard: CampaignSocialCard?
```

### `triggerSettings`

```swift
public var triggerSettings: AutomationTrigger1?
```

### `reportSummary`

```swift
public var reportSummary: CampaignReportSummary3?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:webId:workflowId:position:delay:createTime:startTime:archiveUrl:status:emailsSent:sendTime:contentType:needsBlockRefresh:hasLogoMergeTag:recipients:settings:tracking:socialCard:triggerSettings:reportSummary:links:)`

```swift
public init(_id: String? = nil, webId: Int? = nil, workflowId: String? = nil, position: Int? = nil, delay: AutomationDelay1? = nil, createTime: Date? = nil, startTime: Date? = nil, archiveUrl: String? = nil, status: Status? = nil, emailsSent: Int? = nil, sendTime: Date? = nil, contentType: String? = nil, needsBlockRefresh: Bool? = nil, hasLogoMergeTag: Bool? = nil, recipients: List11? = nil, settings: CampaignSettings5? = nil, tracking: CampaignTrackingOptions1? = nil, socialCard: CampaignSocialCard? = nil, triggerSettings: AutomationTrigger1? = nil, reportSummary: CampaignReportSummary3? = nil, links: [ResourceLink]? = nil)
```
