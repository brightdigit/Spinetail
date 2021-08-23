**CLASS**

# `APIRequest`

```swift
public class APIRequest<ResponseType: APIResponseValue>
```

## Properties
### `service`

```swift
public let service: APIService<ResponseType>
```

### `queryParameters`

```swift
public private(set) var queryParameters: [String: Any]
```

### `formParameters`

```swift
public private(set) var formParameters: [String: Any]
```

### `encodeBody`

```swift
public let encodeBody: ((RequestEncoder) throws -> Data)?
```

### `customHeaders`

```swift
public var customHeaders: [String: String] = [:]
```

### `headers`

```swift
public var headers: [String: String]
```

### `path`

```swift
public var path: String
```

## Methods
### `init(service:queryParameters:formParameters:headers:encodeBody:)`

```swift
public init(service: APIService<ResponseType>,
            queryParameters: [String: Any] = [:],
            formParameters: [String: Any] = [:],
            headers: [String: String] = [:],
            encodeBody: ((RequestEncoder) throws -> Data)? = nil)
```
