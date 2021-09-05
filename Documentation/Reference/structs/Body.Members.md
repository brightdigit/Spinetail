**STRUCT**

# `Body.Members`

```swift
public struct Members: Model
```

Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.

## Properties
### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `emailType`

```swift
public var emailType: String?
```

Type of email this member asked to get ('html' or 'text').

### `interests`

```swift
public var interests: [String: Bool]?
```

The key of this object's properties is the ID of the interest in question.

### `ipOpt`

```swift
public var ipOpt: String?
```

The IP address the subscriber used to confirm their opt-in status.

### `ipSignup`

```swift
public var ipSignup: String?
```

IP address the subscriber signed up from.

### `language`

```swift
public var language: String?
```

If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/).

### `location`

```swift
public var location: Location?
```

Subscriber location information.

### `mergeFields`

```swift
public var mergeFields: [String: [String: CodableAny]]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"}

### `status`

```swift
public var status: Status?
```

Subscriber's current status.

### `timestampOpt`

```swift
public var timestampOpt: DateTime
```

The date and time the subscribe confirmed their opt-in status in ISO 8601 format.

### `timestampSignup`

```swift
public var timestampSignup: DateTime
```

The date and time the subscriber signed up for the list in ISO 8601 format.

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

## Methods
### `init(emailAddress:emailType:interests:ipOpt:ipSignup:language:location:mergeFields:status:timestampOpt:timestampSignup:vip:)`

```swift
public init(emailAddress: String? = nil, emailType: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, location: Location? = nil, mergeFields: [String: [String: CodableAny]]? = nil, status: Status? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, vip: Bool? = nil)
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
