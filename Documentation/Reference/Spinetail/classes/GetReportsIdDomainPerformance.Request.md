**CLASS**

# `GetReportsIdDomainPerformance.Request`

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

### `init(fields:excludeFields:campaignId:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String)
```

convenience initialiser so an Option doesn't have to be created