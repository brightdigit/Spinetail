**STRUCT**

# `UploadArchive`

```swift
public struct UploadArchive: Codable
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
