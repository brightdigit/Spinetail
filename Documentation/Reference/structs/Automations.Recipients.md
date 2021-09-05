**STRUCT**

# `Automations.Recipients`

```swift
public struct Recipients: Model
```

List settings for the Automation.

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

List Name.

### `segmentOpts`

```swift
public var segmentOpts: SegmentOpts?
```

An object representing all segmentation options.

### `storeId`

```swift
public var storeId: String?
```

The id of the store.

## Methods
### `init(listId:listIsActive:listName:segmentOpts:storeId:)`

```swift
public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentOpts: SegmentOpts? = nil, storeId: String? = nil)
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
