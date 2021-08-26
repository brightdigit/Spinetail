**STRUCT**

# `Response.Status200`

```swift
public struct Status200: Model
```

The verified domains currently on the account.

## Properties
### `authenticated`

```swift
public var authenticated: Bool?
```

Whether domain authentication is enabled for this domain.

### `domain`

```swift
public var domain: String?
```

The name of this domain.

### `verificationEmail`

```swift
public var verificationEmail: String?
```

The e-mail address receiving the two-factor challenge for this domain.

### `verificationSent`

```swift
public var verificationSent: DateTime
```

The date/time that the two-factor challenge was sent to the verification email.

### `verified`

```swift
public var verified: Bool?
```

Whether the domain has been verified for sending.

## Methods
### `init(authenticated:domain:verificationEmail:verificationSent:verified:)`

```swift
public init(authenticated: Bool? = nil, domain: String? = nil, verificationEmail: String? = nil, verificationSent: Date? = nil, verified: Bool? = nil)
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
