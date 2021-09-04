**CLASS**

# `GetRoot.Request`

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

### `init(fields:excludeFields:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil)
```

convenience initialiser so an Option doesn't have to be created
