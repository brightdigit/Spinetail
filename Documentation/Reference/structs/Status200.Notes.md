**STRUCT**

# `Status200.Notes`

```swift
public struct Notes: Model
```

A specific note for a specific member.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `createdAt`

```swift
public var createdAt: DateTime?
```

The date and time the note was created in ISO 8601 format.

### `createdBy`

```swift
public var createdBy: String?
```

The author of the note.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member's email address.

### `id`

```swift
public var id: Int?
```

The note id.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `note`

```swift
public var note: String?
```

The content of the note.

### `updatedAt`

```swift
public var updatedAt: DateTime?
```

The date and time the note was last updated in ISO 8601 format.

## Methods
### `init(links:createdAt:createdBy:emailId:id:listId:note:updatedAt:)`

```swift
public init(links: [Links]? = nil, createdAt: Date? = nil, createdBy: String? = nil, emailId: String? = nil, id: Int? = nil, listId: String? = nil, note: String? = nil, updatedAt: Date? = nil)
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
