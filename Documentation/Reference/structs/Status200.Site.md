**STRUCT**

# `Status200.Site`

```swift
public struct Site: Model
```

Connected Site

## Properties
### `id`

```swift
public var id: Int?
```

The ID of this connected site.

### `name`

```swift
public var name: String?
```

The name of the connected site

### `url`

```swift
public var url: String?
```

The URL for this connected site.

## Methods
### `init(id:name:url:)`

```swift
public init(id: Int? = nil, name: String? = nil, url: String? = nil)
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
