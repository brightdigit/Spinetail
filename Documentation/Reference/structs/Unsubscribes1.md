**STRUCT**

# `Unsubscribes1`

```swift
public struct Unsubscribes1: Codable
```

A member who unsubscribed from a specific campaign.

## Properties
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

### `timestamp`

```swift
public var timestamp: Date?
```

The date and time the member opted-out in ISO 8601 format.

### `reason`

```swift
public var reason: String?
```

If available, the reason listed by the member for unsubscribing.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `listId`

```swift
public var listId: String?
```

The list id.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it&#x27;s deleted or disabled.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(emailId:emailAddress:mergeFields:vip:timestamp:reason:campaignId:listId:listIsActive:links:)`

```swift
public init(emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, timestamp: Date? = nil, reason: String? = nil, campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, links: [ResourceLink]? = nil)
```
