**STRUCT**

# `ListMembers2`

```swift
public struct ListMembers2: Codable
```

Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.

## Properties
### `_id`

```swift
public var _id: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `uniqueEmailId`

```swift
public var uniqueEmailId: String?
```

An identifier for the address across all of Mailchimp.

### `fullName`

```swift
public var fullName: String?
```

The contact&#x27;s full name.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this member in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/lists/members/view?id&#x3D;{web_id}&#x60;.

### `emailType`

```swift
public var emailType: String?
```

Type of email this member asked to get (&#x27;html&#x27; or &#x27;text&#x27;).

### `status`

```swift
public var status: Status?
```

Subscriber&#x27;s current status.

### `unsubscribeReason`

```swift
public var unsubscribeReason: String?
```

A subscriber&#x27;s reason for unsubscribing.

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

### `stats`

```swift
public var stats: SubscriberStats1?
```

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

### `memberRating`

```swift
public var memberRating: Int?
```

Star rating for this member, between 1 and 5.

### `lastChanged`

```swift
public var lastChanged: Date?
```

The date and time the member&#x27;s info was last changed in ISO 8601 format.

### `language`

```swift
public var language: String?
```

If set/detected, the [subscriber&#x27;s language](https://mailchimp.com/help/view-and-edit-contact-languages/).

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

### `emailClient`

```swift
public var emailClient: String?
```

The list member&#x27;s email client.

### `location`

```swift
public var location: Location1?
```

### `marketingPermissions`

```swift
public var marketingPermissions: [MarketingPermission1]?
```

The marketing permissions for the subscriber.

### `lastNote`

```swift
public var lastNote: Notes?
```

### `source`

```swift
public var source: String?
```

The source from which the subscriber was added to this list.

### `tagsCount`

```swift
public var tagsCount: Int?
```

The number of tags applied to this member.

### `tags`

```swift
public var tags: [ListMembers1Tags]?
```

Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/).

### `listId`

```swift
public var listId: String?
```

The list id.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:emailAddress:uniqueEmailId:fullName:webId:emailType:status:unsubscribeReason:mergeFields:interests:stats:ipSignup:timestampSignup:ipOpt:timestampOpt:memberRating:lastChanged:language:vip:emailClient:location:marketingPermissions:lastNote:source:tagsCount:tags:listId:links:)`

```swift
public init(_id: String? = nil, emailAddress: String? = nil, uniqueEmailId: String? = nil, fullName: String? = nil, webId: Int? = nil, emailType: String? = nil, status: Status? = nil, unsubscribeReason: String? = nil, mergeFields: [String: String]? = nil, interests: [String: Bool]? = nil, stats: SubscriberStats1? = nil, ipSignup: String? = nil, timestampSignup: Date? = nil, ipOpt: String? = nil, timestampOpt: Date? = nil, memberRating: Int? = nil, lastChanged: Date? = nil, language: String? = nil, vip: Bool? = nil, emailClient: String? = nil, location: Location1? = nil, marketingPermissions: [MarketingPermission1]? = nil, lastNote: Notes? = nil, source: String? = nil, tagsCount: Int? = nil, tags: [ListMembers1Tags]? = nil, listId: String? = nil, links: [ResourceLink]? = nil)
```
