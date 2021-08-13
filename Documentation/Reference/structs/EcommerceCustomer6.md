**STRUCT**

# `EcommerceCustomer6`

```swift
public struct EcommerceCustomer6: Codable
```

Information about a specific customer.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the customer.

### `emailAddress`

```swift
public var emailAddress: String?
```

The customer&#x27;s email address.

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

### `ordersCount`

```swift
public var ordersCount: Int?
```

The customer&#x27;s total order count.

### `totalSpent`

```swift
public var totalSpent: Decimal?
```

The total amount the customer has spent.

### `address`

```swift
public var address: Address1?
```

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the customer was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the customer was last updated in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:emailAddress:optInStatus:company:firstName:lastName:ordersCount:totalSpent:address:createdAt:updatedAt:links:)`

```swift
public init(_id: String? = nil, emailAddress: String? = nil, optInStatus: Bool? = nil, company: String? = nil, firstName: String? = nil, lastName: String? = nil, ordersCount: Int? = nil, totalSpent: Decimal? = nil, address: Address1? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil)
```
