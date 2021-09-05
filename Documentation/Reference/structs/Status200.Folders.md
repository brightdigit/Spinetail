**STRUCT**

# `Status200.Folders`

```swift
public struct Folders: Model
```

A folder used to organize templates.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `count`

```swift
public var count: Int?
```

The number of templates in the folder.

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this template folder.

### `name`

```swift
public var name: String?
```

The name of the folder.

## Methods
### `init(links:count:id:name:)`

```swift
public init(links: [Links]? = nil, count: Int? = nil, id: String? = nil, name: String? = nil)
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
