**STRUCT**

# `ListContact1`

```swift
public struct ListContact1: Codable
```

[Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.

## Properties
### `company`

```swift
public var company: String
```

The company name for the list.

### `address1`

```swift
public var address1: String
```

The street address for the list contact.

### `address2`

```swift
public var address2: String?
```

The street address for the list contact.

### `city`

```swift
public var city: String
```

The city for the list contact.

### `state`

```swift
public var state: String
```

The state for the list contact.

### `zip`

```swift
public var zip: String
```

The postal or zip code for the list contact.

### `country`

```swift
public var country: String
```

A two-character ISO3166 country code. Defaults to US if invalid.

### `phone`

```swift
public var phone: String?
```

The phone number for the list contact.

## Methods
### `init(company:address1:address2:city:state:zip:country:phone:)`

```swift
public init(company: String, address1: String, address2: String? = nil, city: String, state: String, zip: String, country: String, phone: String? = nil)
```
