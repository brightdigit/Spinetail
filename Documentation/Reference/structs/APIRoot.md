**STRUCT**

# `APIRoot`

```swift
public struct APIRoot: Codable
```

The API root resource links to all other resources available in the API.

## Properties
### `accountId`

```swift
public var accountId: String?
```

The Mailchimp account ID.

### `loginId`

```swift
public var loginId: String?
```

The ID associated with the user who owns this API key. If you can login to multiple accounts, this ID will be the same for each account.

### `accountName`

```swift
public var accountName: String?
```

The name of the account.

### `email`

```swift
public var email: String?
```

The account email address.

### `firstName`

```swift
public var firstName: String?
```

The first name tied to the account.

### `lastName`

```swift
public var lastName: String?
```

The last name tied to the account.

### `username`

```swift
public var username: String?
```

The username tied to the account.

### `avatarUrl`

```swift
public var avatarUrl: String?
```

URL of the avatar for the user.

### `role`

```swift
public var role: String?
```

The [user role](https://mailchimp.com/help/manage-user-levels-in-your-account/) for the account.

### `memberSince`

```swift
public var memberSince: Date?
```

The date and time that the account was created in ISO 8601 format.

### `pricingPlanType`

```swift
public var pricingPlanType: PricingPlanType?
```

The type of pricing plan the account is on.

### `firstPayment`

```swift
public var firstPayment: Date?
```

Date of first payment for monthly plans.

### `accountTimezone`

```swift
public var accountTimezone: String?
```

The timezone currently set for the account.

### `accountIndustry`

```swift
public var accountIndustry: String?
```

The user-specified industry associated with the account.

### `contact`

```swift
public var contact: AccountContact?
```

### `proEnabled`

```swift
public var proEnabled: Bool?
```

Legacy - whether the account includes [Mailchimp Pro](https://mailchimp.com/help/about-mailchimp-pro/).

### `lastLogin`

```swift
public var lastLogin: Date?
```

The date and time of the last login for this account in ISO 8601 format.

### `totalSubscribers`

```swift
public var totalSubscribers: Int?
```

The total number of subscribers across all lists in the account.

### `industryStats`

```swift
public var industryStats: IndustryStats1?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(accountId:loginId:accountName:email:firstName:lastName:username:avatarUrl:role:memberSince:pricingPlanType:firstPayment:accountTimezone:accountIndustry:contact:proEnabled:lastLogin:totalSubscribers:industryStats:links:)`

```swift
public init(accountId: String? = nil, loginId: String? = nil, accountName: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, username: String? = nil, avatarUrl: String? = nil, role: String? = nil, memberSince: Date? = nil, pricingPlanType: PricingPlanType? = nil, firstPayment: Date? = nil, accountTimezone: String? = nil, accountIndustry: String? = nil, contact: AccountContact? = nil, proEnabled: Bool? = nil, lastLogin: Date? = nil, totalSubscribers: Int? = nil, industryStats: IndustryStats1? = nil, links: [ResourceLink]? = nil)
```
