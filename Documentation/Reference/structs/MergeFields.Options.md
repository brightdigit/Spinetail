**STRUCT**

# `MergeFields.Options`

```swift
public struct Options: Model
```

Extra options for some merge field types.

## Properties
### `choices`

```swift
public var choices: [String]?
```

In a radio or dropdown non-group field, the available options for members to pick from.

### `dateFormat`

```swift
public var dateFormat: String?
```

In a date or birthday field, the format of the date.

### `defaultCountry`

```swift
public var defaultCountry: Int?
```

In an address field, the default country code if none supplied.

### `phoneFormat`

```swift
public var phoneFormat: String?
```

In a phone field, the phone number type: US or International.

### `size`

```swift
public var size: Int?
```

In a text field, the default length of the text field.

## Methods
### `init(choices:dateFormat:defaultCountry:phoneFormat:size:)`

```swift
public init(choices: [String]? = nil, dateFormat: String? = nil, defaultCountry: Int? = nil, phoneFormat: String? = nil, size: Int? = nil)
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
