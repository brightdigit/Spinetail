**EXTENSION**

# `KeyedDecodingContainerProtocol`
```swift
public extension KeyedDecodingContainerProtocol
```

## Methods
### `decodeArray(_:forKey:)`

```swift
func decodeArray<T>(_: T.Type, forKey key: Self.Key) throws -> [T] where T: Decodable
```

### `decodeArrayIfPresent(_:forKey:)`

```swift
func decodeArrayIfPresent<T>(_: T.Type, forKey key: Self.Key) throws -> [T]? where T: Decodable
```

### `decodeMap(_:excludedKeys:)`

```swift
func decodeMap<T>(_: T.Type, excludedKeys: Set<Self.Key>) throws -> [Self.Key: T] where T: Decodable
```
