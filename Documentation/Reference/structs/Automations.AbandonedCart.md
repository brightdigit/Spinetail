**STRUCT**

# `Automations.AbandonedCart`

```swift
public struct AbandonedCart: MailchimpModel
```

abandonedCart automation details.

## Properties
### `id`

```swift
public var id: String?
```

Unique ID of automation parent campaign.

### `isSupported`

```swift
public var isSupported: Bool?
```

Whether this store supports the abandonedCart automation.

### `status`

```swift
public var status: Status?
```

Status of the abandonedCart automation.

## Methods
### `init(id:isSupported:status:)`

```swift
public init(id: String? = nil, isSupported: Bool? = nil, status: Status? = nil)
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