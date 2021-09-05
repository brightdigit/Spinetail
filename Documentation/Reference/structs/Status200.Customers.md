**STRUCT**

# `Status200.Customers`

```swift
public struct Customers: Model
```

Information about a specific customer.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

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

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the customer was created in ISO 8601 format.

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

### `id`

```swift
public var id: String?
```

A unique identifier for the customer.

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

### `ordersCount`

```swift
public var ordersCount: Int?
```

The customer's total order count.

### `totalSpent`

```swift
public var totalSpent: Double?
```

The total amount the customer has spent.

### `updatedAt`

```swift
public var updatedAt: DateTime
```

The date and time the customer was last updated in ISO 8601 format.

## Methods
### `init(links:address:company:createdAt:emailAddress:firstName:id:lastName:optInStatus:ordersCount:totalSpent:updatedAt:)`

```swift
public init(links: [Links]? = nil, address: Address? = nil, company: String? = nil, createdAt: Date? = nil, emailAddress: String? = nil, firstName: String? = nil, id: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil, ordersCount: Int? = nil, totalSpent: Double? = nil, updatedAt: Date? = nil)
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
