**CLASS**

# `GetSearchMembers.Request`

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

### `init(fields:excludeFields:query:listId:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String, listId: String? = nil)
```

convenience initialiser so an Option doesn't have to be created
