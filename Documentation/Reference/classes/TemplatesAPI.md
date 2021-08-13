**CLASS**

# `TemplatesAPI`

```swift
open class TemplatesAPI
```

## Methods
### `deleteTemplatesId(templateId:completion:)`

```swift
open class func deleteTemplatesId(templateId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete template

- parameter templateId: (path) The unique id for the template.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| templateId | (path) The unique id for the template. |
| completion | completion handler to receive the data and the error objects |

### `deleteTemplatesIdWithRequestBuilder(templateId:)`

```swift
open class func deleteTemplatesIdWithRequestBuilder(templateId: String) -> RequestBuilder<Void>
```

Delete template
- DELETE /templates/{template_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter templateId: (path) The unique id for the template.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| templateId | (path) The unique id for the template. |

### `getTemplates(fields:excludeFields:count:offset:createdBy:sinceDateCreated:beforeDateCreated:type:category:folderId:sortField:sortDir:completion:)`

```swift
open class func getTemplates(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: SortField_getTemplates? = nil, sortDir: SortDir_getTemplates? = nil, completion: @escaping ((_ data: Templates?, _ error: Error?) -> Void))
```

List templates

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter createdBy: (query) The Mailchimp account user who created the template. (optional)
- parameter sinceDateCreated: (query) Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeDateCreated: (query) Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter type: (query) Limit results based on template type. (optional)
- parameter category: (query) Limit results based on category. (optional)
- parameter folderId: (query) The unique folder id. (optional)
- parameter sortField: (query) Returns user templates sorted by the specified field. (optional)
- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| createdBy | (query) The Mailchimp account user who created the template. (optional) |
| sinceDateCreated | (query) Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeDateCreated | (query) Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| type | (query) Limit results based on template type. (optional) |
| category | (query) Limit results based on category. (optional) |
| folderId | (query) The unique folder id. (optional) |
| sortField | (query) Returns user templates sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getTemplatesWithRequestBuilder(fields:excludeFields:count:offset:createdBy:sinceDateCreated:beforeDateCreated:type:category:folderId:sortField:sortDir:)`

```swift
open class func getTemplatesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: SortField_getTemplates? = nil, sortDir: SortDir_getTemplates? = nil) -> RequestBuilder<Templates>
```

     List templates
     - GET /templates

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "templates" : [ {
    "thumbnail" : "thumbnail",
    "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
    "active" : true,
    "type" : "type",
    "created_by" : "created_by",
    "drag_and_drop" : true,
    "share_url" : "share_url",
    "responsive" : true,
    "name" : "name",
    "id" : 0,
    "category" : "category",
    "folder_id" : "folder_id",
    "edited_by" : "edited_by"
  }, {
    "thumbnail" : "thumbnail",
    "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
    "active" : true,
    "type" : "type",
    "created_by" : "created_by",
    "drag_and_drop" : true,
    "share_url" : "share_url",
    "responsive" : true,
    "name" : "name",
    "id" : 0,
    "category" : "category",
    "folder_id" : "folder_id",
    "edited_by" : "edited_by"
  } ],
  "total_items" : 6
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter createdBy: (query) The Mailchimp account user who created the template. (optional)
     - parameter sinceDateCreated: (query) Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeDateCreated: (query) Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter type: (query) Limit results based on template type. (optional)
     - parameter category: (query) Limit results based on category. (optional)
     - parameter folderId: (query) The unique folder id. (optional)
     - parameter sortField: (query) Returns user templates sorted by the specified field. (optional)
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)

     - returns: RequestBuilder<Templates>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| createdBy | (query) The Mailchimp account user who created the template. (optional) |
| sinceDateCreated | (query) Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeDateCreated | (query) Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| type | (query) Limit results based on template type. (optional) |
| category | (query) Limit results based on category. (optional) |
| folderId | (query) The unique folder id. (optional) |
| sortField | (query) Returns user templates sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |

### `getTemplatesId(templateId:fields:excludeFields:completion:)`

```swift
open class func getTemplatesId(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: TemplateInstance1?, _ error: Error?) -> Void))
```

Get template info

- parameter templateId: (path) The unique id for the template.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| templateId | (path) The unique id for the template. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getTemplatesIdWithRequestBuilder(templateId:fields:excludeFields:)`

```swift
open class func getTemplatesIdWithRequestBuilder(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<TemplateInstance1>
```

     Get template info
     - GET /templates/{template_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "thumbnail" : "thumbnail",
  "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
  "active" : true,
  "type" : "type",
  "created_by" : "created_by",
  "drag_and_drop" : true,
  "share_url" : "share_url",
  "responsive" : true,
  "name" : "name",
  "id" : 0,
  "category" : "category",
  "folder_id" : "folder_id",
  "edited_by" : "edited_by"
}}]
     - parameter templateId: (path) The unique id for the template.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<TemplateInstance1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| templateId | (path) The unique id for the template. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getTemplatesIdDefaultContent(templateId:fields:excludeFields:completion:)`

```swift
open class func getTemplatesIdDefaultContent(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: TemplateDefaultContent?, _ error: Error?) -> Void))
```

View default content

- parameter templateId: (path) The unique id for the template.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| templateId | (path) The unique id for the template. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getTemplatesIdDefaultContentWithRequestBuilder(templateId:fields:excludeFields:)`

```swift
open class func getTemplatesIdDefaultContentWithRequestBuilder(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<TemplateDefaultContent>
```

     View default content
     - GET /templates/{template_id}/default-content

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
  "sections" : {
    "key" : { }
  }
}}]
     - parameter templateId: (path) The unique id for the template.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<TemplateDefaultContent>

#### Parameters

| Name | Description |
| ---- | ----------- |
| templateId | (path) The unique id for the template. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `patchTemplatesId(body:templateId:completion:)`

```swift
open class func patchTemplatesId(body: TemplateInstance2, templateId: String, completion: @escaping ((_ data: TemplateInstance1?, _ error: Error?) -> Void))
```

Update template

- parameter body: (body)
- parameter templateId: (path) The unique id for the template.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| templateId | (path) The unique id for the template. |
| completion | completion handler to receive the data and the error objects |

### `patchTemplatesIdWithRequestBuilder(body:templateId:)`

```swift
open class func patchTemplatesIdWithRequestBuilder(body: TemplateInstance2, templateId: String) -> RequestBuilder<TemplateInstance1>
```

     Update template
     - PATCH /templates/{template_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "thumbnail" : "thumbnail",
  "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
  "active" : true,
  "type" : "type",
  "created_by" : "created_by",
  "drag_and_drop" : true,
  "share_url" : "share_url",
  "responsive" : true,
  "name" : "name",
  "id" : 0,
  "category" : "category",
  "folder_id" : "folder_id",
  "edited_by" : "edited_by"
}}]
     - parameter body: (body)
     - parameter templateId: (path) The unique id for the template.

     - returns: RequestBuilder<TemplateInstance1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| templateId | (path) The unique id for the template. |

### `postTemplates(body:completion:)`

```swift
open class func postTemplates(body: TemplateInstance, completion: @escaping ((_ data: TemplateInstance1?, _ error: Error?) -> Void))
```

Add template

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postTemplatesWithRequestBuilder(body:)`

```swift
open class func postTemplatesWithRequestBuilder(body: TemplateInstance) -> RequestBuilder<TemplateInstance1>
```

     Add template
     - POST /templates

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "thumbnail" : "thumbnail",
  "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
  "active" : true,
  "type" : "type",
  "created_by" : "created_by",
  "drag_and_drop" : true,
  "share_url" : "share_url",
  "responsive" : true,
  "name" : "name",
  "id" : 0,
  "category" : "category",
  "folder_id" : "folder_id",
  "edited_by" : "edited_by"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<TemplateInstance1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |