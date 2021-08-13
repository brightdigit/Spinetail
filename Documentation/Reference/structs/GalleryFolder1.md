**STRUCT**

# `GalleryFolder1`

```swift
public struct GalleryFolder1: Codable
```

An individual folder listed in the File Manager.

## Properties
### `_id`

```swift
public var _id: Int?
```

The unique id for the folder.

### `name`

```swift
public var name: String?
```

The name of the folder.

### `fileCount`

```swift
public var fileCount: Int?
```

The number of files in the folder.

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time a file was added to the File Manager in ISO 8601 format.

### `createdBy`

```swift
public var createdBy: String?
```

The username of the profile that created the folder.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:name:fileCount:createdAt:createdBy:links:)`

```swift
public init(_id: Int? = nil, name: String? = nil, fileCount: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, links: [ResourceLink]? = nil)
```
