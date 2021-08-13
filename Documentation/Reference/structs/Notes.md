**STRUCT**

# `Notes`

```swift
public struct Notes: Codable
```

The most recent Note added about this member.

## Properties
### `noteId`

```swift
public var noteId: Int?
```

The note id.

### `createdAt`

```swift
public var createdAt: Date?
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

## Methods
### `init(noteId:createdAt:createdBy:note:)`

```swift
public init(noteId: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil)
```
