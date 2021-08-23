**CLASS**

# `GetConversations.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(options:)`

```swift
public init(options: Options)
```

### `init(fields:excludeFields:count:offset:hasUnreadMessages:listId:campaignId:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: HasUnreadMessages? = nil, listId: String? = nil, campaignId: String? = nil)
```

convenience initialiser so an Option doesn't have to be created