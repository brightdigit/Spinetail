**CLASS**

# `Response`

```swift
open class Response<T>
```

## Properties
### `statusCode`

```swift
public let statusCode: Int
```

### `header`

```swift
public let header: [String: String]
```

### `body`

```swift
public let body: T?
```

## Methods
### `init(statusCode:header:body:)`

```swift
public init(statusCode: Int, header: [String: String], body: T?)
```

### `init(response:body:)`

```swift
public convenience init(response: HTTPURLResponse, body: T?)
```
