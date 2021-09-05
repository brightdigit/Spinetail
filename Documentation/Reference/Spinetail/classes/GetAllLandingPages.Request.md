**CLASS**

# `GetAllLandingPages.Request`

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

### `init(sortDir:sortField:fields:excludeFields:count:)`

```swift
public convenience init(sortDir: SortDir? = nil, sortField: SortField? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil)
```

convenience initialiser so an Option doesn't have to be created
