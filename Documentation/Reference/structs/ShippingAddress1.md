**STRUCT**

# `ShippingAddress1`

```swift
public struct ShippingAddress1: Codable
```

The shipping address for the order.

## Properties
### `name`

```swift
public var name: String?
```

The name associated with an order&#x27;s shipping address.

### `address1`

```swift
public var address1: String?
```

The shipping address for the order.

### `address2`

```swift
public var address2: String?
```

An additional field for the shipping address.

### `city`

```swift
public var city: String?
```

The city in the order&#x27;s shipping address.

### `province`

```swift
public var province: String?
```

The state or normalized province in the order&#x27;s shipping address.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the province or state the order&#x27;s shipping address is located in.

### `postalCode`

```swift
public var postalCode: String?
```

The postal or zip code in the order&#x27;s shipping address.

### `country`

```swift
public var country: String?
```

The country in the order&#x27;s shipping address.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for the country in the shipping address.

### `longitude`

```swift
public var longitude: Decimal?
```

The longitude for the shipping address location.

### `latitude`

```swift
public var latitude: Decimal?
```

The latitude for the shipping address location.

### `phone`

```swift
public var phone: String?
```

The phone number for the order&#x27;s shipping address

### `company`

```swift
public var company: String?
```

The company associated with an order&#x27;s shipping address.

## Methods
### `init(name:address1:address2:city:province:provinceCode:postalCode:country:countryCode:longitude:latitude:phone:company:)`

```swift
public init(name: String? = nil, address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil, longitude: Decimal? = nil, latitude: Decimal? = nil, phone: String? = nil, company: String? = nil)
```
