**STRUCT**

# `Status200.Categories`

```swift
public struct Categories: Model
```

Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The order that the categories are displayed in the list. Lower numbers display first.

### `id`

```swift
public var id: String?
```

The id for the interest category.

### `listId`

```swift
public var listId: String?
```

The unique list id for the category.

### `title`

```swift
public var title: String?
```

The text description of this category. This field appears on signup forms and is often phrased as a question.

### `type`

```swift
public var type: `Type`?
```

Determines how this category’s interests appear on signup forms.

## Methods
### `init(links:displayOrder:id:listId:title:type:)`

```swift
public init(links: [Links]? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, title: String? = nil, type: Type? = nil)
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
