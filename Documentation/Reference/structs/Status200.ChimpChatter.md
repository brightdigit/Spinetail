**STRUCT**

# `Status200.ChimpChatter`

```swift
public struct ChimpChatter: Model
```

A Chimp Chatter message

## Properties
### `campaignId`

```swift
public var campaignId: String?
```

If it exists, campaign ID for the associated campaign

### `listId`

```swift
public var listId: String?
```

If it exists, list ID for the associated list

### `message`

```swift
public var message: String?
```

### `title`

```swift
public var title: String?
```

### `type`

```swift
public var type: `Type`?
```

The type of activity

### `updateTime`

```swift
public var updateTime: DateTime
```

The date and time this activity was updated.

### `url`

```swift
public var url: String?
```

URL to a report that includes this activity

## Methods
### `init(campaignId:listId:message:title:type:updateTime:url:)`

```swift
public init(campaignId: String? = nil, listId: String? = nil, message: String? = nil, title: String? = nil, type: Type? = nil, updateTime: Date? = nil, url: String? = nil)
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
