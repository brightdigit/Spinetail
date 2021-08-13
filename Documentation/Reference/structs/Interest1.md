**STRUCT**

# `Interest1`

```swift
public struct Interest1: Codable
```

Assign subscribers to interests to group them together. Interests are referred to as &#x27;group names&#x27; in the Mailchimp application.

## Properties
### `categoryId`

```swift
public var categoryId: String?
```

The id for the interest category.

### `listId`

```swift
public var listId: String?
```

The ID for the list that this interest belongs to.

### `_id`

```swift
public var _id: String?
```

The ID for the interest.

### `name`

```swift
public var name: String?
```

The name of the interest. This can be shown publicly on a subscription form.

### `subscriberCount`

```swift
public var subscriberCount: String?
```

The number of subscribers associated with this interest.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The display order for interests.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(categoryId:listId:_id:name:subscriberCount:displayOrder:links:)`

```swift
public init(categoryId: String? = nil, listId: String? = nil, _id: String? = nil, name: String? = nil, subscriberCount: String? = nil, displayOrder: Int? = nil, links: [ResourceLink]? = nil)
```
