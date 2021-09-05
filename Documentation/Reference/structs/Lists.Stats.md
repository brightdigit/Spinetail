**STRUCT**

# `Lists.Stats`

```swift
public struct Stats: Model
```

Stats for the list. Many of these are cached for at least five minutes.

## Properties
### `avgSubRate`

```swift
public var avgSubRate: Double?
```

The average number of subscriptions per month for the list (not returned if we haven't calculated it yet).

### `avgUnsubRate`

```swift
public var avgUnsubRate: Double?
```

The average number of unsubscriptions per month for the list (not returned if we haven't calculated it yet).

### `campaignCount`

```swift
public var campaignCount: Int?
```

The number of campaigns in any status that use this list.

### `campaignLastSent`

```swift
public var campaignLastSent: DateTime
```

The date and time the last campaign was sent to this list in ISO 8601 format. This is updated when a campaign is sent to 10 or more recipients.

### `cleanedCount`

```swift
public var cleanedCount: Int?
```

The number of members cleaned from the list.

### `cleanedCountSinceSend`

```swift
public var cleanedCountSinceSend: Int?
```

The number of members cleaned from the list since the last campaign was sent.

### `clickRate`

```swift
public var clickRate: Double?
```

The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet).

### `lastSubDate`

```swift
public var lastSubDate: DateTime
```

The date and time of the last time someone subscribed to this list in ISO 8601 format.

### `lastUnsubDate`

```swift
public var lastUnsubDate: DateTime
```

The date and time of the last time someone unsubscribed from this list in ISO 8601 format.

### `memberCount`

```swift
public var memberCount: Int?
```

The number of active members in the list.

### `memberCountSinceSend`

```swift
public var memberCountSinceSend: Int?
```

The number of active members in the list since the last campaign was sent.

### `mergeFieldCount`

```swift
public var mergeFieldCount: Int?
```

The number of merge fields ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for this list (doesn't include EMAIL).

### `openRate`

```swift
public var openRate: Double?
```

The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet).

### `targetSubRate`

```swift
public var targetSubRate: Double?
```

The target number of subscriptions per month for the list to keep it growing (not returned if we haven't calculated it yet).

### `totalContacts`

```swift
public var totalContacts: Int?
```

The number of contacts in the list, including subscribed, unsubscribed, pending, cleaned, deleted, transactional, and those that need to be reconfirmed. Requires include_total_contacts query parameter to be included.

### `unsubscribeCount`

```swift
public var unsubscribeCount: Int?
```

The number of members who have unsubscribed from the list.

### `unsubscribeCountSinceSend`

```swift
public var unsubscribeCountSinceSend: Int?
```

The number of members who have unsubscribed since the last campaign was sent.

## Methods
### `init(avgSubRate:avgUnsubRate:campaignCount:campaignLastSent:cleanedCount:cleanedCountSinceSend:clickRate:lastSubDate:lastUnsubDate:memberCount:memberCountSinceSend:mergeFieldCount:openRate:targetSubRate:totalContacts:unsubscribeCount:unsubscribeCountSinceSend:)`

```swift
public init(avgSubRate: Double? = nil, avgUnsubRate: Double? = nil, campaignCount: Int? = nil, campaignLastSent: Date? = nil, cleanedCount: Int? = nil, cleanedCountSinceSend: Int? = nil, clickRate: Double? = nil, lastSubDate: Date? = nil, lastUnsubDate: Date? = nil, memberCount: Int? = nil, memberCountSinceSend: Int? = nil, mergeFieldCount: Int? = nil, openRate: Double? = nil, targetSubRate: Double? = nil, totalContacts: Int? = nil, unsubscribeCount: Int? = nil, unsubscribeCountSinceSend: Int? = nil)
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
