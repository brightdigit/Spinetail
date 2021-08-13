**STRUCT**

# `AutomationTrackingOptions`

```swift
public struct AutomationTrackingOptions: Codable
```

The tracking options for the Automation.

## Properties
### `opens`

```swift
public var opens: Bool?
```

Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to &#x60;true&#x60;.

### `htmlClicks`

```swift
public var htmlClicks: Bool?
```

Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the Automation. Defaults to &#x60;true&#x60;.

### `textClicks`

```swift
public var textClicks: Bool?
```

Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the Automation. Defaults to &#x60;true&#x60;.

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
public var salesforce: SalesforceCRMTracking1?
```

### `capsule`

```swift
public var capsule: CapsuleCRMTracking1?
```

## Methods
### `init(opens:htmlClicks:textClicks:goalTracking:ecomm360:googleAnalytics:clicktale:salesforce:capsule:)`

```swift
public init(opens: Bool? = nil, htmlClicks: Bool? = nil, textClicks: Bool? = nil, goalTracking: Bool? = nil, ecomm360: Bool? = nil, googleAnalytics: String? = nil, clicktale: String? = nil, salesforce: SalesforceCRMTracking1? = nil, capsule: CapsuleCRMTracking1? = nil)
```
