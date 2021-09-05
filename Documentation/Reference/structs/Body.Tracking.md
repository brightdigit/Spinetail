**STRUCT**

# `Body.Tracking`

```swift
public struct Tracking: Model
```

The tracking settings applied to this landing page.

## Properties
### `enableRestrictedDataProcessing`

```swift
public var enableRestrictedDataProcessing: Bool?
```

Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google's restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/).

### `trackWithMailchimp`

```swift
public var trackWithMailchimp: Bool?
```

Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/).

## Methods
### `init(enableRestrictedDataProcessing:trackWithMailchimp:)`

```swift
public init(enableRestrictedDataProcessing: Bool? = nil, trackWithMailchimp: Bool? = nil)
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
