**STRUCT**

# `ABTestOptions1Combinations`

```swift
public struct ABTestOptions1Combinations: Codable
```

## Properties
### `_id`

```swift
public var _id: String?
```

Unique ID for the combination.

### `subjectLine`

```swift
public var subjectLine: Int?
```

The index of &#x60;variate_settings.subject_lines&#x60; used.

### `sendTime`

```swift
public var sendTime: Int?
```

The index of &#x60;variate_settings.send_times&#x60; used.

### `fromName`

```swift
public var fromName: Int?
```

The index of &#x60;variate_settings.from_names&#x60; used.

### `replyTo`

```swift
public var replyTo: Int?
```

The index of &#x60;variate_settings.reply_to_addresses&#x60; used.

### `contentDescription`

```swift
public var contentDescription: Int?
```

The index of &#x60;variate_settings.contents&#x60; used.

### `recipients`

```swift
public var recipients: Int?
```

The number of recipients for this combination.

## Methods
### `init(_id:subjectLine:sendTime:fromName:replyTo:contentDescription:recipients:)`

```swift
public init(_id: String? = nil, subjectLine: Int? = nil, sendTime: Int? = nil, fromName: Int? = nil, replyTo: Int? = nil, contentDescription: Int? = nil, recipients: Int? = nil)
```
