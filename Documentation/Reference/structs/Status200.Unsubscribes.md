**STRUCT**

# `Status200.Unsubscribes`

```swift
public struct Unsubscribes: Model
```

A member who unsubscribed from a specific campaign.

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

### `listId`

```swift
public var listId: String?
```

The list id.

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

### `reason`

```swift
public var reason: String?
```

If available, the reason listed by the member for unsubscribing.

### `timestamp`

```swift
public var timestamp: DateTime
```

The date and time the member opted-out in ISO 8601 format.

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

## Methods
### `init(links:campaignId:emailAddress:emailId:listId:listIsActive:mergeFields:reason:timestamp:vip:)`

```swift
public init(links: [Links]? = nil, campaignId: String? = nil, emailAddress: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: [String: CodableAny]]? = nil, reason: String? = nil, timestamp: Date? = nil, vip: Bool? = nil)
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
