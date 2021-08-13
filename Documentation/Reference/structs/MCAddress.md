**STRUCT**

# `MCAddress`

```swift
public struct MCAddress: Codable, Equatable
```

## Properties
### `addressLineOne`

```swift
public var addressLineOne: String
```

### `addressLineTwo`

```swift
public var addressLineTwo: String?
```

### `city`

```swift
public var city: String
```

### `state`

```swift
public var state: String?
```

### `zipCode`

```swift
public var zipCode: String
```

### `country`

```swift
public var country: CountryCode
```

## Methods
### `init(addressLineOne:addressLineTwo:city:state:zipCode:country:)`

```swift
public init(
  addressLineOne: String,
  addressLineTwo: String?,
  city: String,
  state: String?,
  zipCode: String,
  country: CountryCode
)
```
