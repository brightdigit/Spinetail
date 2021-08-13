**CLASS**

# `AlamofireRequestBuilder`

```swift
open class AlamofireRequestBuilder<T>: RequestBuilder<T>
```

## Methods
### `init(method:URLString:parameters:isBody:headers:)`

```swift
public required init(method: String, URLString: String, parameters: [String: Any]?, isBody: Bool, headers: [String: String] = [:])
```

### `createSessionManager()`

```swift
open func createSessionManager() -> Alamofire.Session
```

May be overridden by a subclass if you want to control the session
configuration.

### `contentTypeForFormPart(fileURL:)`

```swift
open func contentTypeForFormPart(fileURL _: URL) -> String?
```

May be overridden by a subclass if you want to control the Content-Type
that is given to an uploaded form part.

Return nil to use the default behavior (inferring the Content-Type from
the file extension).  Return the desired Content-Type otherwise.

### `makeRequest(manager:method:encoding:headers:)`

```swift
open func makeRequest(manager: Session, method: HTTPMethod, encoding: ParameterEncoding, headers: [String: String]) -> DataRequest
```

May be overridden by a subclass if you want to control the request
configuration (e.g. to override the cache policy).

### `execute(_:)`

```swift
override open func execute(_ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void)
```

### `buildHeaders()`

```swift
open func buildHeaders() -> HTTPHeaders
```
