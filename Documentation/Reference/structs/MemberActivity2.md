**STRUCT**

# `MemberActivity2`

```swift
public struct MemberActivity2: Codable
```

Member activity events.

## Properties
### `action`

```swift
public var action: String?
```

The type of action recorded for the subscriber.

### `timestamp`

```swift
public var timestamp: Date?
```

The date and time recorded for the action.

### `url`

```swift
public var url: String?
```

For clicks, the URL the subscriber clicked on.

### `type`

```swift
public var type: String?
```

The type of campaign that was sent.

### `campaignId`

```swift
public var campaignId: String?
```

The web-based ID for the campaign.

### `title`

```swift
public var title: String?
```

If set, the campaign&#x27;s title.

### `parentCampaign`

```swift
public var parentCampaign: String?
```

The ID of the parent campaign.

## Methods
### `init(action:timestamp:url:type:campaignId:title:parentCampaign:)`

```swift
public init(action: String? = nil, timestamp: Date? = nil, url: String? = nil, type: String? = nil, campaignId: String? = nil, title: String? = nil, parentCampaign: String? = nil)
```
