**CLASS**

# `GetReports.Request`

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

### `init(fields:excludeFields:count:offset:type:beforeSendTime:sinceSendTime:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: Type? = nil, beforeSendTime: DateTime? = nil, sinceSendTime: DateTime? = nil)
```

convenience initialiser so an Option doesn't have to be created