**PROTOCOL**

# `RequestBuilderFactory`

```swift
public protocol RequestBuilderFactory
```

## Methods
### `getNonDecodableBuilder()`

```swift
func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type
```

### `getBuilder()`

```swift
func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type
```
