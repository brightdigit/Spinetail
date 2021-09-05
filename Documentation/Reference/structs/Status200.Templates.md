**STRUCT**

# `Status200.Templates`

```swift
public struct Templates: Model
```

Information about a specific template.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `active`

```swift
public var active: Bool?
```

User templates are not 'deleted,' but rather marked as 'inactive.' Returns whether the template is still active.

### `category`

```swift
public var category: String?
```

If available, the category the template is listed in.

### `createdBy`

```swift
public var createdBy: String?
```

The login name for template's creator.

### `dateCreated`

```swift
public var dateCreated: DateTime
```

The date and time the template was created in ISO 8601 format.

### `dateEdited`

```swift
public var dateEdited: DateTime
```

The date and time the template was edited in ISO 8601 format.

### `dragAndDrop`

```swift
public var dragAndDrop: Bool?
```

Whether the template uses the drag and drop editor.

### `editedBy`

```swift
public var editedBy: String?
```

The login name who last edited the template.

### `folderId`

```swift
public var folderId: String?
```

The id of the folder the template is currently in.

### `id`

```swift
public var id: Int?
```

The individual id for the template.

### `name`

```swift
public var name: String?
```

The name of the template.

### `responsive`

```swift
public var responsive: Bool?
```

Whether the template contains media queries to make it responsive.

### `shareURL`

```swift
public var shareURL: String?
```

The URL used for [template sharing](https://mailchimp.com/help/share-a-template/).

### `thumbnail`

```swift
public var thumbnail: String?
```

If available, the URL for a thumbnail of the template.

### `type`

```swift
public var type: String?
```

The type of template (user, base, or gallery).

## Methods
### `init(links:active:category:createdBy:dateCreated:dateEdited:dragAndDrop:editedBy:folderId:id:name:responsive:shareURL:thumbnail:type:)`

```swift
public init(links: [Links]? = nil, active: Bool? = nil, category: String? = nil, createdBy: String? = nil, dateCreated: Date? = nil, dateEdited: Date? = nil, dragAndDrop: Bool? = nil, editedBy: String? = nil, folderId: String? = nil, id: Int? = nil, name: String? = nil, responsive: Bool? = nil, shareURL: String? = nil, thumbnail: String? = nil, type: String? = nil)
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
