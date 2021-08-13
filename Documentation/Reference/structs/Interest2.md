**STRUCT**

# `Interest2`

```swift
public struct Interest2: Codable
```

Assign subscribers to interests to group them together. Interests are referred to as &#x27;group names&#x27; in the Mailchimp application.

## Properties
### `name`

```swift
public var name: String
```

The name of the interest. This can be shown publicly on a subscription form.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The display order for interests.

## Methods
### `init(name:displayOrder:)`

```swift
public init(name: String, displayOrder: Int? = nil)
```
