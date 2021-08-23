**STRUCT**

# `APIResponse`

```swift
public struct APIResponse<T: APIResponseValue>
```

## Properties
### `request`

```swift
public let request: APIRequest<T>
```

The APIRequest used for this response

### `result`

```swift
public let result: APIResult<T>
```

The result of the response .

### `urlRequest`

```swift
public let urlRequest: URLRequest?
```

The URL request sent to the server.

### `urlResponse`

```swift
public let urlResponse: HTTPURLResponse?
```

The server's response to the URL request.

### `data`

```swift
public let data: Data?
```

The data returned by the server.
