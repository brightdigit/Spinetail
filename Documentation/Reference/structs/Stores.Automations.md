**STRUCT**

# `Stores.Automations`

```swift
public struct Automations: Model
```

Details for the automations attached to this store.

## Properties
### `abandonedBrowse`

```swift
public var abandonedBrowse: AbandonedBrowse?
```

abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web.

### `abandonedCart`

```swift
public var abandonedCart: AbandonedCart?
```

abandonedCart automation details.

## Methods
### `init(abandonedBrowse:abandonedCart:)`

```swift
public init(abandonedBrowse: AbandonedBrowse? = nil, abandonedCart: AbandonedCart? = nil)
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
