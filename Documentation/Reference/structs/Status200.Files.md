**STRUCT**

# `Status200.Files`

```swift
public struct Files: Model
```

An individual file listed in the File Manager.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time a file was added to the File Manager in ISO 8601 format.

### `createdBy`

```swift
public var createdBy: String?
```

The username of the profile that uploaded the file.

### `folderId`

```swift
public var folderId: Int?
```

The id of the folder.

### `fullSizeURL`

```swift
public var fullSizeURL: URL?
```

The url of the full-size file.

### `height`

```swift
public var height: Int?
```

The height of an image.

### `id`

```swift
public var id: Int?
```

The unique id of the file.

### `name`

```swift
public var name: String?
```

The name of the file.

### `size`

```swift
public var size: Int?
```

The size of the file in bytes.

### `thumbnailURL`

```swift
public var thumbnailURL: URL?
```

The url of the thumbnail preview.

### `type`

```swift
public var type: `Type`?
```

The type of file in the File Manager.

### `width`

```swift
public var width: Int?
```

The width of the image.

## Methods
### `init(links:createdAt:createdBy:folderId:fullSizeURL:height:id:name:size:thumbnailURL:type:width:)`

```swift
public init(links: [Links]? = nil, createdAt: Date? = nil, createdBy: String? = nil, folderId: Int? = nil, fullSizeURL: URL? = nil, height: Int? = nil, id: Int? = nil, name: String? = nil, size: Int? = nil, thumbnailURL: URL? = nil, type: Type? = nil, width: Int? = nil)
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
