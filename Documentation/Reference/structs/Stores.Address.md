**STRUCT**

# `Stores.Address`

```swift
public struct Address: Model
```

The store address.

## Properties
### `address1`

```swift
public var address1: String?
```

The store's mailing address.

### `address2`

```swift
public var address2: String?
```

An additional field for the store's mailing address.

### `city`

```swift
public var city: String?
```

The city the store is located in.

### `country`

```swift
public var country: String?
```

The store's country.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for to the store's country.

### `latitude`

```swift
public var latitude: Double?
```

The latitude of the store location.

### `longitude`

```swift
public var longitude: Double?
```

The longitude of the store location.

### `postalCode`

```swift
public var postalCode: String?
```

The store's postal or zip code.

### `province`

```swift
public var province: String?
```

The store's state name or normalized province.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the store's province or state.

## Methods
### `init(address1:address2:city:country:countryCode:latitude:longitude:postalCode:province:provinceCode:)`

```swift
public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil)
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
