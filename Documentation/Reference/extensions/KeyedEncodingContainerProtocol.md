**EXTENSION**

# `KeyedEncodingContainerProtocol`
```swift
public extension KeyedEncodingContainerProtocol
```

## Methods
### `encodeArray(_:forKey:)`

```swift
mutating func encodeArray<T>(_ values: [T], forKey key: Self.Key) throws where T: Encodable
```

### `encodeArrayIfPresent(_:forKey:)`

```swift
mutating func encodeArrayIfPresent<T>(_ values: [T]?, forKey key: Self.Key) throws where T: Encodable
```

### `encodeMap(_:)`

```swift
mutating func encodeMap<T>(_ pairs: [Self.Key: T]) throws where T: Encodable
```

### `encodeMapIfPresent(_:)`

```swift
mutating func encodeMapIfPresent<T>(_ pairs: [Self.Key: T]?) throws where T: Encodable
```
