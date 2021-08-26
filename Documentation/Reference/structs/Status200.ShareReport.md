**STRUCT**

# `Status200.ShareReport`

```swift
public struct ShareReport: Model
```

The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/).

## Properties
### `sharePassword`

```swift
public var sharePassword: String?
```

If password protected, the password for the VIP report.

### `shareURL`

```swift
public var shareURL: String?
```

The URL for the VIP report.

## Methods
### `init(sharePassword:shareURL:)`

```swift
public init(sharePassword: String? = nil, shareURL: String? = nil)
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
