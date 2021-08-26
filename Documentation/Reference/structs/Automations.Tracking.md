**STRUCT**

# `Automations.Tracking`

```swift
public struct Tracking: Model
```

The tracking options for the Automation.

## Properties
### `capsule`

```swift
public var capsule: Capsule?
```

Deprecated

### `clicktale`

```swift
public var clicktale: String?
```

The custom slug for [ClickTale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes).

### `ecomm360`

```swift
public var ecomm360: Bool?
```

Whether to enable e-commerce tracking.

### `goalTracking`

```swift
public var goalTracking: Bool?
```

Deprecated

### `googleAnalytics`

```swift
public var googleAnalytics: String?
```

The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes).

### `htmlClicks`

```swift
public var htmlClicks: Bool?
```

Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the Automation. Defaults to `true`.

### `opens`

```swift
public var opens: Bool?
```

Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to `true`.

### `salesforce`

```swift
public var salesforce: Salesforce?
```

Deprecated

### `textClicks`

```swift
public var textClicks: Bool?
```

Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the Automation. Defaults to `true`.

## Methods
### `init(capsule:clicktale:ecomm360:goalTracking:googleAnalytics:htmlClicks:opens:salesforce:textClicks:)`

```swift
public init(capsule: Capsule? = nil, clicktale: String? = nil, ecomm360: Bool? = nil, goalTracking: Bool? = nil, googleAnalytics: String? = nil, htmlClicks: Bool? = nil, opens: Bool? = nil, salesforce: Salesforce? = nil, textClicks: Bool? = nil)
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
