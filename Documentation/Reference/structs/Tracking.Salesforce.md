**STRUCT**

# `Tracking.Salesforce`

```swift
public struct Salesforce: Model
```

Deprecated

## Properties
### `campaign`

```swift
public var campaign: Bool?
```

Create a campaign in a connected Salesforce account.

### `notes`

```swift
public var notes: Bool?
```

Update contact notes for a campaign based on subscriber email addresses.

## Methods
### `init(campaign:notes:)`

```swift
public init(campaign: Bool? = nil, notes: Bool? = nil)
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
