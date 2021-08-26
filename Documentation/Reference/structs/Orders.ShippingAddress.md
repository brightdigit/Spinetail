**STRUCT**

# `Orders.ShippingAddress`

```swift
public struct ShippingAddress: Model
```

The shipping address for the order.

## Properties
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

The city in the order's shipping address.

### `company`

```swift
public var company: String?
```

The company associated with an order's shipping address.

### `country`

```swift
public var country: String?
```

The country in the order's shipping address.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for the country in the shipping address.

### `latitude`

```swift
public var latitude: Double?
```

The latitude for the shipping address location.

### `longitude`

```swift
public var longitude: Double?
```

The longitude for the shipping address location.

### `name`

```swift
public var name: String?
```

The name associated with an order's shipping address.

### `phone`

```swift
public var phone: String?
```

The phone number for the order's shipping address

### `postalCode`

```swift
public var postalCode: String?
```

The postal or zip code in the order's shipping address.

### `province`

```swift
public var province: String?
```

The state or normalized province in the order's shipping address.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the province or state the order's shipping address is located in.

## Methods
### `init(address1:address2:city:company:country:countryCode:latitude:longitude:name:phone:postalCode:province:provinceCode:)`

```swift
public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil)
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
