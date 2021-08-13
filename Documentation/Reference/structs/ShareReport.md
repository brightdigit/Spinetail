**STRUCT**

# `ShareReport`

```swift
public struct ShareReport: Codable
```

The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/).

## Properties
### `shareUrl`

```swift
public var shareUrl: String?
```

The URL for the VIP report.

### `sharePassword`

```swift
public var sharePassword: String?
```

If password protected, the password for the VIP report.

## Methods
### `init(shareUrl:sharePassword:)`

```swift
public init(shareUrl: String? = nil, sharePassword: String? = nil)
```
