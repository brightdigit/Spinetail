**STRUCT**

# `Segments.Options`

```swift
public struct Options: Model
```

The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions.

## Properties
### `conditions`

```swift
public var conditions: [[String: CodableAny]]?
```

Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas).

### `match`

```swift
public var match: Match?
```

Match type.

## Methods
### `init(conditions:match:)`

```swift
public init(conditions: [[String: CodableAny]]? = nil, match: Match? = nil)
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
