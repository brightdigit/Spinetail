**CLASS**

# `GetTemplates.Request`

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

### `init(fields:excludeFields:count:offset:createdBy:sinceDateCreated:beforeDateCreated:type:category:folderId:sortField:sortDir:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil)
```

convenience initialiser so an Option doesn't have to be created
