**STRUCT**

# `InterestCategory1`

```swift
public struct InterestCategory1: Codable
```

Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application.

## Properties
### `listId`

```swift
public var listId: String?
```

The unique list id for the category.

### `_id`

```swift
public var _id: String?
```

The id for the interest category.

### `title`

```swift
public var title: String?
```

The text description of this category. This field appears on signup forms and is often phrased as a question.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The order that the categories are displayed in the list. Lower numbers display first.

### `type`

```swift
public var type: ModelType?
```

Determines how this category’s interests appear on signup forms.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(listId:_id:title:displayOrder:type:links:)`

```swift
public init(listId: String? = nil, _id: String? = nil, title: String? = nil, displayOrder: Int? = nil, type: ModelType? = nil, links: [ResourceLink]? = nil)
```
