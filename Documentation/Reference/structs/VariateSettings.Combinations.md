**STRUCT**

# `VariateSettings.Combinations`

```swift
public struct Combinations: Model
```

The settings specific to A/B test campaigns.

## Properties
### `contentDescription`

```swift
public var contentDescription: Int?
```

The index of `variate_settings.contents` used.

### `fromName`

```swift
public var fromName: Int?
```

The index of `variate_settings.from_names` used.

### `id`

```swift
public var id: String?
```

Unique ID for the combination.

### `recipients`

```swift
public var recipients: Int?
```

The number of recipients for this combination.

### `replyTo`

```swift
public var replyTo: Int?
```

The index of `variate_settings.reply_to_addresses` used.

### `sendTime`

```swift
public var sendTime: Int?
```

The index of `variate_settings.send_times` used.

### `subjectLine`

```swift
public var subjectLine: Int?
```

The index of `variate_settings.subject_lines` used.

## Methods
### `init(contentDescription:fromName:id:recipients:replyTo:sendTime:subjectLine:)`

```swift
public init(contentDescription: Int? = nil, fromName: Int? = nil, id: String? = nil, recipients: Int? = nil, replyTo: Int? = nil, sendTime: Int? = nil, subjectLine: Int? = nil)
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
