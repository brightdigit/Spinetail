**STRUCT**

# `MemberNotes3`

```swift
public struct MemberNotes3: Codable
```

A specific note for a specific member.

## Properties
### `_id`

```swift
public var _id: Int?
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

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the note was last updated in ISO 8601 format.

### `note`

```swift
public var note: String?
```

The content of the note.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:createdAt:createdBy:updatedAt:note:listId:emailId:links:)`

```swift
public init(_id: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, updatedAt: Date? = nil, note: String? = nil, listId: String? = nil, emailId: String? = nil, links: [ResourceLink]? = nil)
```
