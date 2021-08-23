**EXTENSION**

# `KeyedDecodingContainer`
```swift
extension KeyedDecodingContainer
```

## Methods
### `decodeArray(_:)`

```swift
public func decodeArray<T: Decodable>(_ key: K) throws -> [T]
```

### `decodeArrayIfPresent(_:)`

```swift
public func decodeArrayIfPresent<T: Decodable>(_ key: K) throws -> [T]?
```
