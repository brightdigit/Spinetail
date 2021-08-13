**STRUCT**

# `Address1`

```swift
public struct Address1: Codable
```

The customer&#x27;s address.

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

An additional field for the customer&#x27;s mailing address.

### `city`

```swift
public var city: String?
```

The city the customer is located in.

### `province`

```swift
public var province: String?
```

The customer&#x27;s state name or normalized province.

### `provinceCode`

```swift
public var provinceCode: String?
```

The two-letter code for the customer&#x27;s province or state.

### `postalCode`

```swift
public var postalCode: String?
```

The customer&#x27;s postal or zip code.

### `country`

```swift
public var country: String?
```

The customer&#x27;s country.

### `countryCode`

```swift
public var countryCode: String?
```

The two-letter code for the customer&#x27;s country.

## Methods
### `init(address1:address2:city:province:provinceCode:postalCode:country:countryCode:)`

```swift
public init(address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil)
```
