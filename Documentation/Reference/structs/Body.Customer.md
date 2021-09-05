**STRUCT**

# `Body.Customer`

```swift
public struct Customer: Model
```

Information about a specific customer. For existing customers include only the `id` parameter in the `customer` object body.

## Properties
### `id`

```swift
public var id: String
```

A unique identifier for the customer. Limited to 50 characters.

### `address`

```swift
public var address: Address?
```

The customer's address.

### `company`

```swift
public var company: String?
```

The customer's company.

### `emailAddress`

```swift
public var emailAddress: String?
```

The customer's email address.

### `firstName`

```swift
public var firstName: String?
```

The customer's first name.

### `lastName`

```swift
public var lastName: String?
```

The customer's last name.

### `optInStatus`

```swift
public var optInStatus: Bool?
```

The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).

## Methods
### `init(id:address:company:emailAddress:firstName:lastName:optInStatus:)`

```swift
public init(id: String, address: Address? = nil, company: String? = nil, emailAddress: String? = nil, firstName: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil)
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
