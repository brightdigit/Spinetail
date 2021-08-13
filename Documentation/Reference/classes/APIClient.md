**CLASS**

# `APIClient`

```swift
public class APIClient
```

// Manages and sends APIRequests

## Properties
### `behaviours`

```swift
public var behaviours: [RequestBehaviour] = []
```

A list of RequestBehaviours that can be used to monitor and alter all requests

### `baseURL`

```swift
public var baseURL: String
```

The base url prepended before every request path

### `sessionManager`

```swift
public var sessionManager: Session
```

The Alamofire SessionManager used for each request

### `defaultHeaders`

```swift
public var defaultHeaders: [String: String]
```

These headers will get added to every request

### `jsonDecoder`

```swift
public var jsonDecoder = JSONDecoder()
```

### `jsonEncoder`

```swift
public var jsonEncoder = JSONEncoder()
```

### `decodingQueue`

```swift
public var decodingQueue = DispatchQueue(label: "apiClient", qos: .utility, attributes: .concurrent)
```

## Methods
### `init(baseURL:sessionManager:defaultHeaders:behaviours:)`

```swift
public init(baseURL: String, sessionManager: Session = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

### `makeRequest(_:behaviours:completionQueue:complete:)`

```swift
public func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], completionQueue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> CancellableRequest?
```

Makes a network request

- Parameters:
  - request: The API request to make
  - behaviours: A list of behaviours that will be run for this request. Merged with APIClient.behaviours
  - completionQueue: The queue that complete will be called on
  - complete: A closure that gets passed the APIResponse
- Returns: A cancellable request. Not that cancellation will only work after any validation RequestBehaviours have run

#### Parameters

| Name | Description |
| ---- | ----------- |
| request | The API request to make |
| behaviours | A list of behaviours that will be run for this request. Merged with APIClient.behaviours |
| completionQueue | The queue that complete will be called on |
| complete | A closure that gets passed the APIResponse |