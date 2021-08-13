**EXTENSION**

# `RequestBehaviour`
```swift
public extension RequestBehaviour
```

## Methods
### `modifyRequest(request:urlRequest:)`

```swift
func modifyRequest(request _: AnyRequest, urlRequest: URLRequest) -> URLRequest
```

### `validate(request:urlRequest:complete:)`

```swift
func validate(request _: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)
```

### `beforeSend(request:)`

```swift
func beforeSend(request _: AnyRequest)
```

### `onSuccess(request:result:)`

```swift
func onSuccess(request _: AnyRequest, result _: Any)
```

### `onFailure(request:error:)`

```swift
func onFailure(request _: AnyRequest, error _: APIClientError)
```

### `onResponse(request:response:)`

```swift
func onResponse(request _: AnyRequest, response _: AnyResponse)
```
