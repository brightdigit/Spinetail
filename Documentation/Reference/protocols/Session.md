**PROTOCOL**

# `Session`

```swift
public protocol Session
```

## Methods
### `createRequest(_:withBaseURL:andHeaders:)`

```swift
func createRequest<ResponseType: APIResponseValue>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders header: [String: String]) throws -> RequestType
```

### `beginRequest(_:_:)`

```swift
@discardableResult func beginRequest(_ request: RequestType, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task
```
