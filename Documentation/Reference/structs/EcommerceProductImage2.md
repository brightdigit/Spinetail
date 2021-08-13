**STRUCT**

# `EcommerceProductImage2`

```swift
public struct EcommerceProductImage2: Codable
```

Information about a specific product image.

## Properties
### `_id`

```swift
public var _id: String
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
### `init(_id:url:variantIds:)`

```swift
public init(_id: String, url: String, variantIds: [String]? = nil)
```
