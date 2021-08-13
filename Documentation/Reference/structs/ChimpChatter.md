**STRUCT**

# `ChimpChatter`

```swift
public struct ChimpChatter: Codable
```

A Chimp Chatter message

## Properties
### `title`

```swift
public var title: String?
```

### `message`

```swift
public var message: String?
```

### `type`

```swift
public var type: ModelType?
```

The type of activity

### `updateTime`

```swift
public var updateTime: Date?
```

The date and time this activity was updated.

### `url`

```swift
public var url: String?
```

URL to a report that includes this activity

### `listId`

```swift
public var listId: String?
```

If it exists, list ID for the associated list

### `campaignId`

```swift
public var campaignId: String?
```

If it exists, campaign ID for the associated campaign

## Methods
### `init(title:message:type:updateTime:url:listId:campaignId:)`

```swift
public init(title: String? = nil, message: String? = nil, type: ModelType? = nil, updateTime: Date? = nil, url: String? = nil, listId: String? = nil, campaignId: String? = nil)
```
