**CLASS**

# `GetAutomations.Request`

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

### `init(count:offset:fields:excludeFields:beforeCreateTime:sinceCreateTime:beforeStartTime:sinceStartTime:status:)`

```swift
public convenience init(count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, beforeCreateTime: DateTime? = nil, sinceCreateTime: DateTime? = nil, beforeStartTime: DateTime? = nil, sinceStartTime: DateTime? = nil, status: Status? = nil)
```

convenience initialiser so an Option doesn't have to be created
