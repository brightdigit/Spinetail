**STRUCT**

# `Body.Template`

```swift
public struct Template: Model
```

Use this template to generate the HTML content of the campaign

## Properties
### `id`

```swift
public var id: Int
```

The id of the template to use.

### `sections`

```swift
public var sections: [String: CodableAny]?
```

Content for the sections of the template. Each key should be the unique [mc:edit area](https://mailchimp.com/help/create-editable-content-areas-with-mailchimps-template-language/) name from the template.

## Methods
### `init(id:sections:)`

```swift
public init(id: Int, sections: [String: CodableAny]? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
