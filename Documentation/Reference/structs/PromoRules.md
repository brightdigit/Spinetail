**STRUCT**

# `PromoRules`

```swift
public struct PromoRules: Codable
```

A collection of the store&#x27;s promo rules.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `promoRules`

```swift
public var promoRules: [EcommercePromoRule3]?
```

An array of objects, each representing promo rules defined for a store.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(storeId:promoRules:totalItems:links:)`

```swift
public init(storeId: String? = nil, promoRules: [EcommercePromoRule3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
