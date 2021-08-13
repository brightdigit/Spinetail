**STRUCT**

# `EcommerceCustomer2`

```swift
public struct EcommerceCustomer2: Codable
```

Information about a specific customer.

## Properties
### `_id`

```swift
public var _id: String
```

A unique identifier for the customer. Limited to 50 characters.

### `emailAddress`

```swift
public var emailAddress: String
```

The customer&#x27;s email address.

### `optInStatus`

```swift
public var optInStatus: Bool
```

The customer&#x27;s opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don&#x27;t opt in to your Mailchimp list [will be added as &#x60;Transactional&#x60; members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).

### `company`

```swift
public var company: String?
```

The customer&#x27;s company.

### `firstName`

```swift
public var firstName: String?
```

The customer&#x27;s first name.

### `lastName`

```swift
public var lastName: String?
```

The customer&#x27;s last name.

### `address`

```swift
public var address: Address1?
```

## Methods
### `init(_id:emailAddress:optInStatus:company:firstName:lastName:address:)`

```swift
public init(_id: String, emailAddress: String, optInStatus: Bool, company: String? = nil, firstName: String? = nil, lastName: String? = nil, address: Address1? = nil)
```
