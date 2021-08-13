**STRUCT**

# `MarketingPermission1`

```swift
public struct MarketingPermission1: Codable
```

A single marketing permission a subscriber has either opted-in to or opted-out of.

## Properties
### `marketingPermissionId`

```swift
public var marketingPermissionId: String?
```

The id for the marketing permission on the list

### `text`

```swift
public var text: String?
```

The text of the marketing permission.

### `enabled`

```swift
public var enabled: Bool?
```

If the subscriber has opted-in to the marketing permission.

## Methods
### `init(marketingPermissionId:text:enabled:)`

```swift
public init(marketingPermissionId: String? = nil, text: String? = nil, enabled: Bool? = nil)
```
