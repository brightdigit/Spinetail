**CLASS**

# `ListsAPI`

```swift
open class ListsAPI
```

## Methods
### `deleteListsId(listId:completion:)`

```swift
open class func deleteListsId(listId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete list

- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdWithRequestBuilder(listId:)`

```swift
open class func deleteListsIdWithRequestBuilder(listId: String) -> RequestBuilder<Void>
```

Delete list
- DELETE /lists/{list_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |

### `deleteListsIdInterestCategoriesId(listId:interestCategoryId:completion:)`

```swift
open class func deleteListsIdInterestCategoriesId(listId: String, interestCategoryId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete interest category

- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdInterestCategoriesIdWithRequestBuilder(listId:interestCategoryId:)`

```swift
open class func deleteListsIdInterestCategoriesIdWithRequestBuilder(listId: String, interestCategoryId: String) -> RequestBuilder<Void>
```

Delete interest category
- DELETE /lists/{list_id}/interest-categories/{interest_category_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |

### `deleteListsIdInterestCategoriesIdInterestsId(listId:interestCategoryId:interestId:completion:)`

```swift
open class func deleteListsIdInterestCategoriesIdInterestsId(listId: String, interestCategoryId: String, interestId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete interest in category

- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| interestId | (path) The specific interest or 'group name'. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId:interestCategoryId:interestId:)`

```swift
open class func deleteListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId: String, interestCategoryId: String, interestId: String) -> RequestBuilder<Void>
```

Delete interest in category
- DELETE /lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter interestId: (path) The specific interest or &#x27;group name&#x27;.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| interestId | (path) The specific interest or 'group name'. |

### `deleteListsIdMembersId(listId:subscriberHash:completion:)`

```swift
open class func deleteListsIdMembersId(listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Archive list member

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdMembersIdWithRequestBuilder(listId:subscriberHash:)`

```swift
open class func deleteListsIdMembersIdWithRequestBuilder(listId: String, subscriberHash: String) -> RequestBuilder<Void>
```

Archive list member
- DELETE /lists/{list_id}/members/{subscriber_hash}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `deleteListsIdMembersIdNotesId(listId:subscriberHash:noteId:completion:)`

```swift
open class func deleteListsIdMembersIdNotesId(listId: String, subscriberHash: String, noteId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete note

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter noteId: (path) The id for the note.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| noteId | (path) The id for the note. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdMembersIdNotesIdWithRequestBuilder(listId:subscriberHash:noteId:)`

```swift
open class func deleteListsIdMembersIdNotesIdWithRequestBuilder(listId: String, subscriberHash: String, noteId: String) -> RequestBuilder<Void>
```

Delete note
- DELETE /lists/{list_id}/members/{subscriber_hash}/notes/{note_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter noteId: (path) The id for the note.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| noteId | (path) The id for the note. |

### `deleteListsIdMergeFieldsId(listId:mergeId:completion:)`

```swift
open class func deleteListsIdMergeFieldsId(listId: String, mergeId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete merge field

- parameter listId: (path) The unique ID for the list.
- parameter mergeId: (path) The id for the merge field.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| mergeId | (path) The id for the merge field. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdMergeFieldsIdWithRequestBuilder(listId:mergeId:)`

```swift
open class func deleteListsIdMergeFieldsIdWithRequestBuilder(listId: String, mergeId: String) -> RequestBuilder<Void>
```

Delete merge field
- DELETE /lists/{list_id}/merge-fields/{merge_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter mergeId: (path) The id for the merge field.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| mergeId | (path) The id for the merge field. |

### `deleteListsIdSegmentsId(listId:segmentId:completion:)`

```swift
open class func deleteListsIdSegmentsId(listId: String, segmentId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete segment

- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdSegmentsIdWithRequestBuilder(listId:segmentId:)`

```swift
open class func deleteListsIdSegmentsIdWithRequestBuilder(listId: String, segmentId: String) -> RequestBuilder<Void>
```

Delete segment
- DELETE /lists/{list_id}/segments/{segment_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |

### `deleteListsIdSegmentsIdMembersId(listId:segmentId:subscriberHash:completion:)`

```swift
open class func deleteListsIdSegmentsIdMembersId(listId: String, segmentId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Remove list member from segment

- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdSegmentsIdMembersIdWithRequestBuilder(listId:segmentId:subscriberHash:)`

```swift
open class func deleteListsIdSegmentsIdMembersIdWithRequestBuilder(listId: String, segmentId: String, subscriberHash: String) -> RequestBuilder<Void>
```

Remove list member from segment
- DELETE /lists/{list_id}/segments/{segment_id}/members/{subscriber_hash}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `deleteListsIdWebhooksId(listId:webhookId:completion:)`

```swift
open class func deleteListsIdWebhooksId(listId: String, webhookId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete webhook

- parameter listId: (path) The unique ID for the list.
- parameter webhookId: (path) The webhook&#x27;s id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| webhookId | (path) The webhook's id. |
| completion | completion handler to receive the data and the error objects |

### `deleteListsIdWebhooksIdWithRequestBuilder(listId:webhookId:)`

```swift
open class func deleteListsIdWebhooksIdWithRequestBuilder(listId: String, webhookId: String) -> RequestBuilder<Void>
```

Delete webhook
- DELETE /lists/{list_id}/webhooks/{webhook_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter webhookId: (path) The webhook&#x27;s id.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| webhookId | (path) The webhook's id. |

### `getListMemberTags(listId:subscriberHash:fields:excludeFields:count:offset:completion:)`

```swift
open class func getListMemberTags(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CollectionOfTags?, _ error: Error?) -> Void))
```

List member tags

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getListMemberTagsWithRequestBuilder(listId:subscriberHash:fields:excludeFields:count:offset:)`

```swift
open class func getListMemberTagsWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CollectionOfTags>
```

     List member tags
     - GET /lists/{list_id}/members/{subscriber_hash}/tags

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "total_items" : 6,
  "tags" : [ {
    "date_added" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "id" : 0
  }, {
    "date_added" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "id" : 0
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<CollectionOfTags>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getLists(fields:excludeFields:count:offset:beforeDateCreated:sinceDateCreated:beforeCampaignLastSent:sinceCampaignLastSent:email:sortField:sortDir:hasEcommerceStore:includeTotalContacts:completion:)`

```swift
open class func getLists(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, beforeDateCreated: String? = nil, sinceDateCreated: String? = nil, beforeCampaignLastSent: String? = nil, sinceCampaignLastSent: String? = nil, email: String? = nil, sortField: SortField_getLists? = nil, sortDir: SortDir_getLists? = nil, hasEcommerceStore: Bool? = nil, includeTotalContacts: Bool? = nil, completion: @escaping ((_ data: SubscriberLists?, _ error: Error?) -> Void))
```

Get lists info

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter beforeDateCreated: (query) Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceDateCreated: (query) Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeCampaignLastSent: (query) Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceCampaignLastSent: (query) Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter email: (query) Restrict results to lists that include a specific subscriber&#x27;s email address. (optional)
- parameter sortField: (query) Returns files sorted by the specified field. (optional)
- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter hasEcommerceStore: (query) Restrict results to lists that contain an active, connected, undeleted ecommerce store. (optional)
- parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| beforeDateCreated | (query) Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceDateCreated | (query) Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeCampaignLastSent | (query) Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCampaignLastSent | (query) Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| email | (query) Restrict results to lists that include a specific subscriber's email address. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| hasEcommerceStore | (query) Restrict results to lists that contain an active, connected, undeleted ecommerce store. (optional) |
| includeTotalContacts | (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsWithRequestBuilder(fields:excludeFields:count:offset:beforeDateCreated:sinceDateCreated:beforeCampaignLastSent:sinceCampaignLastSent:email:sortField:sortDir:hasEcommerceStore:includeTotalContacts:)`

```swift
open class func getListsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, beforeDateCreated: String? = nil, sinceDateCreated: String? = nil, beforeCampaignLastSent: String? = nil, sinceCampaignLastSent: String? = nil, email: String? = nil, sortField: SortField_getLists? = nil, sortDir: SortDir_getLists? = nil, hasEcommerceStore: Bool? = nil, includeTotalContacts: Bool? = nil) -> RequestBuilder<SubscriberLists>
```

     Get lists info
     - GET /lists

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "lists" : [ {
    "notify_on_subscribe" : "false",
    "subscribe_url_long" : "subscribe_url_long",
    "marketing_permissions" : false,
    "permission_reminder" : "permission_reminder",
    "use_archive_bar" : false,
    "notify_on_unsubscribe" : "false",
    "visibility" : "pub",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "date_created" : "2000-01-23T04:56:07.000+00:00",
    "campaign_defaults" : {
      "from_email" : "from_email",
      "subject" : "subject",
      "language" : "language",
      "from_name" : "from_name"
    },
    "web_id" : 0,
    "modules" : [ "modules", "modules" ],
    "email_type_option" : true,
    "beamer_address" : "beamer_address",
    "has_welcome" : false,
    "stats" : {
      "cleaned_count" : 2,
      "unsubscribe_count_since_send" : 9,
      "member_count_since_send" : 7,
      "click_rate" : 6.84685269835264,
      "cleaned_count_since_send" : 3,
      "total_contacts" : 5,
      "campaign_count" : 2,
      "avg_unsub_rate" : 1.2315135367772556,
      "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
      "unsubscribe_count" : 5,
      "target_sub_rate" : 1.0246457001441578,
      "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
      "avg_sub_rate" : 7.386281948385884,
      "member_count" : 1,
      "merge_field_count" : 4,
      "open_rate" : 1.4894159098541704,
      "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
    },
    "contact" : {
      "zip" : "zip",
      "country" : "country",
      "address2" : "address2",
      "city" : "city",
      "phone" : "phone",
      "address1" : "address1",
      "company" : "company",
      "state" : "state"
    },
    "name" : "name",
    "list_rating" : 6,
    "double_optin" : false,
    "id" : "id",
    "subscribe_url_short" : "subscribe_url_short"
  }, {
    "notify_on_subscribe" : "false",
    "subscribe_url_long" : "subscribe_url_long",
    "marketing_permissions" : false,
    "permission_reminder" : "permission_reminder",
    "use_archive_bar" : false,
    "notify_on_unsubscribe" : "false",
    "visibility" : "pub",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "date_created" : "2000-01-23T04:56:07.000+00:00",
    "campaign_defaults" : {
      "from_email" : "from_email",
      "subject" : "subject",
      "language" : "language",
      "from_name" : "from_name"
    },
    "web_id" : 0,
    "modules" : [ "modules", "modules" ],
    "email_type_option" : true,
    "beamer_address" : "beamer_address",
    "has_welcome" : false,
    "stats" : {
      "cleaned_count" : 2,
      "unsubscribe_count_since_send" : 9,
      "member_count_since_send" : 7,
      "click_rate" : 6.84685269835264,
      "cleaned_count_since_send" : 3,
      "total_contacts" : 5,
      "campaign_count" : 2,
      "avg_unsub_rate" : 1.2315135367772556,
      "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
      "unsubscribe_count" : 5,
      "target_sub_rate" : 1.0246457001441578,
      "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
      "avg_sub_rate" : 7.386281948385884,
      "member_count" : 1,
      "merge_field_count" : 4,
      "open_rate" : 1.4894159098541704,
      "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
    },
    "contact" : {
      "zip" : "zip",
      "country" : "country",
      "address2" : "address2",
      "city" : "city",
      "phone" : "phone",
      "address1" : "address1",
      "company" : "company",
      "state" : "state"
    },
    "name" : "name",
    "list_rating" : 6,
    "double_optin" : false,
    "id" : "id",
    "subscribe_url_short" : "subscribe_url_short"
  } ],
  "total_items" : 7,
  "constraints" : {
    "may_create" : true,
    "current_total_instances" : 4,
    "max_instances" : 1
  }
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter beforeDateCreated: (query) Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceDateCreated: (query) Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeCampaignLastSent: (query) Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceCampaignLastSent: (query) Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter email: (query) Restrict results to lists that include a specific subscriber&#x27;s email address. (optional)
     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
     - parameter hasEcommerceStore: (query) Restrict results to lists that contain an active, connected, undeleted ecommerce store. (optional)
     - parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)

     - returns: RequestBuilder<SubscriberLists>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| beforeDateCreated | (query) Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceDateCreated | (query) Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeCampaignLastSent | (query) Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCampaignLastSent | (query) Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| email | (query) Restrict results to lists that include a specific subscriber's email address. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| hasEcommerceStore | (query) Restrict results to lists that contain an active, connected, undeleted ecommerce store. (optional) |
| includeTotalContacts | (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional) |

### `getListsId(listId:fields:excludeFields:includeTotalContacts:completion:)`

```swift
open class func getListsId(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeTotalContacts: Bool? = nil, completion: @escaping ((_ data: SubscriberList1?, _ error: Error?) -> Void))
```

Get list info

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| includeTotalContacts | (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdWithRequestBuilder(listId:fields:excludeFields:includeTotalContacts:)`

```swift
open class func getListsIdWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeTotalContacts: Bool? = nil) -> RequestBuilder<SubscriberList1>
```

     Get list info
     - GET /lists/{list_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "notify_on_subscribe" : "false",
  "subscribe_url_long" : "subscribe_url_long",
  "marketing_permissions" : false,
  "permission_reminder" : "permission_reminder",
  "use_archive_bar" : false,
  "notify_on_unsubscribe" : "false",
  "visibility" : "pub",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "date_created" : "2000-01-23T04:56:07.000+00:00",
  "campaign_defaults" : {
    "from_email" : "from_email",
    "subject" : "subject",
    "language" : "language",
    "from_name" : "from_name"
  },
  "web_id" : 0,
  "modules" : [ "modules", "modules" ],
  "email_type_option" : true,
  "beamer_address" : "beamer_address",
  "has_welcome" : false,
  "stats" : {
    "cleaned_count" : 2,
    "unsubscribe_count_since_send" : 9,
    "member_count_since_send" : 7,
    "click_rate" : 6.84685269835264,
    "cleaned_count_since_send" : 3,
    "total_contacts" : 5,
    "campaign_count" : 2,
    "avg_unsub_rate" : 1.2315135367772556,
    "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
    "unsubscribe_count" : 5,
    "target_sub_rate" : 1.0246457001441578,
    "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
    "avg_sub_rate" : 7.386281948385884,
    "member_count" : 1,
    "merge_field_count" : 4,
    "open_rate" : 1.4894159098541704,
    "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
  },
  "contact" : {
    "zip" : "zip",
    "country" : "country",
    "address2" : "address2",
    "city" : "city",
    "phone" : "phone",
    "address1" : "address1",
    "company" : "company",
    "state" : "state"
  },
  "name" : "name",
  "list_rating" : 6,
  "double_optin" : false,
  "id" : "id",
  "subscribe_url_short" : "subscribe_url_short"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)

     - returns: RequestBuilder<SubscriberList1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| includeTotalContacts | (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional) |

### `getListsIdAbuseReports(listId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getListsIdAbuseReports(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: AbuseComplaints?, _ error: Error?) -> Void))
```

List abuse reports

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdAbuseReportsWithRequestBuilder(listId:fields:excludeFields:count:offset:)`

```swift
open class func getListsIdAbuseReportsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<AbuseComplaints>
```

     List abuse reports
     - GET /lists/{list_id}/abuse-reports

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "total_items" : 6,
  "abuse_reports" : [ {
    "email_id" : "email_id",
    "date" : "date",
    "email_address" : "email_address",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "id" : 0,
    "vip" : true,
    "campaign_id" : "campaign_id"
  }, {
    "email_id" : "email_id",
    "date" : "date",
    "email_address" : "email_address",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "id" : 0,
    "vip" : true,
    "campaign_id" : "campaign_id"
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<AbuseComplaints>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getListsIdAbuseReportsId(listId:reportId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getListsIdAbuseReportsId(listId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: AbuseComplaint?, _ error: Error?) -> Void))
```

Get abuse report

- parameter listId: (path) The unique ID for the list.
- parameter reportId: (path) The id for the abuse report.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| reportId | (path) The id for the abuse report. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdAbuseReportsIdWithRequestBuilder(listId:reportId:fields:excludeFields:count:offset:)`

```swift
open class func getListsIdAbuseReportsIdWithRequestBuilder(listId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<AbuseComplaint>
```

     Get abuse report
     - GET /lists/{list_id}/abuse-reports/{report_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "date" : "date",
  "email_address" : "email_address",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "merge_fields" : {
    "key" : { }
  },
  "id" : 0,
  "vip" : true,
  "campaign_id" : "campaign_id"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter reportId: (path) The id for the abuse report.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<AbuseComplaint>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| reportId | (path) The id for the abuse report. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getListsIdActivity(listId:fields:excludeFields:completion:)`

```swift
open class func getListsIdActivity(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ListActivity?, _ error: Error?) -> Void))
```

List recent activity

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdActivityWithRequestBuilder(listId:fields:excludeFields:)`

```swift
open class func getListsIdActivityWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ListActivity>
```

     List recent activity
     - GET /lists/{list_id}/activity

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "activity" : [ {
    "soft_bounce" : 5,
    "hard_bounce" : 5,
    "subs" : 2,
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "emails_sent" : 0,
    "unsubs" : 7,
    "recipient_clicks" : 1,
    "other_adds" : 9,
    "day" : "day",
    "unique_opens" : 6,
    "other_removes" : 3
  }, {
    "soft_bounce" : 5,
    "hard_bounce" : 5,
    "subs" : 2,
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "emails_sent" : 0,
    "unsubs" : 7,
    "recipient_clicks" : 1,
    "other_adds" : 9,
    "day" : "day",
    "unique_opens" : 6,
    "other_removes" : 3
  } ],
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "total_items" : 2
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ListActivity>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdClients(listId:fields:excludeFields:completion:)`

```swift
open class func getListsIdClients(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EmailClients?, _ error: Error?) -> Void))
```

List top email clients

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdClientsWithRequestBuilder(listId:fields:excludeFields:)`

```swift
open class func getListsIdClientsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EmailClients>
```

     List top email clients
     - GET /lists/{list_id}/clients

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "clients" : [ {
    "members" : 0,
    "client" : "client"
  }, {
    "members" : 0,
    "client" : "client"
  } ],
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "total_items" : 6
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<EmailClients>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdGrowthHistory(listId:fields:excludeFields:count:offset:sortField:sortDir:completion:)`

```swift
open class func getListsIdGrowthHistory(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getListsIdGrowthHistory? = nil, sortDir: SortDir_getListsIdGrowthHistory? = nil, completion: @escaping ((_ data: GrowthHistory?, _ error: Error?) -> Void))
```

List growth history data

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter sortField: (query) Returns files sorted by the specified field. (optional)
- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdGrowthHistoryWithRequestBuilder(listId:fields:excludeFields:count:offset:sortField:sortDir:)`

```swift
open class func getListsIdGrowthHistoryWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getListsIdGrowthHistory? = nil, sortDir: SortDir_getListsIdGrowthHistory? = nil) -> RequestBuilder<GrowthHistory>
```

     List growth history data
     - GET /lists/{list_id}/growth-history

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "history" : [ {
    "imports" : 6,
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "pending" : 9,
    "reconfirm" : 2,
    "existing" : 0,
    "optins" : 1,
    "subscribed" : 5,
    "unsubscribed" : 5,
    "deleted" : 3,
    "month" : "month",
    "cleaned" : 7,
    "transactional" : 2
  }, {
    "imports" : 6,
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "pending" : 9,
    "reconfirm" : 2,
    "existing" : 0,
    "optins" : 1,
    "subscribed" : 5,
    "unsubscribed" : 5,
    "deleted" : 3,
    "month" : "month",
    "cleaned" : 7,
    "transactional" : 2
  } ],
  "total_items" : 4
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)

     - returns: RequestBuilder<GrowthHistory>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |

### `getListsIdGrowthHistoryId(listId:month:fields:excludeFields:completion:)`

```swift
open class func getListsIdGrowthHistoryId(listId: String, month: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: GrowthHistory1?, _ error: Error?) -> Void))
```

Get growth history by month

- parameter listId: (path) The unique ID for the list.
- parameter month: (path) A specific month of list growth history.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| month | (path) A specific month of list growth history. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdGrowthHistoryIdWithRequestBuilder(listId:month:fields:excludeFields:)`

```swift
open class func getListsIdGrowthHistoryIdWithRequestBuilder(listId: String, month: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<GrowthHistory1>
```

     Get growth history by month
     - GET /lists/{list_id}/growth-history/{month}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "imports" : 6,
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "pending" : 9,
  "reconfirm" : 2,
  "existing" : 0,
  "optins" : 1,
  "subscribed" : 5,
  "unsubscribed" : 5,
  "deleted" : 3,
  "month" : "month",
  "cleaned" : 7,
  "transactional" : 2
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter month: (path) A specific month of list growth history.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<GrowthHistory1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| month | (path) A specific month of list growth history. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdInterestCategories(listId:fields:excludeFields:count:offset:type:completion:)`

```swift
open class func getListsIdInterestCategories(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, completion: @escaping ((_ data: InterestGroupings?, _ error: Error?) -> Void))
```

List interest categories

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter type: (query) Restrict results a type of interest group (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) Restrict results a type of interest group (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdInterestCategoriesWithRequestBuilder(listId:fields:excludeFields:count:offset:type:)`

```swift
open class func getListsIdInterestCategoriesWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil) -> RequestBuilder<InterestGroupings>
```

     List interest categories
     - GET /lists/{list_id}/interest-categories

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "categories" : [ {
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "display_order" : 0,
    "id" : "id",
    "title" : "title",
    "type" : "checkboxes"
  }, {
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "display_order" : 0,
    "id" : "id",
    "title" : "title",
    "type" : "checkboxes"
  } ],
  "total_items" : 6
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter type: (query) Restrict results a type of interest group (optional)

     - returns: RequestBuilder<InterestGroupings>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) Restrict results a type of interest group (optional) |

### `getListsIdInterestCategoriesId(listId:interestCategoryId:fields:excludeFields:completion:)`

```swift
open class func getListsIdInterestCategoriesId(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: InterestCategory1?, _ error: Error?) -> Void))
```

Get interest category info

- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdInterestCategoriesIdWithRequestBuilder(listId:interestCategoryId:fields:excludeFields:)`

```swift
open class func getListsIdInterestCategoriesIdWithRequestBuilder(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<InterestCategory1>
```

     Get interest category info
     - GET /lists/{list_id}/interest-categories/{interest_category_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "display_order" : 0,
  "id" : "id",
  "title" : "title",
  "type" : "checkboxes"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter interestCategoryId: (path) The unique ID for the interest category.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<InterestCategory1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdInterestCategoriesIdInterests(listId:interestCategoryId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getListsIdInterestCategoriesIdInterests(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Interests?, _ error: Error?) -> Void))
```

List interests in category

- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdInterestCategoriesIdInterestsWithRequestBuilder(listId:interestCategoryId:fields:excludeFields:count:offset:)`

```swift
open class func getListsIdInterestCategoriesIdInterestsWithRequestBuilder(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Interests>
```

     List interests in category
     - GET /lists/{list_id}/interest-categories/{interest_category_id}/interests

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "category_id" : "category_id",
  "_links" : [ null, null ],
  "interests" : [ {
    "category_id" : "category_id",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "subscriber_count" : "subscriber_count",
    "name" : "name",
    "display_order" : 0,
    "id" : "id"
  }, {
    "category_id" : "category_id",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "subscriber_count" : "subscriber_count",
    "name" : "name",
    "display_order" : 0,
    "id" : "id"
  } ],
  "total_items" : 6
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter interestCategoryId: (path) The unique ID for the interest category.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<Interests>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getListsIdInterestCategoriesIdInterestsId(listId:interestCategoryId:interestId:fields:excludeFields:completion:)`

```swift
open class func getListsIdInterestCategoriesIdInterestsId(listId: String, interestCategoryId: String, interestId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Interest1?, _ error: Error?) -> Void))
```

Get interest in category

- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| interestId | (path) The specific interest or 'group name'. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId:interestCategoryId:interestId:fields:excludeFields:)`

```swift
open class func getListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId: String, interestCategoryId: String, interestId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Interest1>
```

     Get interest in category
     - GET /lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "category_id" : "category_id",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "subscriber_count" : "subscriber_count",
  "name" : "name",
  "display_order" : 0,
  "id" : "id"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter interestCategoryId: (path) The unique ID for the interest category.
     - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<Interest1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| interestId | (path) The specific interest or 'group name'. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdLocations(listId:fields:excludeFields:completion:)`

```swift
open class func getListsIdLocations(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ListLocations?, _ error: Error?) -> Void))
```

List locations

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdLocationsWithRequestBuilder(listId:fields:excludeFields:)`

```swift
open class func getListsIdLocationsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ListLocations>
```

     List locations
     - GET /lists/{list_id}/locations

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "locations" : [ {
    "cc" : "cc",
    "country" : "country",
    "total" : 6,
    "percent" : 0.8008281904610115
  }, {
    "cc" : "cc",
    "country" : "country",
    "total" : 6,
    "percent" : 0.8008281904610115
  } ],
  "total_items" : 1
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ListLocations>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdMembers(listId:fields:excludeFields:count:offset:emailType:status:sinceTimestampOpt:beforeTimestampOpt:sinceLastChanged:beforeLastChanged:uniqueEmailId:vipOnly:interestCategoryId:interestIds:interestMatch:sortField:sortDir:sinceLastCampaign:unsubscribedSince:completion:)`

```swift
open class func getListsIdMembers(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailType: String? = nil, status: Status_getListsIdMembers? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch_getListsIdMembers? = nil, sortField: SortField_getListsIdMembers? = nil, sortDir: SortDir_getListsIdMembers? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil, completion: @escaping ((_ data: ListMembers1?, _ error: Error?) -> Void))
```

List members info

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter emailType: (query) The email type. (optional)
- parameter status: (query) The subscriber&#x27;s status. (optional)
- parameter sinceTimestampOpt: (query) Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeTimestampOpt: (query) Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceLastChanged: (query) Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeLastChanged: (query) Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter uniqueEmailId: (query) A unique identifier for the email address across all Mailchimp lists. (optional)
- parameter vipOnly: (query) A filter to return only the list&#x27;s VIP members. Passing &#x60;true&#x60; will restrict results to VIP list members, passing &#x60;false&#x60; will return all list members. (optional)
- parameter interestCategoryId: (query) The unique id for the interest category. (optional)
- parameter interestIds: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. (optional)
- parameter interestMatch: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. \&quot;any\&quot; will match a member with any of the interest supplied, \&quot;all\&quot; will only match members with every interest supplied, and \&quot;none\&quot; will match members without any of the interest supplied. (optional)
- parameter sortField: (query) Returns files sorted by the specified field. (optional)
- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter sinceLastCampaign: (query) Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. (optional)
- parameter unsubscribedSince: (query) Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| emailType | (query) The email type. (optional) |
| status | (query) The subscriber's status. (optional) |
| sinceTimestampOpt | (query) Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeTimestampOpt | (query) Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceLastChanged | (query) Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeLastChanged | (query) Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| uniqueEmailId | (query) A unique identifier for the email address across all Mailchimp lists. (optional) |
| vipOnly | (query) A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members. (optional) |
| interestCategoryId | (query) The unique id for the interest category. (optional) |
| interestIds | (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. (optional) |
| interestMatch | (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. &quot;any&quot; will match a member with any of the interest supplied, &quot;all&quot; will only match members with every interest supplied, and &quot;none&quot; will match members without any of the interest supplied. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| sinceLastCampaign | (query) Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. (optional) |
| unsubscribedSince | (query) Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersWithRequestBuilder(listId:fields:excludeFields:count:offset:emailType:status:sinceTimestampOpt:beforeTimestampOpt:sinceLastChanged:beforeLastChanged:uniqueEmailId:vipOnly:interestCategoryId:interestIds:interestMatch:sortField:sortDir:sinceLastCampaign:unsubscribedSince:)`

```swift
open class func getListsIdMembersWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailType: String? = nil, status: Status_getListsIdMembers? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch_getListsIdMembers? = nil, sortField: SortField_getListsIdMembers? = nil, sortDir: SortDir_getListsIdMembers? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil) -> RequestBuilder<ListMembers1>
```

     List members info
     - GET /lists/{list_id}/members

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "members" : [ {
    "marketing_permissions" : [ {
      "marketing_permission_id" : "marketing_permission_id",
      "text" : "text",
      "enabled" : true
    }, {
      "marketing_permission_id" : "marketing_permission_id",
      "text" : "text",
      "enabled" : true
    } ],
    "list_id" : "list_id",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "ip_signup" : "ip_signup",
    "member_rating" : 2,
    "language" : "language",
    "source" : "source",
    "unsubscribe_reason" : "unsubscribe_reason",
    "email_client" : "email_client",
    "stats" : {
      "ecommerce_data" : {
        "total_revenue" : 5.962133916683182,
        "number_of_orders" : 5.637376656633329,
        "currency_code" : "USD"
      },
      "avg_click_rate" : 1.4658129805029452,
      "avg_open_rate" : 6.027456183070403
    },
    "tags_count" : 7,
    "ip_opt" : "ip_opt",
    "id" : "id",
    "vip" : true,
    "email_type" : "email_type",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "web_id" : 0,
    "tags" : [ {
      "name" : "name",
      "id" : 2
    }, {
      "name" : "name",
      "id" : 2
    } ],
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "full_name" : "full_name",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "interests" : {
      "key" : true
    },
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "marketing_permissions" : [ {
      "marketing_permission_id" : "marketing_permission_id",
      "text" : "text",
      "enabled" : true
    }, {
      "marketing_permission_id" : "marketing_permission_id",
      "text" : "text",
      "enabled" : true
    } ],
    "list_id" : "list_id",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "ip_signup" : "ip_signup",
    "member_rating" : 2,
    "language" : "language",
    "source" : "source",
    "unsubscribe_reason" : "unsubscribe_reason",
    "email_client" : "email_client",
    "stats" : {
      "ecommerce_data" : {
        "total_revenue" : 5.962133916683182,
        "number_of_orders" : 5.637376656633329,
        "currency_code" : "USD"
      },
      "avg_click_rate" : 1.4658129805029452,
      "avg_open_rate" : 6.027456183070403
    },
    "tags_count" : 7,
    "ip_opt" : "ip_opt",
    "id" : "id",
    "vip" : true,
    "email_type" : "email_type",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "web_id" : 0,
    "tags" : [ {
      "name" : "name",
      "id" : 2
    }, {
      "name" : "name",
      "id" : 2
    } ],
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "full_name" : "full_name",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "interests" : {
      "key" : true
    },
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "total_items" : 9
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter emailType: (query) The email type. (optional)
     - parameter status: (query) The subscriber&#x27;s status. (optional)
     - parameter sinceTimestampOpt: (query) Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeTimestampOpt: (query) Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceLastChanged: (query) Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeLastChanged: (query) Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter uniqueEmailId: (query) A unique identifier for the email address across all Mailchimp lists. (optional)
     - parameter vipOnly: (query) A filter to return only the list&#x27;s VIP members. Passing &#x60;true&#x60; will restrict results to VIP list members, passing &#x60;false&#x60; will return all list members. (optional)
     - parameter interestCategoryId: (query) The unique id for the interest category. (optional)
     - parameter interestIds: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. (optional)
     - parameter interestMatch: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. \&quot;any\&quot; will match a member with any of the interest supplied, \&quot;all\&quot; will only match members with every interest supplied, and \&quot;none\&quot; will match members without any of the interest supplied. (optional)
     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
     - parameter sinceLastCampaign: (query) Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. (optional)
     - parameter unsubscribedSince: (query) Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. (optional)

     - returns: RequestBuilder<ListMembers1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| emailType | (query) The email type. (optional) |
| status | (query) The subscriber's status. (optional) |
| sinceTimestampOpt | (query) Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeTimestampOpt | (query) Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceLastChanged | (query) Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeLastChanged | (query) Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| uniqueEmailId | (query) A unique identifier for the email address across all Mailchimp lists. (optional) |
| vipOnly | (query) A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members. (optional) |
| interestCategoryId | (query) The unique id for the interest category. (optional) |
| interestIds | (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. (optional) |
| interestMatch | (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. &quot;any&quot; will match a member with any of the interest supplied, &quot;all&quot; will only match members with every interest supplied, and &quot;none&quot; will match members without any of the interest supplied. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| sinceLastCampaign | (query) Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. (optional) |
| unsubscribedSince | (query) Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. (optional) |

### `getListsIdMembersId(listId:subscriberHash:fields:excludeFields:completion:)`

```swift
open class func getListsIdMembersId(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void))
```

Get member info

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdWithRequestBuilder(listId:subscriberHash:fields:excludeFields:)`

```swift
open class func getListsIdMembersIdWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ListMembers2>
```

     Get member info
     - GET /lists/{list_id}/members/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "marketing_permissions" : [ {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  }, {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  } ],
  "list_id" : "list_id",
  "last_note" : {
    "note_id" : 9,
    "note" : "note",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "created_by" : "created_by"
  },
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "merge_fields" : {
    "key" : { }
  },
  "ip_signup" : "ip_signup",
  "member_rating" : 6,
  "language" : "language",
  "source" : "source",
  "unsubscribe_reason" : "unsubscribe_reason",
  "email_client" : "email_client",
  "stats" : {
    "ecommerce_data" : {
      "total_revenue" : 5.962133916683182,
      "number_of_orders" : 5.637376656633329,
      "currency_code" : "USD"
    },
    "avg_click_rate" : 1.4658129805029452,
    "avg_open_rate" : 6.027456183070403
  },
  "tags_count" : 1,
  "ip_opt" : "ip_opt",
  "id" : "id",
  "vip" : true,
  "email_type" : "email_type",
  "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
  "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 0,
  "tags" : [ {
    "name" : "name",
    "id" : 2
  }, {
    "name" : "name",
    "id" : 2
  } ],
  "unique_email_id" : "unique_email_id",
  "email_address" : "email_address",
  "full_name" : "full_name",
  "location" : {
    "country_code" : "country_code",
    "dstoff" : 7,
    "timezone" : "timezone",
    "latitude" : 5.962133916683182,
    "gmtoff" : 2,
    "longitude" : 5.637376656633329
  },
  "interests" : {
    "key" : true
  },
  "status" : "subscribed",
  "last_changed" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ListMembers2>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdMembersIdActivity(listId:subscriberHash:fields:excludeFields:action:completion:)`

```swift
open class func getListsIdMembersIdActivity(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil, completion: @escaping ((_ data: MemberActivityEvents?, _ error: Error?) -> Void))
```

View recent activity 50

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter action: (query) A comma seperated list of actions to return. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| action | (query) A comma seperated list of actions to return. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdActivityWithRequestBuilder(listId:subscriberHash:fields:excludeFields:action:)`

```swift
open class func getListsIdMembersIdActivityWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil) -> RequestBuilder<MemberActivityEvents>
```

     View recent activity 50
     - GET /lists/{list_id}/members/{subscriber_hash}/activity

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "activity" : [ {
    "parent_campaign" : "parent_campaign",
    "action" : "action",
    "type" : "type",
    "title" : "title",
    "url" : "url",
    "campaign_id" : "campaign_id",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "parent_campaign" : "parent_campaign",
    "action" : "action",
    "type" : "type",
    "title" : "title",
    "url" : "url",
    "campaign_id" : "campaign_id",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "total_items" : 0
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter action: (query) A comma seperated list of actions to return. (optional)

     - returns: RequestBuilder<MemberActivityEvents>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| action | (query) A comma seperated list of actions to return. (optional) |

### `getListsIdMembersIdActivityFeed(listId:subscriberHash:fields:excludeFields:count:offset:activityFilters:completion:)`

```swift
open class func getListsIdMembersIdActivityFeed(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, activityFilters: [String]? = nil, completion: @escaping ((_ data: MemberActivityEvents1?, _ error: Error?) -> Void))
```

View recent activity

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter activityFilters: (query) A comma-separated list of activity filters that correspond to a set of activity types, e.g \&quot;?activity_filters&#x3D;open,bounce,click\&quot;. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| activityFilters | (query) A comma-separated list of activity filters that correspond to a set of activity types, e.g &quot;?activity_filters=open,bounce,click&quot;. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdActivityFeedWithRequestBuilder(listId:subscriberHash:fields:excludeFields:count:offset:activityFilters:)`

```swift
open class func getListsIdMembersIdActivityFeedWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, activityFilters: [String]? = nil) -> RequestBuilder<MemberActivityEvents1>
```

     View recent activity
     - GET /lists/{list_id}/members/{subscriber_hash}/activity-feed

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "activity" : [ { }, { } ],
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter activityFilters: (query) A comma-separated list of activity filters that correspond to a set of activity types, e.g \&quot;?activity_filters&#x3D;open,bounce,click\&quot;. (optional)

     - returns: RequestBuilder<MemberActivityEvents1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| activityFilters | (query) A comma-separated list of activity filters that correspond to a set of activity types, e.g &quot;?activity_filters=open,bounce,click&quot;. (optional) |

### `getListsIdMembersIdEvents(listId:subscriberHash:count:offset:fields:excludeFields:completion:)`

```swift
open class func getListsIdMembersIdEvents(listId: String, subscriberHash: String, count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CollectionOfEvents?, _ error: Error?) -> Void))
```

List member events

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts email addresses. |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdEventsWithRequestBuilder(listId:subscriberHash:count:offset:fields:excludeFields:)`

```swift
open class func getListsIdMembersIdEventsWithRequestBuilder(listId: String, subscriberHash: String, count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CollectionOfEvents>
```

     List member events
     - GET /lists/{list_id}/members/{subscriber_hash}/events

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "total_items" : 0,
  "events" : [ {
    "occurred_at" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "properties" : {
      "key" : "properties"
    }
  }, {
    "occurred_at" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "properties" : {
      "key" : "properties"
    }
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<CollectionOfEvents>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts email addresses. |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdMembersIdGoals(listId:subscriberHash:fields:excludeFields:completion:)`

```swift
open class func getListsIdMembersIdGoals(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CollectionOfMemberActivityEvents?, _ error: Error?) -> Void))
```

List member goal events

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdGoalsWithRequestBuilder(listId:subscriberHash:fields:excludeFields:)`

```swift
open class func getListsIdMembersIdGoalsWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CollectionOfMemberActivityEvents>
```

     List member goal events
     - GET /lists/{list_id}/members/{subscriber_hash}/goals

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "total_items" : 6,
  "goals" : [ {
    "goal_id" : 0,
    "data" : "data",
    "last_visited_at" : "2000-01-23T04:56:07.000+00:00",
    "event" : "event"
  }, {
    "goal_id" : 0,
    "data" : "data",
    "last_visited_at" : "2000-01-23T04:56:07.000+00:00",
    "event" : "event"
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<CollectionOfMemberActivityEvents>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdMembersIdNotes(listId:subscriberHash:sortField:sortDir:fields:excludeFields:count:offset:completion:)`

```swift
open class func getListsIdMembersIdNotes(listId: String, subscriberHash: String, sortField: SortField_getListsIdMembersIdNotes? = nil, sortDir: SortDir_getListsIdMembersIdNotes? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CollectionOfNotes?, _ error: Error?) -> Void))
```

List recent member notes

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter sortField: (query) Returns notes sorted by the specified field. (optional)
- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| sortField | (query) Returns notes sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdNotesWithRequestBuilder(listId:subscriberHash:sortField:sortDir:fields:excludeFields:count:offset:)`

```swift
open class func getListsIdMembersIdNotesWithRequestBuilder(listId: String, subscriberHash: String, sortField: SortField_getListsIdMembersIdNotes? = nil, sortDir: SortDir_getListsIdMembersIdNotes? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CollectionOfNotes>
```

     List recent member notes
     - GET /lists/{list_id}/members/{subscriber_hash}/notes

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "notes" : [ {
    "email_id" : "email_id",
    "note" : "note",
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "created_by" : "created_by"
  }, {
    "email_id" : "email_id",
    "note" : "note",
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "created_by" : "created_by"
  } ],
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "total_items" : 6
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter sortField: (query) Returns notes sorted by the specified field. (optional)
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<CollectionOfNotes>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| sortField | (query) Returns notes sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getListsIdMembersIdNotesId(listId:subscriberHash:noteId:fields:excludeFields:completion:)`

```swift
open class func getListsIdMembersIdNotesId(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: MemberNotes1?, _ error: Error?) -> Void))
```

Get member note

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter noteId: (path) The id for the note.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| noteId | (path) The id for the note. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMembersIdNotesIdWithRequestBuilder(listId:subscriberHash:noteId:fields:excludeFields:)`

```swift
open class func getListsIdMembersIdNotesIdWithRequestBuilder(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<MemberNotes1>
```

     Get member note
     - GET /lists/{list_id}/members/{subscriber_hash}/notes/{note_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "note" : "note",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "created_by" : "created_by"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter noteId: (path) The id for the note.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<MemberNotes1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| noteId | (path) The id for the note. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdMergeFields(listId:fields:excludeFields:count:offset:type:_required:completion:)`

```swift
open class func getListsIdMergeFields(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, _required: Bool? = nil, completion: @escaping ((_ data: CollectionOfMergeFields?, _ error: Error?) -> Void))
```

List merge fields

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter type: (query) The merge field type. (optional)
- parameter _required: (query) Whether it&#x27;s a required merge field. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) The merge field type. (optional) |
| _required | (query) Whether it's a required merge field. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMergeFieldsWithRequestBuilder(listId:fields:excludeFields:count:offset:type:_required:)`

```swift
open class func getListsIdMergeFieldsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, _required: Bool? = nil) -> RequestBuilder<CollectionOfMergeFields>
```

     List merge fields
     - GET /lists/{list_id}/merge-fields

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "merge_fields" : [ {
    "public" : true,
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "name" : "name",
    "display_order" : 6,
    "options" : {
      "size" : 5,
      "date_format" : "date_format",
      "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
      "default_country" : 1,
      "phone_format" : "phone_format"
    },
    "merge_id" : 0,
    "default_value" : "default_value",
    "tag" : "tag",
    "type" : "text",
    "required" : true,
    "help_text" : "help_text"
  }, {
    "public" : true,
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "name" : "name",
    "display_order" : 6,
    "options" : {
      "size" : 5,
      "date_format" : "date_format",
      "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
      "default_country" : 1,
      "phone_format" : "phone_format"
    },
    "merge_id" : 0,
    "default_value" : "default_value",
    "tag" : "tag",
    "type" : "text",
    "required" : true,
    "help_text" : "help_text"
  } ],
  "total_items" : 5
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter type: (query) The merge field type. (optional)
     - parameter _required: (query) Whether it&#x27;s a required merge field. (optional)

     - returns: RequestBuilder<CollectionOfMergeFields>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) The merge field type. (optional) |
| _required | (query) Whether it's a required merge field. (optional) |

### `getListsIdMergeFieldsId(listId:mergeId:excludeFields:fields:completion:)`

```swift
open class func getListsIdMergeFieldsId(listId: String, mergeId: String, excludeFields: [String]? = nil, fields: [String]? = nil, completion: @escaping ((_ data: MergeField1?, _ error: Error?) -> Void))
```

Get merge field

- parameter listId: (path) The unique ID for the list.
- parameter mergeId: (path) The id for the merge field.
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| mergeId | (path) The id for the merge field. |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdMergeFieldsIdWithRequestBuilder(listId:mergeId:excludeFields:fields:)`

```swift
open class func getListsIdMergeFieldsIdWithRequestBuilder(listId: String, mergeId: String, excludeFields: [String]? = nil, fields: [String]? = nil) -> RequestBuilder<MergeField1>
```

     Get merge field
     - GET /lists/{list_id}/merge-fields/{merge_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "public" : true,
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "name" : "name",
  "display_order" : 6,
  "options" : {
    "size" : 5,
    "date_format" : "date_format",
    "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
    "default_country" : 1,
    "phone_format" : "phone_format"
  },
  "merge_id" : 0,
  "default_value" : "default_value",
  "tag" : "tag",
  "type" : "text",
  "required" : true,
  "help_text" : "help_text"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter mergeId: (path) The id for the merge field.
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<MergeField1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| mergeId | (path) The id for the merge field. |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |

### `getListsIdSegmentsId(listId:segmentId:fields:excludeFields:includeCleaned:includeTransactional:includeUnsubscribed:completion:)`

```swift
open class func getListsIdSegmentsId(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, completion: @escaping ((_ data: List4?, _ error: Error?) -> Void))
```

Get segment info

- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter includeCleaned: (query) Include cleaned members in response (optional)
- parameter includeTransactional: (query) Include transactional members in response (optional)
- parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| includeCleaned | (query) Include cleaned members in response (optional) |
| includeTransactional | (query) Include transactional members in response (optional) |
| includeUnsubscribed | (query) Include unsubscribed members in response (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdSegmentsIdWithRequestBuilder(listId:segmentId:fields:excludeFields:includeCleaned:includeTransactional:includeUnsubscribed:)`

```swift
open class func getListsIdSegmentsIdWithRequestBuilder(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) -> RequestBuilder<List4>
```

     Get segment info
     - GET /lists/{list_id}/segments/{segment_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "name" : "name",
  "options" : {
    "match" : "any",
    "conditions" : [ { }, { } ]
  },
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "member_count" : 6,
  "type" : "saved"
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter segmentId: (path) The unique id for the segment.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter includeCleaned: (query) Include cleaned members in response (optional)
     - parameter includeTransactional: (query) Include transactional members in response (optional)
     - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)

     - returns: RequestBuilder<List4>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| includeCleaned | (query) Include cleaned members in response (optional) |
| includeTransactional | (query) Include transactional members in response (optional) |
| includeUnsubscribed | (query) Include unsubscribed members in response (optional) |

### `getListsIdSegmentsIdMembers(listId:segmentId:fields:excludeFields:count:offset:includeCleaned:includeTransactional:includeUnsubscribed:completion:)`

```swift
open class func getListsIdSegmentsIdMembers(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, completion: @escaping ((_ data: SegmentMembers?, _ error: Error?) -> Void))
```

List members in segment

- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter includeCleaned: (query) Include cleaned members in response (optional)
- parameter includeTransactional: (query) Include transactional members in response (optional)
- parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| includeCleaned | (query) Include cleaned members in response (optional) |
| includeTransactional | (query) Include transactional members in response (optional) |
| includeUnsubscribed | (query) Include unsubscribed members in response (optional) |
| completion | completion handler to receive the data and the error objects |

### `getListsIdSegmentsIdMembersWithRequestBuilder(listId:segmentId:fields:excludeFields:count:offset:includeCleaned:includeTransactional:includeUnsubscribed:)`

```swift
open class func getListsIdSegmentsIdMembersWithRequestBuilder(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) -> RequestBuilder<SegmentMembers>
```

     List members in segment
     - GET /lists/{list_id}/segments/{segment_id}/members

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "members" : [ {
    "email_type" : "email_type",
    "list_id" : "list_id",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "ip_signup" : "ip_signup",
    "member_rating" : 0,
    "language" : "language",
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "email_client" : "email_client",
    "stats" : {
      "avg_click_rate" : 6.027456183070403,
      "avg_open_rate" : 0.8008281904610115
    },
    "ip_opt" : "ip_opt",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "id" : "id",
    "interests" : {
      "key" : true
    },
    "vip" : true,
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "email_type" : "email_type",
    "list_id" : "list_id",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "ip_signup" : "ip_signup",
    "member_rating" : 0,
    "language" : "language",
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "email_client" : "email_client",
    "stats" : {
      "avg_click_rate" : 6.027456183070403,
      "avg_open_rate" : 0.8008281904610115
    },
    "ip_opt" : "ip_opt",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "id" : "id",
    "interests" : {
      "key" : true
    },
    "vip" : true,
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "total_items" : 6
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter segmentId: (path) The unique id for the segment.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter includeCleaned: (query) Include cleaned members in response (optional)
     - parameter includeTransactional: (query) Include transactional members in response (optional)
     - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)

     - returns: RequestBuilder<SegmentMembers>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| includeCleaned | (query) Include cleaned members in response (optional) |
| includeTransactional | (query) Include transactional members in response (optional) |
| includeUnsubscribed | (query) Include unsubscribed members in response (optional) |

### `getListsIdSignupForms(listId:completion:)`

```swift
open class func getListsIdSignupForms(listId: String, completion: @escaping ((_ data: ListSignupForms?, _ error: Error?) -> Void))
```

List signup forms

- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `getListsIdSignupFormsWithRequestBuilder(listId:)`

```swift
open class func getListsIdSignupFormsWithRequestBuilder(listId: String) -> RequestBuilder<ListSignupForms>
```

     List signup forms
     - GET /lists/{list_id}/signup-forms

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "signup_forms" : [ {
    "list_id" : "4ca5becb8d",
    "contents" : [ {
      "section" : "signup_message",
      "value" : "Signup message goes here"
    }, {
      "section" : "signup_message",
      "value" : "Signup message goes here"
    } ],
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "header" : {
      "image_height" : "200",
      "image_link" : "gotothisimage.com",
      "image_align" : "center",
      "image_border_color" : "#896d6d",
      "image_url" : "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
      "image_border_style" : "solid",
      "image_alt" : "This is an image",
      "text" : "Header Text goes here",
      "image_width" : "800",
      "image_target" : "_blank",
      "image_border_width" : "2"
    },
    "signup_form_url" : "signup_form_url",
    "styles" : [ {
      "options" : [ {
        "property" : "background-color",
        "value" : "#111111"
      }, {
        "property" : "background-color",
        "value" : "#111111"
      } ],
      "selector" : "page_background"
    }, {
      "options" : [ {
        "property" : "background-color",
        "value" : "#111111"
      }, {
        "property" : "background-color",
        "value" : "#111111"
      } ],
      "selector" : "page_background"
    } ]
  }, {
    "list_id" : "4ca5becb8d",
    "contents" : [ {
      "section" : "signup_message",
      "value" : "Signup message goes here"
    }, {
      "section" : "signup_message",
      "value" : "Signup message goes here"
    } ],
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "header" : {
      "image_height" : "200",
      "image_link" : "gotothisimage.com",
      "image_align" : "center",
      "image_border_color" : "#896d6d",
      "image_url" : "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
      "image_border_style" : "solid",
      "image_alt" : "This is an image",
      "text" : "Header Text goes here",
      "image_width" : "800",
      "image_target" : "_blank",
      "image_border_width" : "2"
    },
    "signup_form_url" : "signup_form_url",
    "styles" : [ {
      "options" : [ {
        "property" : "background-color",
        "value" : "#111111"
      }, {
        "property" : "background-color",
        "value" : "#111111"
      } ],
      "selector" : "page_background"
    }, {
      "options" : [ {
        "property" : "background-color",
        "value" : "#111111"
      }, {
        "property" : "background-color",
        "value" : "#111111"
      } ],
      "selector" : "page_background"
    } ]
  } ],
  "total_items" : 0
}}]
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<ListSignupForms>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |

### `getListsIdWebhooks(listId:completion:)`

```swift
open class func getListsIdWebhooks(listId: String, completion: @escaping ((_ data: ListWebhooks?, _ error: Error?) -> Void))
```

List webhooks

- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `getListsIdWebhooksWithRequestBuilder(listId:)`

```swift
open class func getListsIdWebhooksWithRequestBuilder(listId: String) -> RequestBuilder<ListWebhooks>
```

     List webhooks
     - GET /lists/{list_id}/webhooks

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "webhooks" : [ {
    "sources" : {
      "admin" : true,
      "api" : true,
      "user" : true
    },
    "list_id" : "4ca5becb8d",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "id" : "5d9a5e3f7b",
    "url" : "http://yourdomain.com/webhook",
    "events" : {
      "subscribe" : true,
      "unsubscribe" : true,
      "profile" : true,
      "cleaned" : true,
      "campaign" : true,
      "upemail" : true
    }
  }, {
    "sources" : {
      "admin" : true,
      "api" : true,
      "user" : true
    },
    "list_id" : "4ca5becb8d",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "id" : "5d9a5e3f7b",
    "url" : "http://yourdomain.com/webhook",
    "events" : {
      "subscribe" : true,
      "unsubscribe" : true,
      "profile" : true,
      "cleaned" : true,
      "campaign" : true,
      "upemail" : true
    }
  } ],
  "_links" : [ null, null ],
  "total_items" : 0
}}]
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<ListWebhooks>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |

### `getListsIdWebhooksId(listId:webhookId:completion:)`

```swift
open class func getListsIdWebhooksId(listId: String, webhookId: String, completion: @escaping ((_ data: ListWebhooks1?, _ error: Error?) -> Void))
```

Get webhook info

- parameter listId: (path) The unique ID for the list.
- parameter webhookId: (path) The webhook&#x27;s id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| webhookId | (path) The webhook's id. |
| completion | completion handler to receive the data and the error objects |

### `getListsIdWebhooksIdWithRequestBuilder(listId:webhookId:)`

```swift
open class func getListsIdWebhooksIdWithRequestBuilder(listId: String, webhookId: String) -> RequestBuilder<ListWebhooks1>
```

     Get webhook info
     - GET /lists/{list_id}/webhooks/{webhook_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "sources" : {
    "admin" : true,
    "api" : true,
    "user" : true
  },
  "list_id" : "4ca5becb8d",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "id" : "5d9a5e3f7b",
  "url" : "http://yourdomain.com/webhook",
  "events" : {
    "subscribe" : true,
    "unsubscribe" : true,
    "profile" : true,
    "cleaned" : true,
    "campaign" : true,
    "upemail" : true
  }
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter webhookId: (path) The webhook&#x27;s id.

     - returns: RequestBuilder<ListWebhooks1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| webhookId | (path) The webhook's id. |

### `patchListsId(body:listId:completion:)`

```swift
open class func patchListsId(body: SubscriberList2, listId: String, completion: @escaping ((_ data: SubscriberList1?, _ error: Error?) -> Void))
```

Update lists

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdWithRequestBuilder(body:listId:)`

```swift
open class func patchListsIdWithRequestBuilder(body: SubscriberList2, listId: String) -> RequestBuilder<SubscriberList1>
```

     Update lists
     - PATCH /lists/{list_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "notify_on_subscribe" : "false",
  "subscribe_url_long" : "subscribe_url_long",
  "marketing_permissions" : false,
  "permission_reminder" : "permission_reminder",
  "use_archive_bar" : false,
  "notify_on_unsubscribe" : "false",
  "visibility" : "pub",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "date_created" : "2000-01-23T04:56:07.000+00:00",
  "campaign_defaults" : {
    "from_email" : "from_email",
    "subject" : "subject",
    "language" : "language",
    "from_name" : "from_name"
  },
  "web_id" : 0,
  "modules" : [ "modules", "modules" ],
  "email_type_option" : true,
  "beamer_address" : "beamer_address",
  "has_welcome" : false,
  "stats" : {
    "cleaned_count" : 2,
    "unsubscribe_count_since_send" : 9,
    "member_count_since_send" : 7,
    "click_rate" : 6.84685269835264,
    "cleaned_count_since_send" : 3,
    "total_contacts" : 5,
    "campaign_count" : 2,
    "avg_unsub_rate" : 1.2315135367772556,
    "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
    "unsubscribe_count" : 5,
    "target_sub_rate" : 1.0246457001441578,
    "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
    "avg_sub_rate" : 7.386281948385884,
    "member_count" : 1,
    "merge_field_count" : 4,
    "open_rate" : 1.4894159098541704,
    "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
  },
  "contact" : {
    "zip" : "zip",
    "country" : "country",
    "address2" : "address2",
    "city" : "city",
    "phone" : "phone",
    "address1" : "address1",
    "company" : "company",
    "state" : "state"
  },
  "name" : "name",
  "list_rating" : 6,
  "double_optin" : false,
  "id" : "id",
  "subscribe_url_short" : "subscribe_url_short"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<SubscriberList1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |

### `patchListsIdInterestCategoriesId(body:listId:interestCategoryId:completion:)`

```swift
open class func patchListsIdInterestCategoriesId(body: InterestCategory2, listId: String, interestCategoryId: String, completion: @escaping ((_ data: InterestCategory1?, _ error: Error?) -> Void))
```

Update interest category

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdInterestCategoriesIdWithRequestBuilder(body:listId:interestCategoryId:)`

```swift
open class func patchListsIdInterestCategoriesIdWithRequestBuilder(body: InterestCategory2, listId: String, interestCategoryId: String) -> RequestBuilder<InterestCategory1>
```

     Update interest category
     - PATCH /lists/{list_id}/interest-categories/{interest_category_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "display_order" : 0,
  "id" : "id",
  "title" : "title",
  "type" : "checkboxes"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter interestCategoryId: (path) The unique ID for the interest category.

     - returns: RequestBuilder<InterestCategory1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |

### `patchListsIdInterestCategoriesIdInterestsId(body:listId:interestCategoryId:interestId:completion:)`

```swift
open class func patchListsIdInterestCategoriesIdInterestsId(body: Interest2, listId: String, interestCategoryId: String, interestId: String, completion: @escaping ((_ data: Interest1?, _ error: Error?) -> Void))
```

Update interest in category

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| interestId | (path) The specific interest or 'group name'. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(body:listId:interestCategoryId:interestId:)`

```swift
open class func patchListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(body: Interest2, listId: String, interestCategoryId: String, interestId: String) -> RequestBuilder<Interest1>
```

     Update interest in category
     - PATCH /lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "category_id" : "category_id",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "subscriber_count" : "subscriber_count",
  "name" : "name",
  "display_order" : 0,
  "id" : "id"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter interestCategoryId: (path) The unique ID for the interest category.
     - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.

     - returns: RequestBuilder<Interest1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| interestId | (path) The specific interest or 'group name'. |

### `patchListsIdMembersId(body:listId:subscriberHash:skipMergeValidation:completion:)`

```swift
open class func patchListsIdMembersId(body: AddListMembers3, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void))
```

Update list member

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdMembersIdWithRequestBuilder(body:listId:subscriberHash:skipMergeValidation:)`

```swift
open class func patchListsIdMembersIdWithRequestBuilder(body: AddListMembers3, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil) -> RequestBuilder<ListMembers2>
```

     Update list member
     - PATCH /lists/{list_id}/members/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "marketing_permissions" : [ {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  }, {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  } ],
  "list_id" : "list_id",
  "last_note" : {
    "note_id" : 9,
    "note" : "note",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "created_by" : "created_by"
  },
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "merge_fields" : {
    "key" : { }
  },
  "ip_signup" : "ip_signup",
  "member_rating" : 6,
  "language" : "language",
  "source" : "source",
  "unsubscribe_reason" : "unsubscribe_reason",
  "email_client" : "email_client",
  "stats" : {
    "ecommerce_data" : {
      "total_revenue" : 5.962133916683182,
      "number_of_orders" : 5.637376656633329,
      "currency_code" : "USD"
    },
    "avg_click_rate" : 1.4658129805029452,
    "avg_open_rate" : 6.027456183070403
  },
  "tags_count" : 1,
  "ip_opt" : "ip_opt",
  "id" : "id",
  "vip" : true,
  "email_type" : "email_type",
  "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
  "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 0,
  "tags" : [ {
    "name" : "name",
    "id" : 2
  }, {
    "name" : "name",
    "id" : 2
  } ],
  "unique_email_id" : "unique_email_id",
  "email_address" : "email_address",
  "full_name" : "full_name",
  "location" : {
    "country_code" : "country_code",
    "dstoff" : 7,
    "timezone" : "timezone",
    "latitude" : 5.962133916683182,
    "gmtoff" : 2,
    "longitude" : 5.637376656633329
  },
  "interests" : {
    "key" : true
  },
  "status" : "subscribed",
  "last_changed" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)

     - returns: RequestBuilder<ListMembers2>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |

### `patchListsIdMembersIdNotesId(body:listId:subscriberHash:noteId:completion:)`

```swift
open class func patchListsIdMembersIdNotesId(body: MemberNotes2, listId: String, subscriberHash: String, noteId: String, completion: @escaping ((_ data: MemberNotes1?, _ error: Error?) -> Void))
```

Update note

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter noteId: (path) The id for the note.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| noteId | (path) The id for the note. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdMembersIdNotesIdWithRequestBuilder(body:listId:subscriberHash:noteId:)`

```swift
open class func patchListsIdMembersIdNotesIdWithRequestBuilder(body: MemberNotes2, listId: String, subscriberHash: String, noteId: String) -> RequestBuilder<MemberNotes1>
```

     Update note
     - PATCH /lists/{list_id}/members/{subscriber_hash}/notes/{note_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "note" : "note",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "created_by" : "created_by"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter noteId: (path) The id for the note.

     - returns: RequestBuilder<MemberNotes1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| noteId | (path) The id for the note. |

### `patchListsIdMergeFieldsId(body:listId:mergeId:completion:)`

```swift
open class func patchListsIdMergeFieldsId(body: MergeField2, listId: String, mergeId: String, completion: @escaping ((_ data: MergeField1?, _ error: Error?) -> Void))
```

Update merge field

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter mergeId: (path) The id for the merge field.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| mergeId | (path) The id for the merge field. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdMergeFieldsIdWithRequestBuilder(body:listId:mergeId:)`

```swift
open class func patchListsIdMergeFieldsIdWithRequestBuilder(body: MergeField2, listId: String, mergeId: String) -> RequestBuilder<MergeField1>
```

     Update merge field
     - PATCH /lists/{list_id}/merge-fields/{merge_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "public" : true,
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "name" : "name",
  "display_order" : 6,
  "options" : {
    "size" : 5,
    "date_format" : "date_format",
    "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
    "default_country" : 1,
    "phone_format" : "phone_format"
  },
  "merge_id" : 0,
  "default_value" : "default_value",
  "tag" : "tag",
  "type" : "text",
  "required" : true,
  "help_text" : "help_text"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter mergeId: (path) The id for the merge field.

     - returns: RequestBuilder<MergeField1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| mergeId | (path) The id for the merge field. |

### `patchListsIdSegmentsId(body:listId:segmentId:completion:)`

```swift
open class func patchListsIdSegmentsId(body: List5, listId: String, segmentId: String, completion: @escaping ((_ data: List4?, _ error: Error?) -> Void))
```

Update segment

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdSegmentsIdWithRequestBuilder(body:listId:segmentId:)`

```swift
open class func patchListsIdSegmentsIdWithRequestBuilder(body: List5, listId: String, segmentId: String) -> RequestBuilder<List4>
```

     Update segment
     - PATCH /lists/{list_id}/segments/{segment_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "name" : "name",
  "options" : {
    "match" : "any",
    "conditions" : [ { }, { } ]
  },
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "member_count" : 6,
  "type" : "saved"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter segmentId: (path) The unique id for the segment.

     - returns: RequestBuilder<List4>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |

### `patchListsIdWebhooksId(body:listId:webhookId:completion:)`

```swift
open class func patchListsIdWebhooksId(body: AddWebhook1, listId: String, webhookId: String, completion: @escaping ((_ data: ListWebhooks1?, _ error: Error?) -> Void))
```

Update webhook

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter webhookId: (path) The webhook&#x27;s id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| webhookId | (path) The webhook's id. |
| completion | completion handler to receive the data and the error objects |

### `patchListsIdWebhooksIdWithRequestBuilder(body:listId:webhookId:)`

```swift
open class func patchListsIdWebhooksIdWithRequestBuilder(body: AddWebhook1, listId: String, webhookId: String) -> RequestBuilder<ListWebhooks1>
```

     Update webhook
     - PATCH /lists/{list_id}/webhooks/{webhook_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "sources" : {
    "admin" : true,
    "api" : true,
    "user" : true
  },
  "list_id" : "4ca5becb8d",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "id" : "5d9a5e3f7b",
  "url" : "http://yourdomain.com/webhook",
  "events" : {
    "subscribe" : true,
    "unsubscribe" : true,
    "profile" : true,
    "cleaned" : true,
    "campaign" : true,
    "upemail" : true
  }
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter webhookId: (path) The webhook&#x27;s id.

     - returns: RequestBuilder<ListWebhooks1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| webhookId | (path) The webhook's id. |

### `postListMemberEvents(body:listId:subscriberHash:completion:)`

```swift
open class func postListMemberEvents(body: Events, listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Add event

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts email addresses. |
| completion | completion handler to receive the data and the error objects |

### `postListMemberEventsWithRequestBuilder(body:listId:subscriberHash:)`

```swift
open class func postListMemberEventsWithRequestBuilder(body: Events, listId: String, subscriberHash: String) -> RequestBuilder<Void>
```

Add event
- POST /lists/{list_id}/members/{subscriber_hash}/events

- BASIC:
  - type: http
  - name: basicAuth
- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts email addresses. |

### `postListMemberTags(body:listId:subscriberHash:completion:)`

```swift
open class func postListMemberTags(body: MemberTags, listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Add or remove member tags

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `postListMemberTagsWithRequestBuilder(body:listId:subscriberHash:)`

```swift
open class func postListMemberTagsWithRequestBuilder(body: MemberTags, listId: String, subscriberHash: String) -> RequestBuilder<Void>
```

Add or remove member tags
- POST /lists/{list_id}/members/{subscriber_hash}/tags

- BASIC:
  - type: http
  - name: basicAuth
- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `postLists(body:completion:)`

```swift
open class func postLists(body: SubscriberList, completion: @escaping ((_ data: SubscriberList1?, _ error: Error?) -> Void))
```

Add list

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postListsWithRequestBuilder(body:)`

```swift
open class func postListsWithRequestBuilder(body: SubscriberList) -> RequestBuilder<SubscriberList1>
```

     Add list
     - POST /lists

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "notify_on_subscribe" : "false",
  "subscribe_url_long" : "subscribe_url_long",
  "marketing_permissions" : false,
  "permission_reminder" : "permission_reminder",
  "use_archive_bar" : false,
  "notify_on_unsubscribe" : "false",
  "visibility" : "pub",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "date_created" : "2000-01-23T04:56:07.000+00:00",
  "campaign_defaults" : {
    "from_email" : "from_email",
    "subject" : "subject",
    "language" : "language",
    "from_name" : "from_name"
  },
  "web_id" : 0,
  "modules" : [ "modules", "modules" ],
  "email_type_option" : true,
  "beamer_address" : "beamer_address",
  "has_welcome" : false,
  "stats" : {
    "cleaned_count" : 2,
    "unsubscribe_count_since_send" : 9,
    "member_count_since_send" : 7,
    "click_rate" : 6.84685269835264,
    "cleaned_count_since_send" : 3,
    "total_contacts" : 5,
    "campaign_count" : 2,
    "avg_unsub_rate" : 1.2315135367772556,
    "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
    "unsubscribe_count" : 5,
    "target_sub_rate" : 1.0246457001441578,
    "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
    "avg_sub_rate" : 7.386281948385884,
    "member_count" : 1,
    "merge_field_count" : 4,
    "open_rate" : 1.4894159098541704,
    "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
  },
  "contact" : {
    "zip" : "zip",
    "country" : "country",
    "address2" : "address2",
    "city" : "city",
    "phone" : "phone",
    "address1" : "address1",
    "company" : "company",
    "state" : "state"
  },
  "name" : "name",
  "list_rating" : 6,
  "double_optin" : false,
  "id" : "id",
  "subscribe_url_short" : "subscribe_url_short"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<SubscriberList1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |

### `postListsId(body:listId:skipMergeValidation:skipDuplicateCheck:completion:)`

```swift
open class func postListsId(body: MembersToSubscribeUnsubscribeTofromAListInBatch, listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil, completion: @escaping ((_ data: BatchUpdateListMembers?, _ error: Error?) -> Void))
```

Batch subscribe or unsubscribe

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
- parameter skipDuplicateCheck: (query) If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |
| skipDuplicateCheck | (query) If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. (optional) |
| completion | completion handler to receive the data and the error objects |

### `postListsIdWithRequestBuilder(body:listId:skipMergeValidation:skipDuplicateCheck:)`

```swift
open class func postListsIdWithRequestBuilder(body: MembersToSubscribeUnsubscribeTofromAListInBatch, listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil) -> RequestBuilder<BatchUpdateListMembers>
```

     Batch subscribe or unsubscribe
     - POST /lists/{list_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "new_members" : [ {
    "email_type" : "email_type",
    "list_id" : "list_id",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "ip_signup" : "ip_signup",
    "member_rating" : 1,
    "language" : "language",
    "tags" : [ {
      "name" : "name",
      "id" : 2
    }, {
      "name" : "name",
      "id" : 2
    } ],
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "email_client" : "email_client",
    "stats" : {
      "avg_click_rate" : 6.027456183070403,
      "avg_open_rate" : 0.8008281904610115
    },
    "tags_count" : 3,
    "ip_opt" : "ip_opt",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "id" : "id",
    "interests" : {
      "key" : true
    },
    "vip" : true,
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "email_type" : "email_type",
    "list_id" : "list_id",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "ip_signup" : "ip_signup",
    "member_rating" : 1,
    "language" : "language",
    "tags" : [ {
      "name" : "name",
      "id" : 2
    }, {
      "name" : "name",
      "id" : 2
    } ],
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "email_client" : "email_client",
    "stats" : {
      "avg_click_rate" : 6.027456183070403,
      "avg_open_rate" : 0.8008281904610115
    },
    "tags_count" : 3,
    "ip_opt" : "ip_opt",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "id" : "id",
    "interests" : {
      "key" : true
    },
    "vip" : true,
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "updated_members" : [ null, null ],
  "total_created" : 42,
  "error_count" : 42,
  "errors" : [ {
    "email_address" : "email_address",
    "error_code" : "ERROR_CONTACT_EXISTS",
    "error" : "error"
  }, {
    "email_address" : "email_address",
    "error_code" : "ERROR_CONTACT_EXISTS",
    "error" : "error"
  } ],
  "total_updated" : 42
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
     - parameter skipDuplicateCheck: (query) If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. (optional)

     - returns: RequestBuilder<BatchUpdateListMembers>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |
| skipDuplicateCheck | (query) If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. (optional) |

### `postListsIdInterestCategories(body:listId:completion:)`

```swift
open class func postListsIdInterestCategories(body: InterestCategory, listId: String, completion: @escaping ((_ data: InterestCategory1?, _ error: Error?) -> Void))
```

Add interest category

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdInterestCategoriesWithRequestBuilder(body:listId:)`

```swift
open class func postListsIdInterestCategoriesWithRequestBuilder(body: InterestCategory, listId: String) -> RequestBuilder<InterestCategory1>
```

     Add interest category
     - POST /lists/{list_id}/interest-categories

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "display_order" : 0,
  "id" : "id",
  "title" : "title",
  "type" : "checkboxes"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<InterestCategory1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |

### `postListsIdInterestCategoriesIdInterests(body:listId:interestCategoryId:completion:)`

```swift
open class func postListsIdInterestCategoriesIdInterests(body: Interest, listId: String, interestCategoryId: String, completion: @escaping ((_ data: Interest1?, _ error: Error?) -> Void))
```

Add interest in category

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter interestCategoryId: (path) The unique ID for the interest category.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdInterestCategoriesIdInterestsWithRequestBuilder(body:listId:interestCategoryId:)`

```swift
open class func postListsIdInterestCategoriesIdInterestsWithRequestBuilder(body: Interest, listId: String, interestCategoryId: String) -> RequestBuilder<Interest1>
```

     Add interest in category
     - POST /lists/{list_id}/interest-categories/{interest_category_id}/interests

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "category_id" : "category_id",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "subscriber_count" : "subscriber_count",
  "name" : "name",
  "display_order" : 0,
  "id" : "id"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter interestCategoryId: (path) The unique ID for the interest category.

     - returns: RequestBuilder<Interest1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| interestCategoryId | (path) The unique ID for the interest category. |

### `postListsIdMembers(body:listId:skipMergeValidation:completion:)`

```swift
open class func postListsIdMembers(body: AddListMembers1, listId: String, skipMergeValidation: Bool? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void))
```

Add member to list

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |
| completion | completion handler to receive the data and the error objects |

### `postListsIdMembersWithRequestBuilder(body:listId:skipMergeValidation:)`

```swift
open class func postListsIdMembersWithRequestBuilder(body: AddListMembers1, listId: String, skipMergeValidation: Bool? = nil) -> RequestBuilder<ListMembers2>
```

     Add member to list
     - POST /lists/{list_id}/members

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "marketing_permissions" : [ {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  }, {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  } ],
  "list_id" : "list_id",
  "last_note" : {
    "note_id" : 9,
    "note" : "note",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "created_by" : "created_by"
  },
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "merge_fields" : {
    "key" : { }
  },
  "ip_signup" : "ip_signup",
  "member_rating" : 6,
  "language" : "language",
  "source" : "source",
  "unsubscribe_reason" : "unsubscribe_reason",
  "email_client" : "email_client",
  "stats" : {
    "ecommerce_data" : {
      "total_revenue" : 5.962133916683182,
      "number_of_orders" : 5.637376656633329,
      "currency_code" : "USD"
    },
    "avg_click_rate" : 1.4658129805029452,
    "avg_open_rate" : 6.027456183070403
  },
  "tags_count" : 1,
  "ip_opt" : "ip_opt",
  "id" : "id",
  "vip" : true,
  "email_type" : "email_type",
  "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
  "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 0,
  "tags" : [ {
    "name" : "name",
    "id" : 2
  }, {
    "name" : "name",
    "id" : 2
  } ],
  "unique_email_id" : "unique_email_id",
  "email_address" : "email_address",
  "full_name" : "full_name",
  "location" : {
    "country_code" : "country_code",
    "dstoff" : 7,
    "timezone" : "timezone",
    "latitude" : 5.962133916683182,
    "gmtoff" : 2,
    "longitude" : 5.637376656633329
  },
  "interests" : {
    "key" : true
  },
  "status" : "subscribed",
  "last_changed" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)

     - returns: RequestBuilder<ListMembers2>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |

### `postListsIdMembersHashActionsDeletePermanent(listId:subscriberHash:completion:)`

```swift
open class func postListsIdMembersHashActionsDeletePermanent(listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete list member

- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdMembersHashActionsDeletePermanentWithRequestBuilder(listId:subscriberHash:)`

```swift
open class func postListsIdMembersHashActionsDeletePermanentWithRequestBuilder(listId: String, subscriberHash: String) -> RequestBuilder<Void>
```

Delete list member
- POST /lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent

- BASIC:
  - type: http
  - name: basicAuth
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `postListsIdMembersIdNotes(body:listId:subscriberHash:completion:)`

```swift
open class func postListsIdMembersIdNotes(body: MemberNotes, listId: String, subscriberHash: String, completion: @escaping ((_ data: MemberNotes1?, _ error: Error?) -> Void))
```

Add member note

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdMembersIdNotesWithRequestBuilder(body:listId:subscriberHash:)`

```swift
open class func postListsIdMembersIdNotesWithRequestBuilder(body: MemberNotes, listId: String, subscriberHash: String) -> RequestBuilder<MemberNotes1>
```

     Add member note
     - POST /lists/{list_id}/members/{subscriber_hash}/notes

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "note" : "note",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "created_by" : "created_by"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

     - returns: RequestBuilder<MemberNotes1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `postListsIdMergeFields(body:listId:completion:)`

```swift
open class func postListsIdMergeFields(body: MergeField, listId: String, completion: @escaping ((_ data: MergeField1?, _ error: Error?) -> Void))
```

Add merge field

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdMergeFieldsWithRequestBuilder(body:listId:)`

```swift
open class func postListsIdMergeFieldsWithRequestBuilder(body: MergeField, listId: String) -> RequestBuilder<MergeField1>
```

     Add merge field
     - POST /lists/{list_id}/merge-fields

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "public" : true,
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "name" : "name",
  "display_order" : 6,
  "options" : {
    "size" : 5,
    "date_format" : "date_format",
    "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
    "default_country" : 1,
    "phone_format" : "phone_format"
  },
  "merge_id" : 0,
  "default_value" : "default_value",
  "tag" : "tag",
  "type" : "text",
  "required" : true,
  "help_text" : "help_text"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<MergeField1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |

### `postListsIdSegments(body:listId:completion:)`

```swift
open class func postListsIdSegments(body: List3, listId: String, completion: @escaping ((_ data: List4?, _ error: Error?) -> Void))
```

Add segment

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdSegmentsWithRequestBuilder(body:listId:)`

```swift
open class func postListsIdSegmentsWithRequestBuilder(body: List3, listId: String) -> RequestBuilder<List4>
```

     Add segment
     - POST /lists/{list_id}/segments

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "list_id" : "list_id",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "name" : "name",
  "options" : {
    "match" : "any",
    "conditions" : [ { }, { } ]
  },
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "member_count" : 6,
  "type" : "saved"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<List4>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |

### `postListsIdSegmentsId(body:listId:segmentId:completion:)`

```swift
open class func postListsIdSegmentsId(body: MembersToAddremoveTofromAStaticSegment, listId: String, segmentId: String, completion: @escaping ((_ data: BatchAddremoveListMembersTofromStaticSegment?, _ error: Error?) -> Void))
```

Batch add or remove members

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdSegmentsIdWithRequestBuilder(body:listId:segmentId:)`

```swift
open class func postListsIdSegmentsIdWithRequestBuilder(body: MembersToAddremoveTofromAStaticSegment, listId: String, segmentId: String) -> RequestBuilder<BatchAddremoveListMembersTofromStaticSegment>
```

     Batch add or remove members
     - POST /lists/{list_id}/segments/{segment_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "members_removed" : [ null, null ],
  "total_added" : 42,
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "members_added" : [ {
    "email_type" : "email_type",
    "list_id" : "list_id",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "ip_signup" : "ip_signup",
    "member_rating" : 1,
    "language" : "language",
    "tags" : [ {
      "name" : "name",
      "id" : 2
    }, {
      "name" : "name",
      "id" : 2
    } ],
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "email_client" : "email_client",
    "stats" : {
      "avg_click_rate" : 6.027456183070403,
      "avg_open_rate" : 0.8008281904610115
    },
    "tags_count" : 3,
    "ip_opt" : "ip_opt",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "id" : "id",
    "interests" : {
      "key" : true
    },
    "vip" : true,
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "email_type" : "email_type",
    "list_id" : "list_id",
    "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
    "last_note" : {
      "note_id" : 9,
      "note" : "note",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "created_by" : "created_by"
    },
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "merge_fields" : {
      "key" : { }
    },
    "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
    "ip_signup" : "ip_signup",
    "member_rating" : 1,
    "language" : "language",
    "tags" : [ {
      "name" : "name",
      "id" : 2
    }, {
      "name" : "name",
      "id" : 2
    } ],
    "unique_email_id" : "unique_email_id",
    "email_address" : "email_address",
    "email_client" : "email_client",
    "stats" : {
      "avg_click_rate" : 6.027456183070403,
      "avg_open_rate" : 0.8008281904610115
    },
    "tags_count" : 3,
    "ip_opt" : "ip_opt",
    "location" : {
      "country_code" : "country_code",
      "dstoff" : 7,
      "timezone" : "timezone",
      "latitude" : 5.962133916683182,
      "gmtoff" : 2,
      "longitude" : 5.637376656633329
    },
    "id" : "id",
    "interests" : {
      "key" : true
    },
    "vip" : true,
    "status" : "subscribed",
    "last_changed" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "total_removed" : 42,
  "error_count" : 42,
  "errors" : [ {
    "email_addresses" : [ "email_addresses", "email_addresses" ],
    "error" : "error"
  }, {
    "email_addresses" : [ "email_addresses", "email_addresses" ],
    "error" : "error"
  } ]
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter segmentId: (path) The unique id for the segment.

     - returns: RequestBuilder<BatchAddremoveListMembersTofromStaticSegment>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |

### `postListsIdSegmentsIdMembers(body:listId:segmentId:completion:)`

```swift
open class func postListsIdSegmentsIdMembers(body: SegmentIdMembersBody, listId: String, segmentId: String, completion: @escaping ((_ data: ListMembers?, _ error: Error?) -> Void))
```

Add member to segment

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter segmentId: (path) The unique id for the segment.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdSegmentsIdMembersWithRequestBuilder(body:listId:segmentId:)`

```swift
open class func postListsIdSegmentsIdMembersWithRequestBuilder(body: SegmentIdMembersBody, listId: String, segmentId: String) -> RequestBuilder<ListMembers>
```

     Add member to segment
     - POST /lists/{list_id}/segments/{segment_id}/members

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_type" : "email_type",
  "list_id" : "list_id",
  "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
  "last_note" : {
    "note_id" : 9,
    "note" : "note",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "created_by" : "created_by"
  },
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "merge_fields" : {
    "key" : { }
  },
  "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
  "ip_signup" : "ip_signup",
  "member_rating" : 0,
  "language" : "language",
  "unique_email_id" : "unique_email_id",
  "email_address" : "email_address",
  "email_client" : "email_client",
  "stats" : {
    "avg_click_rate" : 6.027456183070403,
    "avg_open_rate" : 0.8008281904610115
  },
  "ip_opt" : "ip_opt",
  "location" : {
    "country_code" : "country_code",
    "dstoff" : 7,
    "timezone" : "timezone",
    "latitude" : 5.962133916683182,
    "gmtoff" : 2,
    "longitude" : 5.637376656633329
  },
  "id" : "id",
  "interests" : {
    "key" : true
  },
  "vip" : true,
  "status" : "subscribed",
  "last_changed" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter segmentId: (path) The unique id for the segment.

     - returns: RequestBuilder<ListMembers>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| segmentId | (path) The unique id for the segment. |

### `postListsIdSignupForms(body:listId:completion:)`

```swift
open class func postListsIdSignupForms(body: SignupForm, listId: String, completion: @escaping ((_ data: SignupForm1?, _ error: Error?) -> Void))
```

Customize signup form

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdSignupFormsWithRequestBuilder(body:listId:)`

```swift
open class func postListsIdSignupFormsWithRequestBuilder(body: SignupForm, listId: String) -> RequestBuilder<SignupForm1>
```

     Customize signup form
     - POST /lists/{list_id}/signup-forms

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "4ca5becb8d",
  "contents" : [ {
    "section" : "signup_message",
    "value" : "Signup message goes here"
  }, {
    "section" : "signup_message",
    "value" : "Signup message goes here"
  } ],
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "header" : {
    "image_height" : "200",
    "image_link" : "gotothisimage.com",
    "image_align" : "center",
    "image_border_color" : "#896d6d",
    "image_url" : "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
    "image_border_style" : "solid",
    "image_alt" : "This is an image",
    "text" : "Header Text goes here",
    "image_width" : "800",
    "image_target" : "_blank",
    "image_border_width" : "2"
  },
  "signup_form_url" : "signup_form_url",
  "styles" : [ {
    "options" : [ {
      "property" : "background-color",
      "value" : "#111111"
    }, {
      "property" : "background-color",
      "value" : "#111111"
    } ],
    "selector" : "page_background"
  }, {
    "options" : [ {
      "property" : "background-color",
      "value" : "#111111"
    }, {
      "property" : "background-color",
      "value" : "#111111"
    } ],
    "selector" : "page_background"
  } ]
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<SignupForm1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |

### `postListsIdWebhooks(body:listId:completion:)`

```swift
open class func postListsIdWebhooks(body: AddWebhook, listId: String, completion: @escaping ((_ data: ListWebhooks1?, _ error: Error?) -> Void))
```

Add webhook

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| completion | completion handler to receive the data and the error objects |

### `postListsIdWebhooksWithRequestBuilder(body:listId:)`

```swift
open class func postListsIdWebhooksWithRequestBuilder(body: AddWebhook, listId: String) -> RequestBuilder<ListWebhooks1>
```

     Add webhook
     - POST /lists/{list_id}/webhooks

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "sources" : {
    "admin" : true,
    "api" : true,
    "user" : true
  },
  "list_id" : "4ca5becb8d",
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "id" : "5d9a5e3f7b",
  "url" : "http://yourdomain.com/webhook",
  "events" : {
    "subscribe" : true,
    "unsubscribe" : true,
    "profile" : true,
    "cleaned" : true,
    "campaign" : true,
    "upemail" : true
  }
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.

     - returns: RequestBuilder<ListWebhooks1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |

### `previewASegment(listId:fields:excludeFields:count:offset:type:sinceCreatedAt:beforeCreatedAt:includeCleaned:includeTransactional:includeUnsubscribed:sinceUpdatedAt:beforeUpdatedAt:completion:)`

```swift
open class func previewASegment(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, sinceCreatedAt: String? = nil, beforeCreatedAt: String? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, sinceUpdatedAt: String? = nil, beforeUpdatedAt: String? = nil, completion: @escaping ((_ data: CollectionOfSegments?, _ error: Error?) -> Void))
```

List segments

- parameter listId: (path) The unique ID for the list.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter type: (query) Limit results based on segment type. (optional)
- parameter sinceCreatedAt: (query) Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeCreatedAt: (query) Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter includeCleaned: (query) Include cleaned members in response (optional)
- parameter includeTransactional: (query) Include transactional members in response (optional)
- parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
- parameter sinceUpdatedAt: (query) Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeUpdatedAt: (query) Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) Limit results based on segment type. (optional) |
| sinceCreatedAt | (query) Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeCreatedAt | (query) Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| includeCleaned | (query) Include cleaned members in response (optional) |
| includeTransactional | (query) Include transactional members in response (optional) |
| includeUnsubscribed | (query) Include unsubscribed members in response (optional) |
| sinceUpdatedAt | (query) Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeUpdatedAt | (query) Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `previewASegmentWithRequestBuilder(listId:fields:excludeFields:count:offset:type:sinceCreatedAt:beforeCreatedAt:includeCleaned:includeTransactional:includeUnsubscribed:sinceUpdatedAt:beforeUpdatedAt:)`

```swift
open class func previewASegmentWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, sinceCreatedAt: String? = nil, beforeCreatedAt: String? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, sinceUpdatedAt: String? = nil, beforeUpdatedAt: String? = nil) -> RequestBuilder<CollectionOfSegments>
```

     List segments
     - GET /lists/{list_id}/segments

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "list_id" : "list_id",
  "_links" : [ null, null ],
  "total_items" : 1,
  "segments" : [ {
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "name" : "name",
    "options" : {
      "match" : "any",
      "conditions" : [ { }, { } ]
    },
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "member_count" : 6,
    "type" : "saved"
  }, {
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
    "list_id" : "list_id",
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "name" : "name",
    "options" : {
      "match" : "any",
      "conditions" : [ { }, { } ]
    },
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "member_count" : 6,
    "type" : "saved"
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter type: (query) Limit results based on segment type. (optional)
     - parameter sinceCreatedAt: (query) Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeCreatedAt: (query) Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter includeCleaned: (query) Include cleaned members in response (optional)
     - parameter includeTransactional: (query) Include transactional members in response (optional)
     - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
     - parameter sinceUpdatedAt: (query) Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeUpdatedAt: (query) Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<CollectionOfSegments>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) Limit results based on segment type. (optional) |
| sinceCreatedAt | (query) Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeCreatedAt | (query) Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| includeCleaned | (query) Include cleaned members in response (optional) |
| includeTransactional | (query) Include transactional members in response (optional) |
| includeUnsubscribed | (query) Include unsubscribed members in response (optional) |
| sinceUpdatedAt | (query) Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeUpdatedAt | (query) Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `putListsIdMembersId(body:listId:subscriberHash:skipMergeValidation:completion:)`

```swift
open class func putListsIdMembersId(body: AddListMembers2, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void))
```

Add or update list member

- parameter body: (body)
- parameter listId: (path) The unique ID for the list.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |
| completion | completion handler to receive the data and the error objects |

### `putListsIdMembersIdWithRequestBuilder(body:listId:subscriberHash:skipMergeValidation:)`

```swift
open class func putListsIdMembersIdWithRequestBuilder(body: AddListMembers2, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil) -> RequestBuilder<ListMembers2>
```

     Add or update list member
     - PUT /lists/{list_id}/members/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "marketing_permissions" : [ {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  }, {
    "marketing_permission_id" : "marketing_permission_id",
    "text" : "text",
    "enabled" : true
  } ],
  "list_id" : "list_id",
  "last_note" : {
    "note_id" : 9,
    "note" : "note",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "created_by" : "created_by"
  },
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "merge_fields" : {
    "key" : { }
  },
  "ip_signup" : "ip_signup",
  "member_rating" : 6,
  "language" : "language",
  "source" : "source",
  "unsubscribe_reason" : "unsubscribe_reason",
  "email_client" : "email_client",
  "stats" : {
    "ecommerce_data" : {
      "total_revenue" : 5.962133916683182,
      "number_of_orders" : 5.637376656633329,
      "currency_code" : "USD"
    },
    "avg_click_rate" : 1.4658129805029452,
    "avg_open_rate" : 6.027456183070403
  },
  "tags_count" : 1,
  "ip_opt" : "ip_opt",
  "id" : "id",
  "vip" : true,
  "email_type" : "email_type",
  "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
  "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 0,
  "tags" : [ {
    "name" : "name",
    "id" : 2
  }, {
    "name" : "name",
    "id" : 2
  } ],
  "unique_email_id" : "unique_email_id",
  "email_address" : "email_address",
  "full_name" : "full_name",
  "location" : {
    "country_code" : "country_code",
    "dstoff" : 7,
    "timezone" : "timezone",
    "latitude" : 5.962133916683182,
    "gmtoff" : 2,
    "longitude" : 5.637376656633329
  },
  "interests" : {
    "key" : true
  },
  "status" : "subscribed",
  "last_changed" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)
     - parameter listId: (path) The unique ID for the list.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)

     - returns: RequestBuilder<ListMembers2>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| listId | (path) The unique ID for the list. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| skipMergeValidation | (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional) |

### `searchTagsByName(listId:name:completion:)`

```swift
open class func searchTagsByName(listId: String, name: String? = nil, completion: @escaping ((_ data: TagSearchResults?, _ error: Error?) -> Void))
```

Search for tags on a list by name.

- parameter listId: (path) The unique ID for the list.
- parameter name: (query) The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| name | (query) The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. (optional) |
| completion | completion handler to receive the data and the error objects |

### `searchTagsByNameWithRequestBuilder(listId:name:)`

```swift
open class func searchTagsByNameWithRequestBuilder(listId: String, name: String? = nil) -> RequestBuilder<TagSearchResults>
```

     Search for tags on a list by name.
     - GET /lists/{list_id}/tag-search

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "total_items" : 6,
  "tags" : [ {
    "name" : "name",
    "id" : 0
  }, {
    "name" : "name",
    "id" : 0
  } ]
}}]
     - parameter listId: (path) The unique ID for the list.
     - parameter name: (query) The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. (optional)

     - returns: RequestBuilder<TagSearchResults>

#### Parameters

| Name | Description |
| ---- | ----------- |
| listId | (path) The unique ID for the list. |
| name | (query) The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. (optional) |