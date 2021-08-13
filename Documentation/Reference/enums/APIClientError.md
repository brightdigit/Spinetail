**ENUM**

# `APIClientError`

```swift
public enum APIClientError: Error
```

## Cases
### `unexpectedStatusCode(statusCode:data:)`

```swift
case unexpectedStatusCode(statusCode: Int, data: Data)
```

### `decodingError(_:)`

```swift
case decodingError(DecodingError)
```

### `requestEncodingError(_:)`

```swift
case requestEncodingError(Error)
```

### `validationError(_:)`

```swift
case validationError(Error)
```

### `networkError(_:)`

```swift
case networkError(Error)
```

### `unknownError(_:)`

```swift
case unknownError(Error)
```

## Properties
### `name`

```swift
public var name: String
```
