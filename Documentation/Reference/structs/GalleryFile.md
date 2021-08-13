**STRUCT**

# `GalleryFile`

```swift
public struct GalleryFile: Codable
```

An individual file listed in the File Manager.

## Properties
### `folderId`

```swift
public var folderId: Int?
```

The id of the folder.

### `name`

```swift
public var name: String
```

The name of the file.

### `fileData`

```swift
public var fileData: String
```

The base64-encoded contents of the file.

## Methods
### `init(folderId:name:fileData:)`

```swift
public init(folderId: Int? = nil, name: String, fileData: String)
```
