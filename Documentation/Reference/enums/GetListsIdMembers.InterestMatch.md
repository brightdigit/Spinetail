**ENUM**

# `GetListsIdMembers.InterestMatch`

```swift
public enum InterestMatch: String, Codable, Equatable, CaseIterable
```

Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied.

## Cases
### `any`

```swift
case any
```

### `all`

```swift
case all
```

### `none`

```swift
case none
```
