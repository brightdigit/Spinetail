**STRUCT**

# `Recipients.SegmentOpts`

```swift
public struct SegmentOpts: Model
```

An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options.

## Properties
### `conditions`

```swift
public var conditions: [[String: CodableAny]]?
```

Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas).

### `match`

```swift
public var match: Match?
```

Segment match type.

### `prebuiltSegmentId`

```swift
public var prebuiltSegmentId: String?
```

The prebuilt segment id, if a prebuilt segment has been designated for this campaign.

### `savedSegmentId`

```swift
public var savedSegmentId: Int?
```

The id for an existing saved segment.

## Methods
### `init(conditions:match:prebuiltSegmentId:savedSegmentId:)`

```swift
public init(conditions: [[String: CodableAny]]? = nil, match: Match? = nil, prebuiltSegmentId: String? = nil, savedSegmentId: Int? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
