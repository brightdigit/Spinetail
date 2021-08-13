**STRUCT**

# `TemplateFolder1`

```swift
public struct TemplateFolder1: Codable
```

A folder used to organize templates.

## Properties
### `name`

```swift
public var name: String?
```

The name of the folder.

### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this template folder.

### `count`

```swift
public var count: Int?
```

The number of templates in the folder.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(name:_id:count:links:)`

```swift
public init(name: String? = nil, _id: String? = nil, count: Int? = nil, links: [ResourceLink]? = nil)
```
