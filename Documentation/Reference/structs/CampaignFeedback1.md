**STRUCT**

# `CampaignFeedback1`

```swift
public struct CampaignFeedback1: Codable
```

A specific feedback message from a specific campaign.

## Properties
### `feedbackId`

```swift
public var feedbackId: Int?
```

The individual id for the feedback item.

### `parentId`

```swift
public var parentId: Int?
```

If a reply, the id of the parent feedback item.

### `blockId`

```swift
public var blockId: Int?
```

The block id for the editable block that the feedback addresses.

### `message`

```swift
public var message: String?
```

The content of the feedback.

### `isComplete`

```swift
public var isComplete: Bool?
```

The status of feedback.

### `createdBy`

```swift
public var createdBy: String?
```

The login name of the user who created the feedback.

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the feedback item was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the feedback was last updated in ISO 8601 format.

### `source`

```swift
public var source: Source?
```

The source of the feedback.

### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(feedbackId:parentId:blockId:message:isComplete:createdBy:createdAt:updatedAt:source:campaignId:links:)`

```swift
public init(feedbackId: Int? = nil, parentId: Int? = nil, blockId: Int? = nil, message: String? = nil, isComplete: Bool? = nil, createdBy: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, source: Source? = nil, campaignId: String? = nil, links: [ResourceLink]? = nil)
```
