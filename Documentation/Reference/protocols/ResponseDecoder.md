**PROTOCOL**

# `ResponseDecoder`

```swift
public protocol ResponseDecoder
```

## Methods
### `decode(_:from:)`

```swift
func decode<T: Decodable>(_ type: T.Type, from: Data) throws -> T
```
