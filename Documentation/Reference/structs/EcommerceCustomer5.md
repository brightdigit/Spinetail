**STRUCT**

# `EcommerceCustomer5`

```swift
public struct EcommerceCustomer5: Codable
```

Information about a specific customer. Orders for existing customers should include only the &#x60;id&#x60; parameter in the &#x60;customer&#x60; object body.

## Properties
### `optInStatus`

```swift
public var optInStatus: Bool?
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
### `init(optInStatus:company:firstName:lastName:address:)`

```swift
public init(optInStatus: Bool? = nil, company: String? = nil, firstName: String? = nil, lastName: String? = nil, address: Address1? = nil)
```
