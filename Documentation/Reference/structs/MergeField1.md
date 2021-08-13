**STRUCT**

# `MergeField1`

```swift
public struct MergeField1: Codable
```

A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list.

## Properties
### `mergeId`

```swift
public var mergeId: Int?
```

An unchanging id for the merge field.

### `tag`

```swift
public var tag: String?
```

The merge tag used in Mailchimp campaigns and for the /members endpoint.

### `name`

```swift
public var name: String?
```

The name of the merge field (audience field).

### `type`

```swift
public var type: ModelType?
```

The [type](https://mailchimp.com/help/manage-audience-signup-form-fields/#Audience_field_types) for the merge field.

### `_required`

```swift
public var _required: Bool?
```

The boolean value if the merge field is required.

### `defaultValue`

```swift
public var defaultValue: String?
```

The default value for the merge field if &#x60;null&#x60;.

### `_public`

```swift
public var _public: Bool?
```

Whether the merge field is displayed on the signup form.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The order that the merge field displays on the list signup form.

### `options`

```swift
public var options: MergeFieldOptions2?
```

### `helpText`

```swift
public var helpText: String?
```

Extra text to help the subscriber fill out the form.

### `listId`

```swift
public var listId: String?
```

A string that identifies this merge field collections&#x27; list.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(mergeId:tag:name:type:_required:defaultValue:_public:displayOrder:options:helpText:listId:links:)`

```swift
public init(mergeId: Int? = nil, tag: String? = nil, name: String? = nil, type: ModelType? = nil, _required: Bool? = nil, defaultValue: String? = nil, _public: Bool? = nil, displayOrder: Int? = nil, options: MergeFieldOptions2? = nil, helpText: String? = nil, listId: String? = nil, links: [ResourceLink]? = nil)
```
