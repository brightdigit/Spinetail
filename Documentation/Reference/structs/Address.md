**STRUCT**

# `Address`

```swift
public struct Address: Codable
```

The store address.

## Properties
### `address1`

```swift
public var address1: String?
```

The store&#x27;s mailing address.

### `address2`

```swift
public var address2: String?
```

An additional field for the store&#x27;s mailing address.

### `city`

```swift
public var city: String?
```

The city the store is located in.

### `province`

```swift
public var province: String?
```

The store&#x27;s state name or normalized province.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the store&#x27;s province or state.

### `postalCode`

```swift
public var postalCode: String?
```

The store&#x27;s postal or zip code.

### `country`

```swift
public var country: String?
```

The store&#x27;s country.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for to the store&#x27;s country.

### `longitude`

```swift
public var longitude: Decimal?
```

The longitude of the store location.

### `latitude`

```swift
public var latitude: Decimal?
```

The latitude of the store location.

## Methods
### `init(address1:address2:city:province:provinceCode:postalCode:country:countryCode:longitude:latitude:)`

```swift
public init(address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil, longitude: Decimal? = nil, latitude: Decimal? = nil)
```
