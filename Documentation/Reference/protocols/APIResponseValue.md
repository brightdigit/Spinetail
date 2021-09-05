**PROTOCOL**

# `APIResponseValue`

```swift
public protocol APIResponseValue: CustomDebugStringConvertible, CustomStringConvertible
```

## Properties
### `statusCode`

```swift
var statusCode: Int
```

### `successful`

```swift
var successful: Bool
```

### `response`

```swift
var response: Any
```

### `success`

```swift
var success: SuccessType?
```

## Methods
### `init(statusCode:data:decoder:)`

```swift
init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws
```
