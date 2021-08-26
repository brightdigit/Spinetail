**STRUCT**

# `Campaigns.DeliveryStatus`

```swift
public struct DeliveryStatus: Model
```

Updates on campaigns in the process of sending.

## Properties
### `canCancel`

```swift
public var canCancel: Bool?
```

Whether a campaign send can be canceled.

### `emailsCanceled`

```swift
public var emailsCanceled: Int?
```

The total number of emails canceled for this campaign.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails confirmed sent for this campaign so far.

### `enabled`

```swift
public var enabled: Bool?
```

Whether Campaign Delivery Status is enabled for this account and campaign.

### `status`

```swift
public var status: Status?
```

The current state of a campaign delivery.

## Methods
### `init(canCancel:emailsCanceled:emailsSent:enabled:status:)`

```swift
public init(canCancel: Bool? = nil, emailsCanceled: Int? = nil, emailsSent: Int? = nil, enabled: Bool? = nil, status: Status? = nil)
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
