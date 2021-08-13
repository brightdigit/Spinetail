**CLASS**

# `AuthorizedAppsAPI`

```swift
open class AuthorizedAppsAPI
```

## Methods
### `getAuthorizedApps(fields:excludeFields:count:offset:completion:)`

```swift
open class func getAuthorizedApps(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: InlineResponse2001?, _ error: Error?) -> Void))
```

List authorized apps

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getAuthorizedAppsWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getAuthorizedAppsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<InlineResponse2001>
```

     List authorized apps
     - GET /authorized-apps

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "total_items" : 6,
  "apps" : [ {
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
    "description" : "description",
    "id" : 0,
    "users" : [ "users", "users" ]
  }, {
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
    "description" : "description",
    "id" : 0,
    "users" : [ "users", "users" ]
  } ]
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<InlineResponse2001>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getAuthorizedAppsId(appId:fields:excludeFields:completion:)`

```swift
open class func getAuthorizedAppsId(appId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: InlineResponse2002?, _ error: Error?) -> Void))
```

Get authorized app info

- parameter appId: (path) The unique id for the connected authorized application.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| appId | (path) The unique id for the connected authorized application. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getAuthorizedAppsIdWithRequestBuilder(appId:fields:excludeFields:)`

```swift
open class func getAuthorizedAppsIdWithRequestBuilder(appId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<InlineResponse2002>
```

     Get authorized app info
     - GET /authorized-apps/{app_id}

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
  "name" : "name",
  "description" : "description",
  "id" : 0,
  "users" : [ "users", "users" ]
}}]
     - parameter appId: (path) The unique id for the connected authorized application.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<InlineResponse2002>

#### Parameters

| Name | Description |
| ---- | ----------- |
| appId | (path) The unique id for the connected authorized application. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |