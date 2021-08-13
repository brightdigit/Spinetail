**STRUCT**

# `CampaignTrackingOptions`

```swift
public struct CampaignTrackingOptions: Codable
```

The tracking options for a campaign.

## Properties
### `opens`

```swift
public var opens: Bool?
```

Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to &#x60;true&#x60;. Cannot be set to false for variate campaigns.

### `htmlClicks`

```swift
public var htmlClicks: Bool?
```

Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the campaign. Defaults to &#x60;true&#x60;. Cannot be set to false for variate campaigns.

### `textClicks`

```swift
public var textClicks: Bool?
```

Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the campaign. Defaults to &#x60;true&#x60;. Cannot be set to false for variate campaigns.

### `goalTracking`

```swift
public var goalTracking: Bool?
```

Deprecated

### `ecomm360`

```swift
public var ecomm360: Bool?
```

Whether to enable e-commerce tracking.

### `googleAnalytics`

```swift
public var googleAnalytics: String?
```

The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes).

### `clicktale`

```swift
public var clicktale: String?
```

The custom slug for [ClickTale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes).

### `salesforce`

```swift
public var salesforce: SalesforceCRMTracking?
```

### `capsule`

```swift
public var capsule: CapsuleCRMTracking?
```

## Methods
### `init(opens:htmlClicks:textClicks:goalTracking:ecomm360:googleAnalytics:clicktale:salesforce:capsule:)`

```swift
public init(opens: Bool? = nil, htmlClicks: Bool? = nil, textClicks: Bool? = nil, goalTracking: Bool? = nil, ecomm360: Bool? = nil, googleAnalytics: String? = nil, clicktale: String? = nil, salesforce: SalesforceCRMTracking? = nil, capsule: CapsuleCRMTracking? = nil)
```
