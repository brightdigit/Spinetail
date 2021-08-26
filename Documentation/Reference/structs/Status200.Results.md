**STRUCT**

# `Status200.Results`

```swift
public struct Results: Model
```

Campaigns and Snippets found for given search term.

## Properties
### `campaign`

```swift
public var campaign: Campaign?
```

A summary of an individual campaign's settings and content.

### `snippet`

```swift
public var snippet: String?
```

## Methods
### `init(campaign:snippet:)`

```swift
public init(campaign: Campaign? = nil, snippet: String? = nil)
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
