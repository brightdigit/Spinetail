**CLASS**

# `GetListsIdMergeFields.Request`

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

### `init(listId:fields:excludeFields:count:offset:type:required:)`

```swift
public convenience init(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, required: Bool? = nil)
```

convenience initialiser so an Option doesn't have to be created
