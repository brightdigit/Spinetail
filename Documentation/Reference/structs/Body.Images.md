**STRUCT**

# `Body.Images`

```swift
public struct Images: Model
```

Information about a specific product image.

## Properties
### `id`

```swift
public var id: String
```

A unique identifier for the product image.

### `url`

```swift
public var url: String
```

The URL for a product image.

### `variantIds`

```swift
public var variantIds: [String]?
```

The list of product variants using the image.

## Methods
### `init(id:url:variantIds:)`

```swift
public init(id: String, url: String, variantIds: [String]? = nil)
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
