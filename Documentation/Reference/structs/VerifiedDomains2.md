**STRUCT**

# `VerifiedDomains2`

```swift
public struct VerifiedDomains2: Codable
```

The verified domains currently on the account.

## Properties
### `verificationEmail`

```swift
public var verificationEmail: String
```

The e-mail address at the domain you want to verify. This will receive a two-factor challenge to be used in the verify action.

## Methods
### `init(verificationEmail:)`

```swift
public init(verificationEmail: String)
```
