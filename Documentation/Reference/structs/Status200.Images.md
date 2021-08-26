**STRUCT**

# `Status200.Images`

```swift
public struct Images: Model
```

Information about a specific product image.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `id`

```swift
public var id: String?
```

A unique identifier for the product image.

### `url`

```swift
public var url: String?
```

The URL for a product image.

### `variantIds`

```swift
public var variantIds: [String]?
```

The list of product variants using the image.

## Methods
### `init(links:id:url:variantIds:)`

```swift
public init(links: [Links]? = nil, id: String? = nil, url: String? = nil, variantIds: [String]? = nil)
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
