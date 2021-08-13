**EXTENSION**

# `APIRequest`
```swift
public extension APIRequest
```

## Properties
### `description`

```swift
public var description: String
```

### `debugDescription`

```swift
public var debugDescription: String
```

## Methods
### `makeRequest(complete:)`

```swift
func makeRequest(complete: @escaping (APIResponse<ResponseType>) -> Void)
```

makes a request using the default APIClient. Change your baseURL in APIClient.default.baseURL

### `createURLRequest(baseURL:encoder:)`

```swift
func createURLRequest(baseURL: URL, encoder: RequestEncoder = JSONEncoder()) throws -> URLRequest
```

### `asAny()`

```swift
func asAny() -> AnyRequest
```
