**STRUCT**

# `Body.Archive`

```swift
public struct Archive: Model
```

Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/).

## Properties
### `archiveContent`

```swift
public var archiveContent: String
```

The base64-encoded representation of the archive file.

### `archiveType`

```swift
public var archiveType: ArchiveType?
```

The type of encoded file. Defaults to zip.

## Methods
### `init(archiveContent:archiveType:)`

```swift
public init(archiveContent: String, archiveType: ArchiveType? = nil)
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
