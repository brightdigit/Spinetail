**STRUCT**

# `TemplateInstance3`

```swift
public struct TemplateInstance3: Codable
```

Information about a specific template.

## Properties
### `_id`

```swift
public var _id: Int?
```

The individual id for the template.

### `type`

```swift
public var type: String?
```

The type of template (user, base, or gallery).

### `name`

```swift
public var name: String?
```

The name of the template.

### `dragAndDrop`

```swift
public var dragAndDrop: Bool?
```

Whether the template uses the drag and drop editor.

### `responsive`

```swift
public var responsive: Bool?
```

Whether the template contains media queries to make it responsive.

### `category`

```swift
public var category: String?
```

If available, the category the template is listed in.

### `dateCreated`

```swift
public var dateCreated: Date?
```

The date and time the template was created in ISO 8601 format.

### `dateEdited`

```swift
public var dateEdited: Date?
```

The date and time the template was edited in ISO 8601 format.

### `createdBy`

```swift
public var createdBy: String?
```

The login name for template&#x27;s creator.

### `editedBy`

```swift
public var editedBy: String?
```

The login name who last edited the template.

### `active`

```swift
public var active: Bool?
```

User templates are not &#x27;deleted,&#x27; but rather marked as &#x27;inactive.&#x27; Returns whether the template is still active.

### `folderId`

```swift
public var folderId: String?
```

The id of the folder the template is currently in.

### `thumbnail`

```swift
public var thumbnail: String?
```

If available, the URL for a thumbnail of the template.

### `shareUrl`

```swift
public var shareUrl: String?
```

The URL used for [template sharing](https://mailchimp.com/help/share-a-template/).

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:type:name:dragAndDrop:responsive:category:dateCreated:dateEdited:createdBy:editedBy:active:folderId:thumbnail:shareUrl:links:)`

```swift
public init(_id: Int? = nil, type: String? = nil, name: String? = nil, dragAndDrop: Bool? = nil, responsive: Bool? = nil, category: String? = nil, dateCreated: Date? = nil, dateEdited: Date? = nil, createdBy: String? = nil, editedBy: String? = nil, active: Bool? = nil, folderId: String? = nil, thumbnail: String? = nil, shareUrl: String? = nil, links: [ResourceLink]? = nil)
```
