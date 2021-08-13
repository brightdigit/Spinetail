**STRUCT**

# `CampaignFolders`

```swift
public struct CampaignFolders: Codable
```

A list of campaign folders

## Properties
### `folders`

```swift
public var folders: [CampaignFolder3]?
```

An array of objects representing campaign folders.

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
public init(folders: [CampaignFolder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
