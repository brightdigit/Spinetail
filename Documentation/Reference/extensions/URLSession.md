**EXTENSION**

# `URLSession`
```swift
extension URLSession: Session
```

## Methods
### `beginRequest(_:_:)`

```swift
public func beginRequest(_ request: URLRequest, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task
```

### `createRequest(_:withBaseURL:andHeaders:)`

```swift
public func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders headers: [String: String]) throws -> URLRequest where ResponseType: APIResponseValue
```
