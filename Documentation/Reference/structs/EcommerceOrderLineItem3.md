**STRUCT**

# `EcommerceOrderLineItem3`

```swift
public struct EcommerceOrderLineItem3: Codable
```

Information about a specific order line.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for an order line item.

### `productId`

```swift
public var productId: String?
```

A unique identifier for the product associated with an order line item.

### `productTitle`

```swift
public var productTitle: String?
```

The name of the product for an order line item.

### `productVariantId`

```swift
public var productVariantId: String?
```

A unique identifier for the product variant associated with an order line item.

### `productVariantTitle`

```swift
public var productVariantTitle: String?
```

The name of the product variant for an order line item.

### `imageUrl`

```swift
public var imageUrl: String?
```

The image URL for a product.

### `quantity`

```swift
public var quantity: Int?
```

The order line item quantity.

### `price`

```swift
public var price: Decimal?
```

The order line item price.

### `discount`

```swift
public var discount: Decimal?
```

The total discount amount applied to a line item.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:productId:productTitle:productVariantId:productVariantTitle:imageUrl:quantity:price:discount:links:)`

```swift
public init(_id: String? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, imageUrl: String? = nil, quantity: Int? = nil, price: Decimal? = nil, discount: Decimal? = nil, links: [ResourceLink]? = nil)
```
