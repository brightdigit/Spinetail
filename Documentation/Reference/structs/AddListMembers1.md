**STRUCT**

# `AddListMembers1`

```swift
public struct AddListMembers1: Codable
```

Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.

## Properties
### `emailAddress`

```swift
public var emailAddress: String
```

Email address for a subscriber.

### `emailType`

```swift
public var emailType: String?
```

Type of email this member asked to get (&#x27;html&#x27; or &#x27;text&#x27;).

### `status`

```swift
public var status: Status
```

Subscriber&#x27;s current status.

### `mergeFields`

```swift
public var mergeFields: [String: String]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;}

### `interests`

```swift
public var interests: [String: Bool]?
```

The key of this object&#x27;s properties is the ID of the interest in question.

### `language`

```swift
public var language: String?
```

If set/detected, the [subscriber&#x27;s language](https://mailchimp.com/help/view-and-edit-contact-languages/).

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/view-and-edit-contact-languages/) for subscriber.

### `location`

```swift
public var location: Location?
```

### `marketingPermissions`

```swift
public var marketingPermissions: [MarketingPermission]?
```

The marketing permissions for the subscriber.

### `ipSignup`

```swift
public var ipSignup: String?
```

IP address the subscriber signed up from.

### `timestampSignup`

```swift
public var timestampSignup: Date?
```

The date and time the subscriber signed up for the list in ISO 8601 format.

### `ipOpt`

```swift
public var ipOpt: String?
```

The IP address the subscriber used to confirm their opt-in status.

### `timestampOpt`

```swift
public var timestampOpt: Date?
```

The date and time the subscribe confirmed their opt-in status in ISO 8601 format.

### `tags`

```swift
public var tags: [String]?
```

The tags that are associated with a member.

## Methods
### `init(emailAddress:emailType:status:mergeFields:interests:language:vip:location:marketingPermissions:ipSignup:timestampSignup:ipOpt:timestampOpt:tags:)`

```swift
public init(emailAddress: String, emailType: String? = nil, status: Status, mergeFields: [String: String]? = nil, interests: [String: Bool]? = nil, language: String? = nil, vip: Bool? = nil, location: Location? = nil, marketingPermissions: [MarketingPermission]? = nil, ipSignup: String? = nil, timestampSignup: Date? = nil, ipOpt: String? = nil, timestampOpt: Date? = nil, tags: [String]? = nil)
```
