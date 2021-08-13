**STRUCT**

# `MarketingPermission`

```swift
public struct MarketingPermission: Codable
```

A single marketing permission a subscriber has either opted-in to or opted-out of.

## Properties
### `marketingPermissionId`

```swift
public var marketingPermissionId: String?
```

The id for the marketing permission on the list

### `enabled`

```swift
public var enabled: Bool?
```

If the subscriber has opted-in to the marketing permission.

## Methods
### `init(marketingPermissionId:enabled:)`

```swift
public init(marketingPermissionId: String? = nil, enabled: Bool? = nil)
```
