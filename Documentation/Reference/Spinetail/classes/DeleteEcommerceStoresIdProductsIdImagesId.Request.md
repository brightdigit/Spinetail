**CLASS**

# `DeleteEcommerceStoresIdProductsIdImagesId.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `path`

```swift
override public var path: String
```

## Methods
### `init(options:)`

```swift
public init(options: Options)
```

### `init(storeId:productId:imageId:)`

```swift
public convenience init(storeId: String, productId: String, imageId: String)
```

convenience initialiser so an Option doesn't have to be created