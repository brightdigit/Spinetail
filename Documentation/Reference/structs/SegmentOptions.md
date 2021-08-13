**STRUCT**

# `SegmentOptions`

```swift
public struct SegmentOptions: Codable
```

An object representing all segmentation options. This object should contain a &#x60;saved_segment_id&#x60; to use an existing segment, or you can create a new segment by including both &#x60;match&#x60; and &#x60;conditions&#x60; options.

## Properties
### `savedSegmentId`

```swift
public var savedSegmentId: Int?
```

The id for an existing saved segment.

### `match`

```swift
public var match: Match?
```

Segment match type.

### `conditions`

```swift
public var conditions: [ConditionFilter]?
```

Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas).

## Methods
### `init(savedSegmentId:match:conditions:)`

```swift
public init(savedSegmentId: Int? = nil, match: Match? = nil, conditions: [ConditionFilter]? = nil)
```
