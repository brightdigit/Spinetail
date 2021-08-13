**STRUCT**

# `EcommerceCartLineItem5`

```swift
public struct EcommerceCartLineItem5: Codable
```

Information about a specific cart line item.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the cart line item.

### `productId`

```swift
public var productId: String?
```

A unique identifier for the product associated with the cart line item.

### `productTitle`

```swift
public var productTitle: String?
```

The name of the product for the cart line item.

### `productVariantId`

```swift
public var productVariantId: String?
```

A unique identifier for the product variant associated with the cart line item.

### `productVariantTitle`

```swift
public var productVariantTitle: String?
```

The name of the product variant for the cart line item.

### `quantity`

```swift
public var quantity: Int?
```

The quantity of a cart line item.

### `price`

```swift
public var price: Decimal?
```

The price of a cart line item.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:productId:productTitle:productVariantId:productVariantTitle:quantity:price:links:)`

```swift
public init(_id: String? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil, price: Decimal? = nil, links: [ResourceLink]? = nil)
```
