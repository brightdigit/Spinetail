**STRUCT**

# `Statistics`

```swift
public struct Statistics: Codable
```

Stats for the list. Many of these are cached for at least five minutes.

## Properties
### `memberCount`

```swift
public var memberCount: Int?
```

The number of active members in the list.

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

### `cleanedCount`

```swift
public var cleanedCount: Int?
```

The number of members cleaned from the list.

### `memberCountSinceSend`

```swift
public var memberCountSinceSend: Int?
```

The number of active members in the list since the last campaign was sent.

### `unsubscribeCountSinceSend`

```swift
public var unsubscribeCountSinceSend: Int?
```

The number of members who have unsubscribed since the last campaign was sent.

### `cleanedCountSinceSend`

```swift
public var cleanedCountSinceSend: Int?
```

The number of members cleaned from the list since the last campaign was sent.

### `campaignCount`

```swift
public var campaignCount: Int?
```

The number of campaigns in any status that use this list.

### `campaignLastSent`

```swift
public var campaignLastSent: Date?
```

The date and time the last campaign was sent to this list in ISO 8601 format. This is updated when a campaign is sent to 10 or more recipients.

### `mergeFieldCount`

```swift
public var mergeFieldCount: Int?
```

The number of merge fields ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for this list (doesn&#x27;t include EMAIL).

### `avgSubRate`

```swift
public var avgSubRate: Decimal?
```

The average number of subscriptions per month for the list (not returned if we haven&#x27;t calculated it yet).

### `avgUnsubRate`

```swift
public var avgUnsubRate: Decimal?
```

The average number of unsubscriptions per month for the list (not returned if we haven&#x27;t calculated it yet).

### `targetSubRate`

```swift
public var targetSubRate: Decimal?
```

The target number of subscriptions per month for the list to keep it growing (not returned if we haven&#x27;t calculated it yet).

### `openRate`

```swift
public var openRate: Decimal?
```

The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven&#x27;t calculated it yet).

### `clickRate`

```swift
public var clickRate: Decimal?
```

The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven&#x27;t calculated it yet).

### `lastSubDate`

```swift
public var lastSubDate: Date?
```

The date and time of the last time someone subscribed to this list in ISO 8601 format.

### `lastUnsubDate`

```swift
public var lastUnsubDate: Date?
```

The date and time of the last time someone unsubscribed from this list in ISO 8601 format.

## Methods
### `init(memberCount:totalContacts:unsubscribeCount:cleanedCount:memberCountSinceSend:unsubscribeCountSinceSend:cleanedCountSinceSend:campaignCount:campaignLastSent:mergeFieldCount:avgSubRate:avgUnsubRate:targetSubRate:openRate:clickRate:lastSubDate:lastUnsubDate:)`

```swift
public init(memberCount: Int? = nil, totalContacts: Int? = nil, unsubscribeCount: Int? = nil, cleanedCount: Int? = nil, memberCountSinceSend: Int? = nil, unsubscribeCountSinceSend: Int? = nil, cleanedCountSinceSend: Int? = nil, campaignCount: Int? = nil, campaignLastSent: Date? = nil, mergeFieldCount: Int? = nil, avgSubRate: Decimal? = nil, avgUnsubRate: Decimal? = nil, targetSubRate: Decimal? = nil, openRate: Decimal? = nil, clickRate: Decimal? = nil, lastSubDate: Date? = nil, lastUnsubDate: Date? = nil)
```
