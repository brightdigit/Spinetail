**STRUCT**

# `Bounces`

```swift
public struct Bounces: Codable
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
