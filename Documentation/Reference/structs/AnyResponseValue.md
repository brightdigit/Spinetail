**STRUCT**

# `AnyResponseValue`

```swift
public struct AnyResponseValue: APIResponseValue, CustomDebugStringConvertible, CustomStringConvertible
```

## Properties
### `statusCode`

```swift
public let statusCode: Int
```

### `successful`

```swift
public let successful: Bool
```

### `response`

```swift
public let response: Any
```

### `responseEnum`

```swift
public let responseEnum: Any
```

### `success`

```swift
public let success: AnyCodable?
```

### `description`

```swift
public var description: String
```

### `debugDescription`

```swift
public var debugDescription: String
```

## Methods
### `init(statusCode:successful:response:responseEnum:success:)`

```swift
public init(statusCode: Int, successful: Bool, response: Any, responseEnum: Any, success: AnyCodable?)
```

### `init(statusCode:data:decoder:)`

```swift
public init(statusCode _: Int, data _: Data, decoder _: ResponseDecoder) throws
```
