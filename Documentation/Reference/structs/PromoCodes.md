**STRUCT**

# `PromoCodes`

```swift
public struct PromoCodes: Codable
```

A collection of the store&#x27;s promo codes.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `promoCodes`

```swift
public var promoCodes: [EcommercePromoCode3]?
```

An array of objects, each representing promo codes defined for a store.

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
### `init(storeId:promoCodes:totalItems:links:)`

```swift
public init(storeId: String? = nil, promoCodes: [EcommercePromoCode3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
