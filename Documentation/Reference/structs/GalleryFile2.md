**STRUCT**

# `GalleryFile2`

```swift
public struct GalleryFile2: Codable
```

An individual file listed in the File Manager.

## Properties
### `folderId`

```swift
public var folderId: Int?
```

The id of the folder. Setting &#x60;folder_id&#x60; to &#x60;0&#x60; will remove a file from its current folder.

### `name`

```swift
public var name: String?
```

The name of the file.

## Methods
### `init(folderId:name:)`

```swift
public init(folderId: Int? = nil, name: String? = nil)
```
