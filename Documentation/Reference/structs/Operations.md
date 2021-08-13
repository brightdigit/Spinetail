**STRUCT**

# `Operations`

```swift
public struct Operations: Codable
```

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

### `params`

```swift
public var params: [String: String]?
```

Any request query parameters. Example parameters: {\&quot;count\&quot;:10, \&quot;offset\&quot;:0}

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

## Methods
### `init(method:path:params:body:operationId:)`

```swift
public init(method: Method, path: String, params: [String: String]? = nil, body: String? = nil, operationId: String? = nil)
```
