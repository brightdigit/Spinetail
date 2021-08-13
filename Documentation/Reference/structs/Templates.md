**STRUCT**

# `Templates`

```swift
public struct Templates: Codable
```

A list an account&#x27;s available templates.

## Properties
### `templates`

```swift
public var templates: [TemplateInstance3]?
```

All of an account&#x27;s saved or custom templates.

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
### `init(templates:totalItems:links:)`

```swift
public init(templates: [TemplateInstance3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
