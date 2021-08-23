**CLASS**

# `PreviewASegment.Request`

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

### `init(fields:excludeFields:count:offset:listId:type:sinceCreatedAt:beforeCreatedAt:includeCleaned:includeTransactional:includeUnsubscribed:sinceUpdatedAt:beforeUpdatedAt:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, type: String? = nil, sinceCreatedAt: String? = nil, beforeCreatedAt: String? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, sinceUpdatedAt: String? = nil, beforeUpdatedAt: String? = nil)
```

convenience initialiser so an Option doesn't have to be created
