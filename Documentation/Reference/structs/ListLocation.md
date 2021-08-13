**STRUCT**

# `ListLocation`

```swift
public struct ListLocation: Codable
```

## Properties
### `country`

```swift
public var country: String?
```

The name of the country.

### `cc`

```swift
public var cc: String?
```

The ISO 3166 2 digit country code.

### `percent`

```swift
public var percent: Decimal?
```

The percent of subscribers in the country.

### `total`

```swift
public var total: Int?
```

The total number of subscribers in the country.

## Methods
### `init(country:cc:percent:total:)`

```swift
public init(country: String? = nil, cc: String? = nil, percent: Decimal? = nil, total: Int? = nil)
```
