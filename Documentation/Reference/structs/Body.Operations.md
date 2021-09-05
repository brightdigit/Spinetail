**STRUCT**

# `Body.Operations`

```swift
public struct Operations: Model
```

Begin processing a batch operations request.

## Properties
### `method`

```swift
public var method: Method
```

The HTTP method to use for the operation.

### `path`

```swift
public var path: String
```

The relative path to use for the operation.

### `body`

```swift
public var body: String?
```

A string containing the JSON body to use with the request.

### `operationId`

```swift
public var operationId: String?
```

An optional client-supplied id returned with the operation results.

### `params`

```swift
public var params: [String: CodableAny]?
```

Any request query parameters. Example parameters: {"count":10, "offset":0}

## Methods
### `init(method:path:body:operationId:params:)`

```swift
public init(method: Method, path: String, body: String? = nil, operationId: String? = nil, params: [String: CodableAny]? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
