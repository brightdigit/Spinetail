**STRUCT**

# `AbandonedCartAutomation`

```swift
public struct AbandonedCartAutomation: Codable
```

abandonedCart automation details.

## Properties
### `isSupported`

```swift
public var isSupported: Bool?
```

Whether this store supports the abandonedCart automation.

### `_id`

```swift
public var _id: String?
```

Unique ID of automation parent campaign.

### `status`

```swift
public var status: Status?
```

Status of the abandonedCart automation.

## Methods
### `init(isSupported:_id:status:)`

```swift
public init(isSupported: Bool? = nil, _id: String? = nil, status: Status? = nil)
```
