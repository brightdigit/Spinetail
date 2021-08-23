**PROTOCOL**

# `RequestBehaviour`

```swift
public protocol RequestBehaviour
```

## Methods
### `modifyRequest(request:urlRequest:)`

```swift
func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest
```

runs first and allows the requests to be modified. If modifying asynchronously use validate

### `validate(request:urlRequest:complete:)`

```swift
func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)
```

validates and modifies the request. complete must be called with either .success or .fail

### `beforeSend(request:)`

```swift
func beforeSend(request: AnyRequest)
```

called before request is sent

### `onSuccess(request:result:)`

```swift
func onSuccess(request: AnyRequest, result: Any)
```

called when request successfuly returns a 200 range response

### `onFailure(request:error:)`

```swift
func onFailure(request: AnyRequest, error: APIClientError)
```

called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range

### `onResponse(request:response:)`

```swift
func onResponse(request: AnyRequest, response: AnyResponse)
```

called if the request recieves a network response. This is not called if request fails validation or encoding
