**CLASS**

# `SearchMembersAPI`

```swift
open class SearchMembersAPI
```

## Methods
### `getSearchMembers(query:fields:excludeFields:listId:completion:)`

```swift
open class func getSearchMembers(query: String, fields: [String]? = nil, excludeFields: [String]? = nil, listId: String? = nil, completion: @escaping ((_ data: Members?, _ error: Error?) -> Void))
```

Search members

- parameter query: (query) The search query used to filter results. Query should be a valid email, or a string representing a contact&#x27;s first or last name.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter listId: (query) The unique id for the list. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| query | (query) The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| listId | (query) The unique id for the list. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getSearchMembersWithRequestBuilder(query:fields:excludeFields:listId:)`

```swift
open class func getSearchMembersWithRequestBuilder(query: String, fields: [String]? = nil, excludeFields: [String]? = nil, listId: String? = nil) -> RequestBuilder<Members>
```

     Search members
     - GET /search-members

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "full_search" : {
    "members" : [ null, null ],
    "total_items" : 6
  },
  "exact_matches" : {
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
    "total_items" : 0
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
  } ]
}}]
     - parameter query: (query) The search query used to filter results. Query should be a valid email, or a string representing a contact&#x27;s first or last name.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter listId: (query) The unique id for the list. (optional)

     - returns: RequestBuilder<Members>

#### Parameters

| Name | Description |
| ---- | ----------- |
| query | (query) The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| listId | (query) The unique id for the list. (optional) |