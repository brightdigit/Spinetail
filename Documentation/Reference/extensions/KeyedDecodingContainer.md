**EXTENSION**

# `KeyedDecodingContainer`
```swift
extension KeyedDecodingContainer
```

## Methods
### `decodeArray(_:safeArrayDecoding:)`

```swift
public func decodeArray<T: Decodable>(_ key: K, safeArrayDecoding: Bool = false) throws -> [T]
```

### `decodeArrayIfPresent(_:)`

```swift
public func decodeArrayIfPresent<T: Decodable>(_ key: K) throws -> [T]?
```
