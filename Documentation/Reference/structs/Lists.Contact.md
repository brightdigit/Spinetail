**STRUCT**

# `Lists.Contact`

```swift
public struct Contact: Model
```

[Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.

## Properties
### `address1`

```swift
public var address1: String?
```

The street address for the list contact.

### `address2`

```swift
public var address2: String?
```

The street address for the list contact.

### `city`

```swift
public var city: String?
```

The city for the list contact.

### `company`

```swift
public var company: String?
```

The company name for the list.

### `country`

```swift
public var country: String?
```

A two-character ISO3166 country code. Defaults to US if invalid.

### `phone`

```swift
public var phone: String?
```

The phone number for the list contact.

### `state`

```swift
public var state: String?
```

The state for the list contact.

### `zip`

```swift
public var zip: String?
```

The postal or zip code for the list contact.

## Methods
### `init(address1:address2:city:company:country:phone:state:zip:)`

```swift
public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, phone: String? = nil, state: String? = nil, zip: String? = nil)
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
