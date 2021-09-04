**CLASS**

# `DeleteEcommerceStoresIdCartsLinesId.Request`

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

### `init(storeId:cartId:lineId:)`

```swift
public convenience init(storeId: String, cartId: String, lineId: String)
```

convenience initialiser so an Option doesn't have to be created
