**STRUCT**

# `TemplateInstance`

```swift
public struct TemplateInstance: Codable
```

Information about a specific template.

## Properties
### `name`

```swift
public var name: String
```

The name of the template.

### `folderId`

```swift
public var folderId: String?
```

The id of the folder the template is currently in.

### `html`

```swift
public var html: String
```

The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API.

## Methods
### `init(name:folderId:html:)`

```swift
public init(name: String, folderId: String? = nil, html: String)
```
