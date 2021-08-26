**STRUCT**

# `Status200.Address`

```swift
public struct Address: Model
```

The customer's address.

## Properties
### `address1`

```swift
public var address1: String?
```

The mailing address of the customer.

### `address2`

```swift
public var address2: String?
```

An additional field for the customer's mailing address.

### `city`

```swift
public var city: String?
```

The city the customer is located in.

### `country`

```swift
public var country: String?
```

The customer's country.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for the customer's country.

### `postalCode`

```swift
public var postalCode: String?
```

The customer's postal or zip code.

### `province`

```swift
public var province: String?
```

The customer's state name or normalized province.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the customer's province or state.

## Methods
### `init(address1:address2:city:country:countryCode:postalCode:province:provinceCode:)`

```swift
public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil)
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
