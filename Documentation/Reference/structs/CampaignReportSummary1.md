**STRUCT**

# `CampaignReportSummary1`

```swift
public struct CampaignReportSummary1: Codable
```

For sent campaigns, a summary of opens, clicks, and e-commerce data.

## Properties
### `opens`

```swift
public var opens: Int?
```

The total number of opens for a campaign.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens.

### `openRate`

```swift
public var openRate: Decimal?
```

The number of unique opens divided by the total number of successful deliveries.

### `clicks`

```swift
public var clicks: Int?
```

The total number of clicks for an campaign.

### `subscriberClicks`

```swift
public var subscriberClicks: Int?
```

The number of unique clicks.

### `clickRate`

```swift
public var clickRate: Decimal?
```

The number of unique clicks divided by the total number of successful deliveries.

### `ecommerce`

```swift
public var ecommerce: ECommerceReport1?
```

## Methods
### `init(opens:uniqueOpens:openRate:clicks:subscriberClicks:clickRate:ecommerce:)`

```swift
public init(opens: Int? = nil, uniqueOpens: Int? = nil, openRate: Decimal? = nil, clicks: Int? = nil, subscriberClicks: Int? = nil, clickRate: Decimal? = nil, ecommerce: ECommerceReport1? = nil)
```
