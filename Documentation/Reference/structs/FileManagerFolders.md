**STRUCT**

# `FileManagerFolders`

```swift
public struct FileManagerFolders: Codable
```

A list of all folders in the File Manager.

## Properties
### `folders`

```swift
public var folders: [GalleryFolder3]?
```

A list of all folders in the File Manager.

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
### `init(folders:totalItems:links:)`

```swift
public init(folders: [GalleryFolder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
