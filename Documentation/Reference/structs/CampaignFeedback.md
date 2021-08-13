**STRUCT**

# `CampaignFeedback`

```swift
public struct CampaignFeedback: Codable
```

A specific feedback message from a specific campaign.

## Properties
### `blockId`

```swift
public var blockId: Int?
```

The block id for the editable block that the feedback addresses.

### `message`

```swift
public var message: String
```

The content of the feedback.

### `isComplete`

```swift
public var isComplete: Bool?
```

The status of feedback.

## Methods
### `init(blockId:message:isComplete:)`

```swift
public init(blockId: Int? = nil, message: String, isComplete: Bool? = nil)
```
