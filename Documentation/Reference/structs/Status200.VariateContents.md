**STRUCT**

# `Status200.VariateContents`

```swift
public struct VariateContents: Model
```

The HTML and plain-text content for a campaign.

## Properties
### `contentLabel`

```swift
public var contentLabel: String?
```

Label used to identify the content option.

### `html`

```swift
public var html: String?
```

The raw HTML for the campaign.

### `plainText`

```swift
public var plainText: String?
```

The plain-text portion of the campaign. If left unspecified, we'll generate this automatically.

## Methods
### `init(contentLabel:html:plainText:)`

```swift
public init(contentLabel: String? = nil, html: String? = nil, plainText: String? = nil)
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
