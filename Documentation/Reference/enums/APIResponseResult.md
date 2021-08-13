**ENUM**

# `APIResponseResult`

```swift
public enum APIResponseResult<SuccessType, FailureType>: CustomStringConvertible, CustomDebugStringConvertible
```

## Cases
### `success(_:)`

```swift
case success(SuccessType)
```

### `failure(_:)`

```swift
case failure(FailureType)
```

## Properties
### `value`

```swift
public var value: Any
```

### `successful`

```swift
public var successful: Bool
```

### `description`

```swift
public var description: String
```

### `debugDescription`

```swift
public var debugDescription: String
```
