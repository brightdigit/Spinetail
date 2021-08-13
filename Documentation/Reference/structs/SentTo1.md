**STRUCT**

# `SentTo1`

```swift
public struct SentTo1: Codable
```

A subscriber&#x27;s status for a specific campaign.

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

### `status`

```swift
public var status: String?
```

The status of the member (&#x27;sent&#x27;, &#x27;hard&#x27; for hard bounce, or &#x27;soft&#x27; for soft bounce).

### `openCount`

```swift
public var openCount: Int?
```

The number of times a campaign was opened by this member.

### `lastOpen`

```swift
public var lastOpen: Date?
```

The date and time of the last open for this member in ISO 8601 format.

### `absplitGroup`

```swift
public var absplitGroup: String?
```

For A/B Split Campaigns, the group the member was apart of (&#x27;a&#x27;, &#x27;b&#x27;, or &#x27;winner&#x27;).

### `gmtOffset`

```swift
public var gmtOffset: Int?
```

For campaigns sent with timewarp, the time zone group the member is apart of.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `listId`

```swift
public var listId: String?
```

The unique list id.

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
### `init(emailId:emailAddress:mergeFields:vip:status:openCount:lastOpen:absplitGroup:gmtOffset:campaignId:listId:listIsActive:links:)`

```swift
public init(emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, status: String? = nil, openCount: Int? = nil, lastOpen: Date? = nil, absplitGroup: String? = nil, gmtOffset: Int? = nil, campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, links: [ResourceLink]? = nil)
```
