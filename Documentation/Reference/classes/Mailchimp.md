**CLASS**

# `Mailchimp`

```swift
public class Mailchimp: NSObject
```

Provides an interface for storing user behavior in Mailchimp

## Methods
### `initialize(token:autoTagContacts:debugMode:)`

```swift
public class func initialize(token: String, autoTagContacts: Bool = true, debugMode: Bool = false) throws
```

Initializes SDK with API token, and optional configuration settings.
(Throws if the token is malformed)

### `createOrUpdate(contact:result:)`

```swift
public class func createOrUpdate(contact: Contact, result: RequestCallback? = nil) -> ContactOperation?
```

Creates a new Contact and permanently sets the status. If the Contact already exists, contact
information (other than status, which is permanent) is updated.

If no status is set for the Contact, the status permanently defaults to a Transactional status.
For GDPR compliance, set marketing permissions before creating a new Contact.

- Parameters:
    - contact: A Mailchimp contact
    - result: Callback with the Result (success/failure) of the action
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| contact | A Mailchimp contact |
| result | Callback with the Result (success/failure) of the action |

### `addTag(name:emailAddress:result:)`

```swift
public class func addTag(name: String, emailAddress: String, result: RequestCallback? = nil) -> ContactOperation?
```

Adds a tag to a Contact by email address

- Parameters:
    - name: Name of the tag to add
    - emailAddress: Email address of the contact to add the tag to
    - result: Callback with the Result (success/failure) of the action
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| name | Name of the tag to add |
| emailAddress | Email address of the contact to add the tag to |
| result | Callback with the Result (success/failure) of the action |

### `addTags(names:emailAddress:result:)`

```swift
public class func addTags(names: [String], emailAddress: String, result: RequestCallback? = nil) -> ContactOperation?
```

Adds tags to a Contact by email address

- Parameters:
    - names: Names of the tags to add
    - emailAddress: Email address of the contact to add the tags to
    - result: Callback with the Result (success/failure) of the action
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| names | Names of the tags to add |
| emailAddress | Email address of the contact to add the tags to |
| result | Callback with the Result (success/failure) of the action |

### `removeTag(name:emailAddress:result:)`

```swift
public class func removeTag(name: String, emailAddress: String, result: RequestCallback? = nil) -> ContactOperation?
```

Removes a tag from a Contact by email address

- Parameters:
    - name: Name of the tag to remove
    - emailAddress: Email address of the contact to remove the tag from
    - result: Callback with the Result (success/failure) of the action
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| name | Name of the tag to remove |
| emailAddress | Email address of the contact to remove the tag from |
| result | Callback with the Result (success/failure) of the action |

### `removeTags(names:emailAddress:result:)`

```swift
public class func removeTags(names: [String], emailAddress: String, result: RequestCallback? = nil) -> ContactOperation?
```

Removes tags from a Contact by email address

- Parameters:
    - names: Names of the tags to remove
    - emailAddress: Email address of the contact to remove the tags from
    - result: Callback with the Result (success/failure) of the action
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| names | Names of the tags to remove |
| emailAddress | Email address of the contact to remove the tags from |
| result | Callback with the Result (success/failure) of the action |

### `setMergeField(emailAddress:name:value:result:)`

```swift
public class func setMergeField(emailAddress: String, name: String, value: String, result: RequestCallback? = nil) -> ContactOperation?
```

Adds a String MergeField value to a Contact by email address

- Parameters:
    - emailAddress: Email address of the contact
    - name: Name of the Merge Field
    - value: String passed in for the Merge Field value
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| emailAddress | Email address of the contact |
| name | Name of the Merge Field |
| value | String passed in for the Merge Field value |

### `setMergeField(emailAddress:name:address:result:)`

```swift
public class func setMergeField(emailAddress: String, name: String, address: MCAddress, result: RequestCallback? = nil) -> ContactOperation?
```

Adds an Address MergeField to a Contact by email address

- Parameters:
    - emailAddress: Email address of the contact
    - name: Name of the Merge Field
    - value: Address passed in for the Merge Field value
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| emailAddress | Email address of the contact |
| name | Name of the Merge Field |
| value | Address passed in for the Merge Field value |

### `setContactStatus(emailAddress:status:result:)`

```swift
public class func setContactStatus(emailAddress: String, status: Contact.Status, result: RequestCallback? = nil) -> ContactOperation?
```

Sets the status for a Contact ONLY if a contact has NOT yet been created with the supplied email address
Otherwise, this method will NOT change the status of a contact

- Parameters:
    - emailAddress: Email address of the contact
    - status: Status of the Contact
- Returns: `ContactOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| emailAddress | Email address of the contact |
| status | Status of the Contact |

### `trackEventWithAttributes(event:result:)`

```swift
public class func trackEventWithAttributes(event: MCEvent, result: RequestCallback? = nil) -> EventOperation?
```

Adds a new event for the given email address.

- Parameters:
    - event: A Mailchimp event for a contact
    - result: Callback with the Result (success/failure) of the action
- Returns: `EventOperation?`

#### Parameters

| Name | Description |
| ---- | ----------- |
| event | A Mailchimp event for a contact |
| result | Callback with the Result (success/failure) of the action |