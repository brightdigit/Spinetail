**STRUCT**

# `MergeField`

```swift
public struct MergeField: Codable
```

A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list.

## Properties
### `tag`

```swift
public var tag: String?
```

The merge tag used in Mailchimp campaigns and for the /members endpoint.

### `name`

```swift
public var name: String
```

The name of the merge field (audience field).

### `type`

```swift
public var type: ModelType
```

The [type](https://mailchimp.com/help/manage-audience-signup-form-fields/#Audience_field_types) for the merge field.

### `_required`

```swift
public var _required: Bool?
```

Whether the merge field is required to import a contact.

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
public var options: MergeFieldOptions?
```

### `helpText`

```swift
public var helpText: String?
```

Extra text to help the subscriber fill out the form.

## Methods
### `init(tag:name:type:_required:defaultValue:_public:displayOrder:options:helpText:)`

```swift
public init(tag: String? = nil, name: String, type: ModelType, _required: Bool? = nil, defaultValue: String? = nil, _public: Bool? = nil, displayOrder: Int? = nil, options: MergeFieldOptions? = nil, helpText: String? = nil)
```
