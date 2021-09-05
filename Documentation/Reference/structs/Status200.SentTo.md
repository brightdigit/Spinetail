**STRUCT**

# `Status200.SentTo`

```swift
public struct SentTo: Model
```

A subscriber's status for a specific campaign.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `absplitGroup`

```swift
public var absplitGroup: String?
```

For A/B Split Campaigns, the group the member was apart of ('a', 'b', or 'winner').

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member's email address.

### `gmtOffset`

```swift
public var gmtOffset: Int?
```

For campaigns sent with timewarp, the time zone group the member is apart of.

### `lastOpen`

```swift
public var lastOpen: DateTime
```

The date and time of the last open for this member in ISO 8601 format.

### `listId`

```swift
public var listId: String?
```

The unique list id.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it's deleted or disabled.

### `mergeFields`

```swift
public var mergeFields: [String: [String: CodableAny]]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"}

### `openCount`

```swift
public var openCount: Int?
```

The number of times a campaign was opened by this member.

### `status`

```swift
public var status: String?
```

The status of the member ('sent', 'hard' for hard bounce, or 'soft' for soft bounce).

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

## Methods
### `init(links:absplitGroup:campaignId:emailAddress:emailId:gmtOffset:lastOpen:listId:listIsActive:mergeFields:openCount:status:vip:)`

```swift
public init(links: [Links]? = nil, absplitGroup: String? = nil, campaignId: String? = nil, emailAddress: String? = nil, emailId: String? = nil, gmtOffset: Int? = nil, lastOpen: Date? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: [String: CodableAny]]? = nil, openCount: Int? = nil, status: String? = nil, vip: Bool? = nil)
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
