**STRUCT**

# `Status200.Audience`

```swift
public struct Audience: Model
```

Audience settings

## Properties
### `emailSource`

```swift
public var emailSource: EmailSource?
```

### `includeSourceInTarget`

```swift
public var includeSourceInTarget: Bool?
```

To include list contacts as part of audience

### `lookalikeCountryCode`

```swift
public var lookalikeCountryCode: String?
```

To find similar audience in given country

### `sourceType`

```swift
public var sourceType: SourceType?
```

List or Facebook based audience

### `targetingSpecs`

```swift
public var targetingSpecs: TargetingSpecs?
```

### `type`

```swift
public var type: `Type`?
```

Type of the audience

## Methods
### `init(emailSource:includeSourceInTarget:lookalikeCountryCode:sourceType:targetingSpecs:type:)`

```swift
public init(emailSource: EmailSource? = nil, includeSourceInTarget: Bool? = nil, lookalikeCountryCode: String? = nil, sourceType: SourceType? = nil, targetingSpecs: TargetingSpecs? = nil, type: Type? = nil)
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
