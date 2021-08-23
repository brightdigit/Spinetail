**CLASS**

# `GetListsIdMembers.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `path`

```swift
override public var path: String
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

### `init(fields:excludeFields:count:offset:listId:emailType:status:sinceTimestampOpt:beforeTimestampOpt:sinceLastChanged:beforeLastChanged:uniqueEmailId:vipOnly:interestCategoryId:interestIds:interestMatch:sortField:sortDir:sinceLastCampaign:unsubscribedSince:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, emailType: String? = nil, status: Status? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil)
```

convenience initialiser so an Option doesn't have to be created
