**STRUCT**

# `Status200.Interests`

```swift
public struct Interests: Model
```

Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `categoryId`

```swift
public var categoryId: String?
```

The id for the interest category.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The display order for interests.

### `id`

```swift
public var id: String?
```

The ID for the interest.

### `listId`

```swift
public var listId: String?
```

The ID for the list that this interest belongs to.

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

## Methods
### `init(links:categoryId:displayOrder:id:listId:name:subscriberCount:)`

```swift
public init(links: [Links]? = nil, categoryId: String? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, subscriberCount: String? = nil)
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
