**STRUCT**

# `Status200.Contact`

```swift
public struct Contact: Model
```

Information about the account contact.

## Properties
### `addr1`

```swift
public var addr1: String?
```

The street address for the account contact.

### `addr2`

```swift
public var addr2: String?
```

The street address for the account contact.

### `city`

```swift
public var city: String?
```

The city for the account contact.

### `company`

```swift
public var company: String?
```

The company name for the account.

### `country`

```swift
public var country: String?
```

The country for the account contact.

### `state`

```swift
public var state: String?
```

The state for the account contact.

### `zip`

```swift
public var zip: String?
```

The zip code for the account contact.

## Methods
### `init(addr1:addr2:city:company:country:state:zip:)`

```swift
public init(addr1: String? = nil, addr2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, state: String? = nil, zip: String? = nil)
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
