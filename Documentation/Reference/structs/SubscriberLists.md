**STRUCT**

# `SubscriberLists`

```swift
public struct SubscriberLists: Codable
```

A collection of subscriber lists for this account. Lists contain subscribers who have opted-in to receive correspondence from you or your organization.

## Properties
### `lists`

```swift
public var lists: [SubscriberList3]
```

An array of objects, each representing a list.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `constraints`

```swift
public var constraints: CollectionAuthorization?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(lists:totalItems:constraints:links:)`

```swift
public init(lists: [SubscriberList3], totalItems: Int? = nil, constraints: CollectionAuthorization? = nil, links: [ResourceLink]? = nil)
```
