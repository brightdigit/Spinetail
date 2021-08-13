**CLASS**

# `RequestBuilder`

```swift
open class RequestBuilder<T>
```

## Properties
### `parameters`

```swift
public let parameters: [String: Any]?
```

### `isBody`

```swift
public let isBody: Bool
```

### `method`

```swift
public let method: String
```

### `URLString`

```swift
public let URLString: String
```

### `onProgressReady`

```swift
public var onProgressReady: ((Progress) -> Void)?
```

Optional block to obtain a reference to the request's progress instance when available.

## Methods
### `init(method:URLString:parameters:isBody:headers:)`

```swift
public required init(method: String, URLString: String, parameters: [String: Any]?, isBody: Bool, headers: [String: String] = [:])
```

### `addHeaders(_:)`

```swift
open func addHeaders(_ aHeaders: [String: String])
```

### `execute(_:)`

```swift
open func execute(_: @escaping (_ response: Response<T>?, _ error: Error?) -> Void)
```

### `addHeader(name:value:)`

```swift
public func addHeader(name: String, value: String) -> Self
```

### `addCredential()`

```swift
open func addCredential() -> Self
```
