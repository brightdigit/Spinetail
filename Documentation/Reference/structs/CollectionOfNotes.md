**STRUCT**

# `CollectionOfNotes`

```swift
public struct CollectionOfNotes: Codable
```

The last 10 notes for a specific list member, based on date created.

## Properties
### `notes`

```swift
public var notes: [MemberNotes3]?
```

An array of objects, each representing a note resource.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `listId`

```swift
public var listId: String?
```

The list id.

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
### `init(notes:emailId:listId:totalItems:links:)`

```swift
public init(notes: [MemberNotes3]? = nil, emailId: String? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
