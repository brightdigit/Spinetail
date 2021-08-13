**STRUCT**

# `List9`

```swift
public struct List9: Codable
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

The status of the list used, namely if it&#x27;s deleted or disabled.

### `listName`

```swift
public var listName: String?
```

List Name.

### `segmentOpts`

```swift
public var segmentOpts: SegmentOptions2?
```

### `storeId`

```swift
public var storeId: String?
```

The id of the store.

## Methods
### `init(listId:listIsActive:listName:segmentOpts:storeId:)`

```swift
public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentOpts: SegmentOptions2? = nil, storeId: String? = nil)
```
