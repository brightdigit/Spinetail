**STRUCT**

# `TemplateContent1`

```swift
public struct TemplateContent1: Codable
```

Use this template to generate the HTML content for the campaign.

## Properties
### `_id`

```swift
public var _id: Int
```

The id of the template to use.

### `sections`

```swift
public var sections: [String: String]?
```

Content for the sections of the template. Each key should be the unique [mc:edit area](https://mailchimp.com/help/create-editable-content-areas-with-mailchimps-template-language/) name from the template.

## Methods
### `init(_id:sections:)`

```swift
public init(_id: Int, sections: [String: String]? = nil)
```
