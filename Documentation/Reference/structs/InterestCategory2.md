**STRUCT**

# `InterestCategory2`

```swift
public struct InterestCategory2: Codable
```

Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application.

## Properties
### `title`

```swift
public var title: String
```

The text description of this category. This field appears on signup forms and is often phrased as a question.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The order that the categories are displayed in the list. Lower numbers display first.

### `type`

```swift
public var type: ModelType
```

Determines how this category’s interests appear on signup forms.

## Methods
### `init(title:displayOrder:type:)`

```swift
public init(title: String, displayOrder: Int? = nil, type: ModelType)
```
