**STRUCT**

# `ListActivity`

```swift
public struct ListActivity: Codable
```

Up to the previous 180 days of daily detailed aggregated activity stats for a specific list. Does not include AutoResponder or Automation activity.

## Properties
### `activity`

```swift
public var activity: [DailyListActivity]?
```

Recent list activity.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(activity:listId:totalItems:links:)`

```swift
public init(activity: [DailyListActivity]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
