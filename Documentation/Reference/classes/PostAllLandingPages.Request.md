**CLASS**

# `PostAllLandingPages.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `body`

```swift
public var body: Body
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(body:options:encoder:)`

```swift
public init(body: Body, options: Options, encoder: RequestEncoder? = nil)
```

### `init(useDefaultList:body:)`

```swift
public convenience init(useDefaultList: Bool? = nil, body: Body)
```

convenience initialiser so an Option doesn't have to be created
