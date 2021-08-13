**STRUCT**

# `ActionsTestBody`

```swift
public struct ActionsTestBody: Codable
```

## Properties
### `testEmails`

```swift
public var testEmails: [String]
```

An array of email addresses to send the test email to.

### `sendType`

```swift
public var sendType: SendType
```

Choose the type of test email to send.

## Methods
### `init(testEmails:sendType:)`

```swift
public init(testEmails: [String], sendType: SendType)
```
