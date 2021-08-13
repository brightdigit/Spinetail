**CLASS**

# `TemplateFoldersAPI`

```swift
open class TemplateFoldersAPI
```

## Methods
### `deleteTemplateFoldersId(folderId:completion:)`

```swift
open class func deleteTemplateFoldersId(folderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete template folder

- parameter folderId: (path) The unique id for the template folder.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the template folder. |
| completion | completion handler to receive the data and the error objects |

### `deleteTemplateFoldersIdWithRequestBuilder(folderId:)`

```swift
open class func deleteTemplateFoldersIdWithRequestBuilder(folderId: String) -> RequestBuilder<Void>
```

Delete template folder
- DELETE /template-folders/{folder_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter folderId: (path) The unique id for the template folder.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the template folder. |

### `getTemplateFolders(fields:excludeFields:count:offset:completion:)`

```swift
open class func getTemplateFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: TemplateFolders?, _ error: Error?) -> Void))
```

List template folders

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

### `getTemplateFoldersWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getTemplateFoldersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<TemplateFolders>
```

     List template folders
     - GET /template-folders

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

     - returns: RequestBuilder<TemplateFolders>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getTemplateFoldersId(folderId:fields:excludeFields:completion:)`

```swift
open class func getTemplateFoldersId(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: TemplateFolder1?, _ error: Error?) -> Void))
```

Get template folder

- parameter folderId: (path) The unique id for the template folder.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the template folder. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getTemplateFoldersIdWithRequestBuilder(folderId:fields:excludeFields:)`

```swift
open class func getTemplateFoldersIdWithRequestBuilder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<TemplateFolder1>
```

     Get template folder
     - GET /template-folders/{folder_id}

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
     - parameter folderId: (path) The unique id for the template folder.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<TemplateFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the template folder. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `patchTemplateFoldersId(body:folderId:completion:)`

```swift
open class func patchTemplateFoldersId(body: TemplateFolder2, folderId: String, completion: @escaping ((_ data: TemplateFolder1?, _ error: Error?) -> Void))
```

Update template folder

- parameter body: (body)
- parameter folderId: (path) The unique id for the template folder.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| folderId | (path) The unique id for the template folder. |
| completion | completion handler to receive the data and the error objects |

### `patchTemplateFoldersIdWithRequestBuilder(body:folderId:)`

```swift
open class func patchTemplateFoldersIdWithRequestBuilder(body: TemplateFolder2, folderId: String) -> RequestBuilder<TemplateFolder1>
```

     Update template folder
     - PATCH /template-folders/{folder_id}

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
     - parameter folderId: (path) The unique id for the template folder.

     - returns: RequestBuilder<TemplateFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| folderId | (path) The unique id for the template folder. |

### `postTemplateFolders(body:completion:)`

```swift
open class func postTemplateFolders(body: TemplateFolder, completion: @escaping ((_ data: TemplateFolder1?, _ error: Error?) -> Void))
```

Add template folder

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postTemplateFoldersWithRequestBuilder(body:)`

```swift
open class func postTemplateFoldersWithRequestBuilder(body: TemplateFolder) -> RequestBuilder<TemplateFolder1>
```

     Add template folder
     - POST /template-folders

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

     - returns: RequestBuilder<TemplateFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |