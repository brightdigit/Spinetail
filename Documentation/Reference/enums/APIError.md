**ENUM**

# `APIError`

```swift
public enum APIError: Error
```

## Cases
### `jsonParsingError(err:)`

```swift
case jsonParsingError(err: String)
```

### `requestError(err:)`

```swift
case requestError(err: Error)
```

### `requestTimeout`

```swift
case requestTimeout
```

### `apiInvalidURL`

```swift
case apiInvalidURL
```

### `apiError(response:)`

```swift
case apiError(response: APIErrorResponse)
```

### `jsonMissingData`

```swift
case jsonMissingData
```

### `jsonMissingResponseData`

```swift
case jsonMissingResponseData
```

### `jsonBoom`

```swift
case jsonBoom
```
