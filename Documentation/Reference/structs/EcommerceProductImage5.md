**STRUCT**

# `EcommerceProductImage5`

```swift
public struct EcommerceProductImage5: Codable
```

Information about a specific product image.

## Properties
### `_id`

```swift
public var _id: String?
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

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:url:variantIds:links:)`

```swift
public init(_id: String? = nil, url: String? = nil, variantIds: [String]? = nil, links: [ResourceLink]? = nil)
```
