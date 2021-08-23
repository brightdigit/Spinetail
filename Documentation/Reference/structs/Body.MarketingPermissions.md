**STRUCT**

# `Body.MarketingPermissions`

```swift
public struct MarketingPermissions: MailchimpModel
```

A single marketing permission a subscriber has either opted-in to or opted-out of.

## Properties
### `enabled`

```swift
public var enabled: Bool?
```

If the subscriber has opted-in to the marketing permission.

### `marketingPermissionId`

```swift
public var marketingPermissionId: String?
```

The id for the marketing permission on the list

## Methods
### `init(enabled:marketingPermissionId:)`

```swift
public init(enabled: Bool? = nil, marketingPermissionId: String? = nil)
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