**STRUCT**

# `Status200.Bounces`

```swift
public struct Bounces: Model
```

An object describing the bounce summary for the campaign.

## Properties
### `hardBounces`

```swift
public var hardBounces: Int?
```

The total number of hard bounced email addresses.

### `softBounces`

```swift
public var softBounces: Int?
```

The total number of soft bounced email addresses.

### `syntaxErrors`

```swift
public var syntaxErrors: Int?
```

The total number of addresses that were syntax-related bounces.

## Methods
### `init(hardBounces:softBounces:syntaxErrors:)`

```swift
public init(hardBounces: Int? = nil, softBounces: Int? = nil, syntaxErrors: Int? = nil)
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
