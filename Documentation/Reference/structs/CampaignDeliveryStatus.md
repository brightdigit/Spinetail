**STRUCT**

# `CampaignDeliveryStatus`

```swift
public struct CampaignDeliveryStatus: Codable
```

Updates on campaigns in the process of sending.

## Properties
### `enabled`

```swift
public var enabled: Bool?
```

Whether Campaign Delivery Status is enabled for this account and campaign.

### `canCancel`

```swift
public var canCancel: Bool?
```

Whether a campaign send can be canceled.

### `status`

```swift
public var status: Status?
```

The current state of a campaign delivery.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails confirmed sent for this campaign so far.

### `emailsCanceled`

```swift
public var emailsCanceled: Int?
```

The total number of emails canceled for this campaign.

## Methods
### `init(enabled:canCancel:status:emailsSent:emailsCanceled:)`

```swift
public init(enabled: Bool? = nil, canCancel: Bool? = nil, status: Status? = nil, emailsSent: Int? = nil, emailsCanceled: Int? = nil)
```
