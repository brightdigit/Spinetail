**STRUCT**

# `TemplateFolders`

```swift
public struct TemplateFolders: Codable
```

A list of template folders

## Properties
### `folders`

```swift
public var folders: [TemplateFolder3]?
```

An array of objects representing template folders.

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
public init(folders: [TemplateFolder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
