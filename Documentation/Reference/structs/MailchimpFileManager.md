**STRUCT**

# `MailchimpFileManager`

```swift
public struct MailchimpFileManager: Codable
```

A list of available images and files stored in the File Manager for the account.

## Properties
### `files`

```swift
public var files: [GalleryFile3]?
```

A list of files and images in an account.

### `totalFileSize`

```swift
public var totalFileSize: Decimal?
```

The total size of all File Manager files in bytes.

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
### `init(files:totalFileSize:totalItems:links:)`

```swift
public init(files: [GalleryFile3]? = nil, totalFileSize: Decimal? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
