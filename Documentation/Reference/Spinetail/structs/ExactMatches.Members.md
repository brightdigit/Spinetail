**STRUCT**

# `ExactMatches.Members`

```swift
public struct Members: Model
```

Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `emailClient`

```swift
public var emailClient: String?
```

The list member's email client.

### `emailType`

```swift
public var emailType: String?
```

Type of email this member asked to get ('html' or 'text').

### `fullName`

```swift
public var fullName: String?
```

The contact's full name.

### `id`

```swift
public var id: String?
```

The MD5 hash of the lowercase version of the list member's email address.

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

### `lastChanged`

```swift
public var lastChanged: DateTime
```

The date and time the member's info was last changed in ISO 8601 format.

### `lastNote`

```swift
public var lastNote: LastNote?
```

The most recent Note added about this member.

### `listId`

```swift
public var listId: String?
```

The list id.

### `location`

```swift
public var location: Location?
```

Subscriber location information.

### `marketingPermissions`

```swift
public var marketingPermissions: [MarketingPermissions]?
```

The marketing permissions for the subscriber.

### `memberRating`

```swift
public var memberRating: Int?
```

Star rating for this member, between 1 and 5.

### `mergeFields`

```swift
public var mergeFields: [String: [String: CodableAny]]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"}

### `source`

```swift
public var source: String?
```

The source from which the subscriber was added to this list.

### `stats`

```swift
public var stats: Stats?
```

Open and click rates for this subscriber.

### `status`

```swift
public var status: Status?
```

Subscriber's current status.

### `tags`

```swift
public var tags: [Tags]?
```

Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/).

### `tagsCount`

```swift
public var tagsCount: Int?
```

The number of tags applied to this member.

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

### `uniqueEmailId`

```swift
public var uniqueEmailId: String?
```

An identifier for the address across all of Mailchimp.

### `unsubscribeReason`

```swift
public var unsubscribeReason: String?
```

A subscriber's reason for unsubscribing.

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this member in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/view?id={web_id}`.

## Methods
### `init(links:emailAddress:emailClient:emailType:fullName:id:interests:ipOpt:ipSignup:language:lastChanged:lastNote:listId:location:marketingPermissions:memberRating:mergeFields:source:stats:status:tags:tagsCount:timestampOpt:timestampSignup:uniqueEmailId:unsubscribeReason:vip:webId:)`

```swift
public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, fullName: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, marketingPermissions: [MarketingPermissions]? = nil, memberRating: Int? = nil, mergeFields: [String: [String: CodableAny]]? = nil, source: String? = nil, stats: Stats? = nil, status: Status? = nil, tags: [Tags]? = nil, tagsCount: Int? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, unsubscribeReason: String? = nil, vip: Bool? = nil, webId: Int? = nil)
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