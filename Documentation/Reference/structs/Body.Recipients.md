**STRUCT**

# `Body.Recipients`

```swift
public struct Recipients: Model
```

List settings for the campaign.

## Properties
### `listId`

```swift
public var listId: String
```

The unique list id.

### `segmentOpts`

```swift
public var segmentOpts: SegmentOpts?
```

An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options.

## Methods
### `init(listId:segmentOpts:)`

```swift
public init(listId: String, segmentOpts: SegmentOpts? = nil)
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
