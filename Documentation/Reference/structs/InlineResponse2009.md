**STRUCT**

# `InlineResponse2009`

```swift
public struct InlineResponse2009: Codable
```

## Properties
### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

### `audience`

```swift
public var audience: InlineResponse2009Audience?
```

### `budget`

```swift
public var budget: InlineResponse2009Budget?
```

### `canceledAt`

```swift
public var canceledAt: Date?
```

### `channel`

```swift
public var channel: InlineResponse2009Channel?
```

### `content`

```swift
public var content: InlineResponse2009Content?
```

### `createTime`

```swift
public var createTime: Date?
```

### `emailSourceName`

```swift
public var emailSourceName: String?
```

### `endTime`

```swift
public var endTime: Date?
```

### `feedback`

```swift
public var feedback: InlineResponse2009Feedback?
```

### `hasAudience`

```swift
public var hasAudience: Bool?
```

Check if this ad has audience setup

### `hasContent`

```swift
public var hasContent: Bool?
```

Check if this ad has content

### `hasSegment`

```swift
public var hasSegment: Bool?
```

### `_id`

```swift
public var _id: String?
```

Unique ID of an Outreach

### `isConnected`

```swift
public var isConnected: Bool?
```

Check if this ad is connected to a facebook page

### `name`

```swift
public var name: String?
```

Title or name of an Outreach

### `needsAttention`

```swift
public var needsAttention: Bool?
```

### `pausedAt`

```swift
public var pausedAt: Date?
```

### `publishedTime`

```swift
public var publishedTime: Date?
```

### `recipients`

```swift
public var recipients: List10?
```

### `reportSummary`

```swift
public var reportSummary: InlineResponse2009ReportSummary?
```

### `showReport`

```swift
public var showReport: Bool?
```

Outreach report availability

### `site`

```swift
public var site: InlineResponse2009Site?
```

### `startTime`

```swift
public var startTime: Date?
```

### `status`

```swift
public var status: Status?
```

Campaign, Ad, or Page status

### `thumbnail`

```swift
public var thumbnail: String?
```

The URL of the thumbnail for this outreach

### `type`

```swift
public var type: ModelType?
```

Supported Campaign, Ad, Page type

### `updatedAt`

```swift
public var updatedAt: Date?
```

### `wasCanceledByFacebook`

```swift
public var wasCanceledByFacebook: Bool?
```

### `webId`

```swift
public var webId: Int?
```

Web ID

## Methods
### `init(links:audience:budget:canceledAt:channel:content:createTime:emailSourceName:endTime:feedback:hasAudience:hasContent:hasSegment:_id:isConnected:name:needsAttention:pausedAt:publishedTime:recipients:reportSummary:showReport:site:startTime:status:thumbnail:type:updatedAt:wasCanceledByFacebook:webId:)`

```swift
public init(links: [ResourceLink]? = nil, audience: InlineResponse2009Audience? = nil, budget: InlineResponse2009Budget? = nil, canceledAt: Date? = nil, channel: InlineResponse2009Channel? = nil, content: InlineResponse2009Content? = nil, createTime: Date? = nil, emailSourceName: String? = nil, endTime: Date? = nil, feedback: InlineResponse2009Feedback? = nil, hasAudience: Bool? = nil, hasContent: Bool? = nil, hasSegment: Bool? = nil, _id: String? = nil, isConnected: Bool? = nil, name: String? = nil, needsAttention: Bool? = nil, pausedAt: Date? = nil, publishedTime: Date? = nil, recipients: List10? = nil, reportSummary: InlineResponse2009ReportSummary? = nil, showReport: Bool? = nil, site: InlineResponse2009Site? = nil, startTime: Date? = nil, status: Status? = nil, thumbnail: String? = nil, type: ModelType? = nil, updatedAt: Date? = nil, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil)
```
