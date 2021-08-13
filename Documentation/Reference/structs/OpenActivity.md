**STRUCT**

# `OpenActivity`

```swift
public struct OpenActivity: Codable
```

A list of a member&#x27;s opens activity in a specific campaign.

## Properties
### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it&#x27;s deleted or disabled.

### `contactStatus`

```swift
public var contactStatus: String?
```

The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `mergeFields`

```swift
public var mergeFields: [String: String]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;}

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

### `opensCount`

```swift
public var opensCount: Int?
```

The total number of times the this campaign was opened by the list member.

### `opens`

```swift
public var opens: [MemberActivity1]?
```

An array of timestamps for each time a list member opened the campaign. If a list member opens an email multiple times, this will return a separate timestamp for each open event.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(campaignId:listId:listIsActive:contactStatus:emailId:emailAddress:mergeFields:vip:opensCount:opens:links:)`

```swift
public init(campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, contactStatus: String? = nil, emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, opensCount: Int? = nil, opens: [MemberActivity1]? = nil, links: [ResourceLink]? = nil)
```
