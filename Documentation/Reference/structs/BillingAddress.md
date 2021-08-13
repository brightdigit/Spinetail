**STRUCT**

# `BillingAddress`

```swift
public struct BillingAddress: Codable
```

The billing address for the order.

## Properties
### `name`

```swift
public var name: String?
```

The name associated with the billing address.

### `address1`

```swift
public var address1: String?
```

The billing address for the order.

### `address2`

```swift
public var address2: String?
```

An additional field for the billing address.

### `city`

```swift
public var city: String?
```

The city in the billing address.

### `province`

```swift
public var province: String?
```

The state or normalized province in the billing address.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the province in the billing address.

### `postalCode`

```swift
public var postalCode: String?
```

The postal or zip code in the billing address.

### `country`

```swift
public var country: String?
```

The country in the billing address.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for the country in the billing address.

### `longitude`

```swift
public var longitude: Decimal?
```

The longitude for the billing address location.

### `latitude`

```swift
public var latitude: Decimal?
```

The latitude for the billing address location.

### `phone`

```swift
public var phone: String?
```

The phone number for the billing address

### `company`

```swift
public var company: String?
```

The company associated with the billing address.

## Methods
### `init(name:address1:address2:city:province:provinceCode:postalCode:country:countryCode:longitude:latitude:phone:company:)`

```swift
public init(name: String? = nil, address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil, longitude: Decimal? = nil, latitude: Decimal? = nil, phone: String? = nil, company: String? = nil)
```
