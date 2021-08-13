**STRUCT**

# `MergeFieldOptions2`

```swift
public struct MergeFieldOptions2: Codable
```

Extra options for some merge field types.

## Properties
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

### `dateFormat`

```swift
public var dateFormat: String?
```

In a date or birthday field, the format of the date.

### `choices`

```swift
public var choices: [String]?
```

In a radio or dropdown non-group field, the available options for members to pick from.

### `size`

```swift
public var size: Int?
```

In a text field, the default length of the text field.

## Methods
### `init(defaultCountry:phoneFormat:dateFormat:choices:size:)`

```swift
public init(defaultCountry: Int? = nil, phoneFormat: String? = nil, dateFormat: String? = nil, choices: [String]? = nil, size: Int? = nil)
```
