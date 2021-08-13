**STRUCT**

# `LandingPageContent`

```swift
public struct LandingPageContent: Codable
```

The HTML content for a landing page.

## Properties
### `html`

```swift
public var html: String?
```

The raw HTML for the landing page.

### `json`

```swift
public var json: String?
```

The JSON Structure for the landing page

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(html:json:links:)`

```swift
public init(html: String? = nil, json: String? = nil, links: [ResourceLink]? = nil)
```
