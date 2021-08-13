**CLASS**

# `CodableHelper`

```swift
open class CodableHelper
```

## Methods
### `decode(_:from:)`

```swift
open class func decode<T>(_ type: T.Type, from data: Data) -> (decodableObj: T?, error: Error?) where T: Decodable
```

### `encode(_:prettyPrint:)`

```swift
open class func encode<T>(_ value: T, prettyPrint: Bool = false) -> EncodeResult where T: Encodable
```
