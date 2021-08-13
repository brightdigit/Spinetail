**STRUCT**

# `GalleryFile3`

```swift
public struct GalleryFile3: Codable
```

An individual file listed in the File Manager.

## Properties
### `_id`

```swift
public var _id: Int?
```

The unique id of the file.

### `folderId`

```swift
public var folderId: Int?
```

The id of the folder.

### `type`

```swift
public var type: ModelType?
```

The type of file in the File Manager.

### `name`

```swift
public var name: String?
```

The name of the file.

### `fullSizeUrl`

```swift
public var fullSizeUrl: String?
```

The url of the full-size file.

### `thumbnailUrl`

```swift
public var thumbnailUrl: String?
```

The url of the thumbnail preview.

### `size`

```swift
public var size: Int?
```

The size of the file in bytes.

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time a file was added to the File Manager in ISO 8601 format.

### `createdBy`

```swift
public var createdBy: String?
```

The username of the profile that uploaded the file.

### `width`

```swift
public var width: Int?
```

The width of the image.

### `height`

```swift
public var height: Int?
```

The height of an image.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:folderId:type:name:fullSizeUrl:thumbnailUrl:size:createdAt:createdBy:width:height:links:)`

```swift
public init(_id: Int? = nil, folderId: Int? = nil, type: ModelType? = nil, name: String? = nil, fullSizeUrl: String? = nil, thumbnailUrl: String? = nil, size: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, width: Int? = nil, height: Int? = nil, links: [ResourceLink]? = nil)
```
