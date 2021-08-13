**EXTENSION**

# `String`
```swift
extension String: CodingKey
```

## Properties
### `stringValue`

```swift
public var stringValue: String
```

### `intValue`

```swift
public var intValue: Int?
```

## Methods
### `init(stringValue:)`

```swift
public init?(stringValue: String)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| stringValue | The string value of the desired key. |

### `init(intValue:)`

```swift
public init?(intValue _: Int)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| intValue | The integer value of the desired key. |