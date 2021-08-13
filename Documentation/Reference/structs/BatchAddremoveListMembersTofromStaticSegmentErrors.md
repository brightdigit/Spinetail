**STRUCT**

# `BatchAddremoveListMembersTofromStaticSegmentErrors`

```swift
public struct BatchAddremoveListMembersTofromStaticSegmentErrors: Codable
```

## Properties
### `emailAddresses`

```swift
public var emailAddresses: [String]?
```

Email addresses added to the static segment or removed

### `error`

```swift
public var error: String?
```

The error message indicating why the email addresses could not be added or updated.

## Methods
### `init(emailAddresses:error:)`

```swift
public init(emailAddresses: [String]? = nil, error: String? = nil)
```
