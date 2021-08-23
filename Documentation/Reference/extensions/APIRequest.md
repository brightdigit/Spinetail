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
### `createURLRequest(baseURL:encoder:)`

```swift
func createURLRequest(baseURL: URL, encoder: RequestEncoder = JSONEncoder()) throws -> URLRequest
```

### `asAny()`

```swift
func asAny() -> AnyRequest
```
