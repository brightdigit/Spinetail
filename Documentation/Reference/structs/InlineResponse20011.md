**STRUCT**

# `InlineResponse20011`

```swift
public struct InlineResponse20011: Codable
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

### `audienceActivity`

```swift
public var audienceActivity: InlineResponse20011AudienceActivity?
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

### `hasSegment`

```swift
public var hasSegment: Bool?
```

### `_id`

```swift
public var _id: String?
```

Unique ID of an Outreach

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
public var reportSummary: InlineResponse20011ReportSummary?
```

### `showReport`

```swift
public var showReport: Bool?
```

Outreach report availability

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
### `init(links:audience:audienceActivity:budget:canceledAt:channel:createTime:emailSourceName:endTime:hasSegment:_id:name:needsAttention:pausedAt:publishedTime:recipients:reportSummary:showReport:startTime:status:thumbnail:type:updatedAt:wasCanceledByFacebook:webId:)`

```swift
public init(links: [ResourceLink]? = nil, audience: InlineResponse2009Audience? = nil, audienceActivity: InlineResponse20011AudienceActivity? = nil, budget: InlineResponse2009Budget? = nil, canceledAt: Date? = nil, channel: InlineResponse2009Channel? = nil, createTime: Date? = nil, emailSourceName: String? = nil, endTime: Date? = nil, hasSegment: Bool? = nil, _id: String? = nil, name: String? = nil, needsAttention: Bool? = nil, pausedAt: Date? = nil, publishedTime: Date? = nil, recipients: List10? = nil, reportSummary: InlineResponse20011ReportSummary? = nil, showReport: Bool? = nil, startTime: Date? = nil, status: Status? = nil, thumbnail: String? = nil, type: ModelType? = nil, updatedAt: Date? = nil, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil)
```
