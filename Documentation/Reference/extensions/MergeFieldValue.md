**EXTENSION**

# `MergeFieldValue`
```swift
public extension MergeFieldValue
```

## Methods
### `init(string:)`

```swift
init(string: String)
```

### `init(address:)`

```swift
init(address: MCAddress)
```

### `init(from:)`

```swift
init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |