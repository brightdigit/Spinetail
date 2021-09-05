**STRUCT**

# `MembersAdded.LastNote`

```swift
public struct LastNote: Model
```

The most recent Note added about this member.

## Properties
### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the note was created in ISO 8601 format.

### `createdBy`

```swift
public var createdBy: String?
```

The author of the note.

### `note`

```swift
public var note: String?
```

The content of the note.

### `noteId`

```swift
public var noteId: Int?
```

The note id.

## Methods
### `init(createdAt:createdBy:note:noteId:)`

```swift
public init(createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil)
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
