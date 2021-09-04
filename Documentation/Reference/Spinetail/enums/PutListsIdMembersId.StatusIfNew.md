**ENUM**

# `PutListsIdMembersId.StatusIfNew`

```swift
public enum StatusIfNew: String, Codable, Equatable, CaseIterable
```

Subscriber's status. This value is required only if the email address is not already present on the list.

## Cases
### `subscribed`

```swift
case subscribed
```

### `unsubscribed`

```swift
case unsubscribed
```

### `cleaned`

```swift
case cleaned
```

### `pending`

```swift
case pending
```

### `transactional`

```swift
case transactional
```
