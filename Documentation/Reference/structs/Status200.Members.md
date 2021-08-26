**STRUCT**

# `Status200.Members`

```swift
public struct Members: Model
```

A list of a member's opens activity in a specific campaign.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

### `contactStatus`

```swift
public var contactStatus: String?
```

The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation.

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

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

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

### `opens`

```swift
public var opens: [Opens]?
```

An array of timestamps for each time a list member opened the campaign. If a list member opens an email multiple times, this will return a separate timestamp for each open event.

### `opensCount`

```swift
public var opensCount: Int?
```

The total number of times the this campaign was opened by the list member.

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

## Methods
### `init(links:campaignId:contactStatus:emailAddress:emailId:listId:listIsActive:mergeFields:opens:opensCount:vip:)`

```swift
public init(links: [Links]? = nil, campaignId: String? = nil, contactStatus: String? = nil, emailAddress: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: [String: CodableAny]]? = nil, opens: [Opens]? = nil, opensCount: Int? = nil, vip: Bool? = nil)
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
