**ENUM**

# `APIHelper`

```swift
public enum APIHelper
```

## Methods
### `rejectNil(_:)`

```swift
public static func rejectNil(_ source: [String: Any?]) -> [String: Any]?
```

### `rejectNilHeaders(_:)`

```swift
public static func rejectNilHeaders(_ source: [String: Any?]) -> [String: String]
```

### `convertBoolToString(_:)`

```swift
public static func convertBoolToString(_ source: [String: Any]?) -> [String: Any]?
```

### `mapValuesToQueryItems(_:)`

```swift
public static func mapValuesToQueryItems(_ source: [String: Any?]) -> [URLQueryItem]?
```
