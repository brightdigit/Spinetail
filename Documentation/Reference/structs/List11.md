**STRUCT**

# `List11`

```swift
public struct List11: Codable
```

List settings for the campaign.

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

The name of the list.

### `segmentText`

```swift
public var segmentText: String?
```

A description of the [segment](https://mailchimp.com/help/getting-started-with-groups/) used for the campaign. Formatted as a string marked up with HTML.

### `recipientCount`

```swift
public var recipientCount: Int?
```

Count of the recipients on the associated list. Formatted as an integer.

### `segmentOpts`

```swift
public var segmentOpts: SegmentOptions1?
```

## Methods
### `init(listId:listIsActive:listName:segmentText:recipientCount:segmentOpts:)`

```swift
public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentText: String? = nil, recipientCount: Int? = nil, segmentOpts: SegmentOptions1? = nil)
```
