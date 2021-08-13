**STRUCT**

# `TrackingSettings`

```swift
public struct TrackingSettings: Codable
```

The tracking settings applied to this landing page.

## Properties
### `trackWithMailchimp`

```swift
public var trackWithMailchimp: Bool?
```

Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/).

### `enableRestrictedDataProcessing`

```swift
public var enableRestrictedDataProcessing: Bool?
```

Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google&#x27;s restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/).

## Methods
### `init(trackWithMailchimp:enableRestrictedDataProcessing:)`

```swift
public init(trackWithMailchimp: Bool? = nil, enableRestrictedDataProcessing: Bool? = nil)
```
