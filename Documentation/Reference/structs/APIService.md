**STRUCT**

# `APIService`

```swift
public struct APIService<ResponseType: APIResponseValue>
```

## Properties
### `id`

```swift
public let id: String
```

### `tag`

```swift
public let tag: String
```

### `method`

```swift
public let method: String
```

### `path`

```swift
public let path: String
```

### `hasBody`

```swift
public let hasBody: Bool
```

### `isUpload`

```swift
public let isUpload: Bool
```

### `securityRequirements`

```swift
public let securityRequirements: [SecurityRequirement]
```

## Methods
### `init(id:tag:method:path:hasBody:isUpload:securityRequirements:)`

```swift
public init(id: String, tag: String = "", method: String, path: String, hasBody: Bool, isUpload: Bool = false, securityRequirements: [SecurityRequirement] = [])
```
