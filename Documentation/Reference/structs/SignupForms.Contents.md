**STRUCT**

# `SignupForms.Contents`

```swift
public struct Contents: Model
```

Collection of Content for List Signup Forms.

## Properties
### `section`

```swift
public var section: Section?
```

The content section name.

### `value`

```swift
public var value: String?
```

The content section text.

## Methods
### `init(section:value:)`

```swift
public init(section: Section? = nil, value: String? = nil)
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
