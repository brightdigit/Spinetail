**STRUCT**

# `MCEvent`

```swift
public struct MCEvent: Codable
```

## Properties
### `emailAddress`

```swift
public var emailAddress: String
```

### `name`

```swift
public var name: String
```

### `properties`

```swift
public var properties: [String: String]?
```

## Methods
### `init(emailAddress:name:properties:)`

```swift
public init(emailAddress: String, name: String, properties: [String: String]?) throws
```

Initializes an event
- Parameters:
  - emailAddress: The email address of the Contact
  - name: Name of the Event (must be 30 characters or less)
  - properties: Properties of the Event (names must include only A-z or underscores)

#### Parameters

| Name | Description |
| ---- | ----------- |
| emailAddress | The email address of the Contact |
| name | Name of the Event (must be 30 characters or less) |
| properties | Properties of the Event (names must include only A-z or underscores) |