**STRUCT**

# `TemplateDefaultContent`

```swift
public struct TemplateDefaultContent: Codable
```

Default content for a template.

## Properties
### `sections`

```swift
public var sections: [String: String]?
```

The sections that you can edit in the template, including each section&#x27;s default content.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(sections:links:)`

```swift
public init(sections: [String: String]? = nil, links: [ResourceLink]? = nil)
```
