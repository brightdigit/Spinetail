**CLASS**

# `CampaignFoldersAPI`

```swift
open class CampaignFoldersAPI
```

## Methods
### `deleteCampaignFoldersId(folderId:completion:)`

```swift
open class func deleteCampaignFoldersId(folderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete campaign folder

- parameter folderId: (path) The unique id for the campaign folder.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the campaign folder. |
| completion | completion handler to receive the data and the error objects |

### `deleteCampaignFoldersIdWithRequestBuilder(folderId:)`

```swift
open class func deleteCampaignFoldersIdWithRequestBuilder(folderId: String) -> RequestBuilder<Void>
```

Delete campaign folder
- DELETE /campaign-folders/{folder_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter folderId: (path) The unique id for the campaign folder.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the campaign folder. |

### `getCampaignFolders(fields:excludeFields:count:offset:completion:)`

```swift
open class func getCampaignFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CampaignFolders?, _ error: Error?) -> Void))
```

List campaign folders

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

### `getCampaignFoldersWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getCampaignFoldersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CampaignFolders>
```

     List campaign folders
     - GET /campaign-folders

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "folders" : [ {
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
    "count" : 0,
    "id" : "id"
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
    "count" : 0,
    "id" : "id"
  } ],
  "_links" : [ null, null ],
  "total_items" : 6
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<CampaignFolders>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getCampaignFoldersId(folderId:fields:excludeFields:completion:)`

```swift
open class func getCampaignFoldersId(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignFolder1?, _ error: Error?) -> Void))
```

Get campaign folder

- parameter folderId: (path) The unique id for the campaign folder.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the campaign folder. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getCampaignFoldersIdWithRequestBuilder(folderId:fields:excludeFields:)`

```swift
open class func getCampaignFoldersIdWithRequestBuilder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignFolder1>
```

     Get campaign folder
     - GET /campaign-folders/{folder_id}

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
  "count" : 0,
  "id" : "id"
}}]
     - parameter folderId: (path) The unique id for the campaign folder.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<CampaignFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the campaign folder. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `patchCampaignFoldersId(body:folderId:completion:)`

```swift
open class func patchCampaignFoldersId(body: CampaignFolder2, folderId: String, completion: @escaping ((_ data: CampaignFolder1?, _ error: Error?) -> Void))
```

Update campaign folder

- parameter body: (body)
- parameter folderId: (path) The unique id for the campaign folder.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| folderId | (path) The unique id for the campaign folder. |
| completion | completion handler to receive the data and the error objects |

### `patchCampaignFoldersIdWithRequestBuilder(body:folderId:)`

```swift
open class func patchCampaignFoldersIdWithRequestBuilder(body: CampaignFolder2, folderId: String) -> RequestBuilder<CampaignFolder1>
```

     Update campaign folder
     - PATCH /campaign-folders/{folder_id}

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
  "count" : 0,
  "id" : "id"
}}]
     - parameter body: (body)
     - parameter folderId: (path) The unique id for the campaign folder.

     - returns: RequestBuilder<CampaignFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| folderId | (path) The unique id for the campaign folder. |

### `postCampaignFolders(body:completion:)`

```swift
open class func postCampaignFolders(body: CampaignFolder, completion: @escaping ((_ data: CampaignFolder1?, _ error: Error?) -> Void))
```

Add campaign folder

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postCampaignFoldersWithRequestBuilder(body:)`

```swift
open class func postCampaignFoldersWithRequestBuilder(body: CampaignFolder) -> RequestBuilder<CampaignFolder1>
```

     Add campaign folder
     - POST /campaign-folders

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
  "count" : 0,
  "id" : "id"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<CampaignFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |