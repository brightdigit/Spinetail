**CLASS**

# `GetCampaigns.Request`

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

### `init(fields:excludeFields:count:offset:type:status:beforeSendTime:sinceSendTime:beforeCreateTime:sinceCreateTime:listId:folderId:memberId:sortField:sortDir:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: Type? = nil, status: Status? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, listId: String? = nil, folderId: String? = nil, memberId: String? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil)
```

convenience initialiser so an Option doesn't have to be created
