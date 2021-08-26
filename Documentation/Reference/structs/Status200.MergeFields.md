**STRUCT**

# `Status200.MergeFields`

```swift
public struct MergeFields: Model
```

A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `defaultValue`

```swift
public var defaultValue: String?
```

The default value for the merge field if `null`.

### `displayOrder`

```swift
public var displayOrder: Int?
```

The order that the merge field displays on the list signup form.

### `helpText`

```swift
public var helpText: String?
```

Extra text to help the subscriber fill out the form.

### `listId`

```swift
public var listId: String?
```

A string that identifies this merge field collections' list.

### `mergeId`

```swift
public var mergeId: Int?
```

An unchanging id for the merge field.

### `name`

```swift
public var name: String?
```

The name of the merge field (audience field).

### `options`

```swift
public var options: Options?
```

Extra options for some merge field types.

### `public`

```swift
public var `public`: Bool?
```

Whether the merge field is displayed on the signup form.

### `required`

```swift
public var required: Bool?
```

The boolean value if the merge field is required.

### `tag`

```swift
public var tag: String?
```

The merge tag used in Mailchimp campaigns and for the /members endpoint.

### `type`

```swift
public var type: `Type`?
```

The [type](https://mailchimp.com/help/manage-audience-signup-form-fields/#Audience_field_types) for the merge field.

## Methods
### `init(links:defaultValue:displayOrder:helpText:listId:mergeId:name:options:public:required:tag:type:)`

```swift
public init(links: [Links]? = nil, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, listId: String? = nil, mergeId: Int? = nil, name: String? = nil, options: Options? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil, type: Type? = nil)
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
