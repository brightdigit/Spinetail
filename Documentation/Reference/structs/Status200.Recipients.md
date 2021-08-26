**STRUCT**

# `Status200.Recipients`

```swift
public struct Recipients: Model
```

List settings for the outreach

## Properties
### `listId`

```swift
public var listId: String?
```

The unique list id.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it's deleted or disabled.

### `listName`

```swift
public var listName: String?
```

The name of the list.

### `recipientCount`

```swift
public var recipientCount: Int?
```

Count of the recipients on the associated list. Formatted as an integer.

### `segmentOpts`

```swift
public var segmentOpts: SegmentOpts?
```

An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options.

### `segmentText`

```swift
public var segmentText: String?
```

A description of the [segment](https://mailchimp.com/help/save-and-manage-segments/) used for the campaign. Formatted as a string marked up with HTML.

## Methods
### `init(listId:listIsActive:listName:recipientCount:segmentOpts:segmentText:)`

```swift
public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, recipientCount: Int? = nil, segmentOpts: SegmentOpts? = nil, segmentText: String? = nil)
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
