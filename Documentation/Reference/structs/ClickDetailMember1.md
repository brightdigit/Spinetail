**STRUCT**

# `ClickDetailMember1`

```swift
public struct ClickDetailMember1: Codable
```

A subscriber who clicked a specific URL in a specific campaign.

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

### `clicks`

```swift
public var clicks: Int?
```

The total number of times the subscriber clicked on the link.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `urlId`

```swift
public var urlId: String?
```

The id for the tracked URL in the campaign.

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

### `contactStatus`

```swift
public var contactStatus: String?
```

The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(emailId:emailAddress:mergeFields:vip:clicks:campaignId:urlId:listId:listIsActive:contactStatus:links:)`

```swift
public init(emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, clicks: Int? = nil, campaignId: String? = nil, urlId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, contactStatus: String? = nil, links: [ResourceLink]? = nil)
```
