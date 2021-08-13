**STRUCT**

# `VerifiedDomains`

```swift
public struct VerifiedDomains: Codable
```

The verified domains currently on the account.

## Properties
### `domain`

```swift
public var domain: String?
```

The name of this domain.

### `verified`

```swift
public var verified: Bool?
```

Whether the domain has been verified for sending.

### `authenticated`

```swift
public var authenticated: Bool?
```

Whether domain authentication is enabled for this domain.

### `verificationEmail`

```swift
public var verificationEmail: String?
```

The e-mail address receiving the two-factor challenge for this domain.

### `verificationSent`

```swift
public var verificationSent: Date?
```

The date/time that the two-factor challenge was sent to the verification email.

## Methods
### `init(domain:verified:authenticated:verificationEmail:verificationSent:)`

```swift
public init(domain: String? = nil, verified: Bool? = nil, authenticated: Bool? = nil, verificationEmail: String? = nil, verificationSent: Date? = nil)
```
