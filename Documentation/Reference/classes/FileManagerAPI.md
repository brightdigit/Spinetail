**CLASS**

# `FileManagerAPI`

```swift
open class FileManagerAPI
```

## Methods
### `deleteFileManagerFilesId(fileId:completion:)`

```swift
open class func deleteFileManagerFilesId(fileId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete file

- parameter fileId: (path) The unique id for the File Manager file.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fileId | (path) The unique id for the File Manager file. |
| completion | completion handler to receive the data and the error objects |

### `deleteFileManagerFilesIdWithRequestBuilder(fileId:)`

```swift
open class func deleteFileManagerFilesIdWithRequestBuilder(fileId: String) -> RequestBuilder<Void>
```

Delete file
- DELETE /file-manager/files/{file_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter fileId: (path) The unique id for the File Manager file.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fileId | (path) The unique id for the File Manager file. |

### `deleteFileManagerFoldersId(folderId:completion:)`

```swift
open class func deleteFileManagerFoldersId(folderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete folder

- parameter folderId: (path) The unique id for the File Manager folder.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the File Manager folder. |
| completion | completion handler to receive the data and the error objects |

### `deleteFileManagerFoldersIdWithRequestBuilder(folderId:)`

```swift
open class func deleteFileManagerFoldersIdWithRequestBuilder(folderId: String) -> RequestBuilder<Void>
```

Delete folder
- DELETE /file-manager/folders/{folder_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter folderId: (path) The unique id for the File Manager folder.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the File Manager folder. |

### `getFileManagerFiles(fields:excludeFields:count:offset:type:createdBy:beforeCreatedAt:sinceCreatedAt:sortField:sortDir:completion:)`

```swift
open class func getFileManagerFiles(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: SortField_getFileManagerFiles? = nil, sortDir: SortDir_getFileManagerFiles? = nil, completion: @escaping ((_ data: MailchimpFileManager?, _ error: Error?) -> Void))
```

List stored files

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter type: (query) The file type for the File Manager file. (optional)
- parameter createdBy: (query) The Mailchimp account user who created the File Manager file. (optional)
- parameter beforeCreatedAt: (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceCreatedAt: (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sortField: (query) Returns files sorted by the specified field. (optional)
- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) The file type for the File Manager file. (optional) |
| createdBy | (query) The Mailchimp account user who created the File Manager file. (optional) |
| beforeCreatedAt | (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCreatedAt | (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getFileManagerFilesWithRequestBuilder(fields:excludeFields:count:offset:type:createdBy:beforeCreatedAt:sinceCreatedAt:sortField:sortDir:)`

```swift
open class func getFileManagerFilesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: SortField_getFileManagerFiles? = nil, sortDir: SortDir_getFileManagerFiles? = nil) -> RequestBuilder<MailchimpFileManager>
```

     List stored files
     - GET /file-manager/files

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "total_file_size" : 2.3021358869347655,
  "_links" : [ null, null ],
  "files" : [ {
    "full_size_url" : "http://example.com/aeiou",
    "size" : 1,
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
    "width" : 5,
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "folder_id" : 6,
    "type" : "image",
    "thumbnail_url" : "http://example.com/aeiou",
    "created_by" : "created_by",
    "height" : 5
  }, {
    "full_size_url" : "http://example.com/aeiou",
    "size" : 1,
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
    "width" : 5,
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "folder_id" : 6,
    "type" : "image",
    "thumbnail_url" : "http://example.com/aeiou",
    "created_by" : "created_by",
    "height" : 5
  } ],
  "total_items" : 7
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter type: (query) The file type for the File Manager file. (optional)
     - parameter createdBy: (query) The Mailchimp account user who created the File Manager file. (optional)
     - parameter beforeCreatedAt: (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceCreatedAt: (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)

     - returns: RequestBuilder<FileManager>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) The file type for the File Manager file. (optional) |
| createdBy | (query) The Mailchimp account user who created the File Manager file. (optional) |
| beforeCreatedAt | (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCreatedAt | (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| sortDir | (query) Determines the order direction for sorted results. (optional) |

### `getFileManagerFilesId(fileId:fields:excludeFields:completion:)`

```swift
open class func getFileManagerFilesId(fileId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: GalleryFile1?, _ error: Error?) -> Void))
```

Get file

- parameter fileId: (path) The unique id for the File Manager file.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fileId | (path) The unique id for the File Manager file. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getFileManagerFilesIdWithRequestBuilder(fileId:fields:excludeFields:)`

```swift
open class func getFileManagerFilesIdWithRequestBuilder(fileId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<GalleryFile1>
```

     Get file
     - GET /file-manager/files/{file_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "full_size_url" : "http://example.com/aeiou",
  "size" : 1,
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
  "width" : 5,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "folder_id" : 6,
  "type" : "image",
  "thumbnail_url" : "http://example.com/aeiou",
  "created_by" : "created_by",
  "height" : 5
}}]
     - parameter fileId: (path) The unique id for the File Manager file.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<GalleryFile1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fileId | (path) The unique id for the File Manager file. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getFileManagerFolders(fields:excludeFields:count:offset:createdBy:beforeCreatedAt:sinceCreatedAt:completion:)`

```swift
open class func getFileManagerFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, completion: @escaping ((_ data: FileManagerFolders?, _ error: Error?) -> Void))
```

List folders

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter createdBy: (query) The Mailchimp account user who created the File Manager file. (optional)
- parameter beforeCreatedAt: (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceCreatedAt: (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| createdBy | (query) The Mailchimp account user who created the File Manager file. (optional) |
| beforeCreatedAt | (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCreatedAt | (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getFileManagerFoldersWithRequestBuilder(fields:excludeFields:count:offset:createdBy:beforeCreatedAt:sinceCreatedAt:)`

```swift
open class func getFileManagerFoldersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil) -> RequestBuilder<FileManagerFolders>
```

     List folders
     - GET /file-manager/folders

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "folders" : [ {
    "file_count" : 6,
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
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "created_by" : "created_by"
  }, {
    "file_count" : 6,
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
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "id" : 0,
    "created_by" : "created_by"
  } ],
  "_links" : [ null, null ],
  "total_items" : 1
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter createdBy: (query) The Mailchimp account user who created the File Manager file. (optional)
     - parameter beforeCreatedAt: (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceCreatedAt: (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<FileManagerFolders>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| createdBy | (query) The Mailchimp account user who created the File Manager file. (optional) |
| beforeCreatedAt | (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCreatedAt | (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `getFileManagerFoldersId(folderId:fields:excludeFields:completion:)`

```swift
open class func getFileManagerFoldersId(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: GalleryFolder1?, _ error: Error?) -> Void))
```

Get folder

- parameter folderId: (path) The unique id for the File Manager folder.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the File Manager folder. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getFileManagerFoldersIdWithRequestBuilder(folderId:fields:excludeFields:)`

```swift
open class func getFileManagerFoldersIdWithRequestBuilder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<GalleryFolder1>
```

     Get folder
     - GET /file-manager/folders/{folder_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "file_count" : 6,
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
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "created_by" : "created_by"
}}]
     - parameter folderId: (path) The unique id for the File Manager folder.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<GalleryFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| folderId | (path) The unique id for the File Manager folder. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `patchFileManagerFilesId(body:fileId:completion:)`

```swift
open class func patchFileManagerFilesId(body: GalleryFile2, fileId: String, completion: @escaping ((_ data: GalleryFile1?, _ error: Error?) -> Void))
```

Update file

- parameter body: (body)
- parameter fileId: (path) The unique id for the File Manager file.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| fileId | (path) The unique id for the File Manager file. |
| completion | completion handler to receive the data and the error objects |

### `patchFileManagerFilesIdWithRequestBuilder(body:fileId:)`

```swift
open class func patchFileManagerFilesIdWithRequestBuilder(body: GalleryFile2, fileId: String) -> RequestBuilder<GalleryFile1>
```

     Update file
     - PATCH /file-manager/files/{file_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "full_size_url" : "http://example.com/aeiou",
  "size" : 1,
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
  "width" : 5,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "folder_id" : 6,
  "type" : "image",
  "thumbnail_url" : "http://example.com/aeiou",
  "created_by" : "created_by",
  "height" : 5
}}]
     - parameter body: (body)
     - parameter fileId: (path) The unique id for the File Manager file.

     - returns: RequestBuilder<GalleryFile1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| fileId | (path) The unique id for the File Manager file. |

### `patchFileManagerFoldersId(body:folderId:completion:)`

```swift
open class func patchFileManagerFoldersId(body: GalleryFolder2, folderId: String, completion: @escaping ((_ data: GalleryFolder1?, _ error: Error?) -> Void))
```

Update folder

- parameter body: (body)
- parameter folderId: (path) The unique id for the File Manager folder.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| folderId | (path) The unique id for the File Manager folder. |
| completion | completion handler to receive the data and the error objects |

### `patchFileManagerFoldersIdWithRequestBuilder(body:folderId:)`

```swift
open class func patchFileManagerFoldersIdWithRequestBuilder(body: GalleryFolder2, folderId: String) -> RequestBuilder<GalleryFolder1>
```

     Update folder
     - PATCH /file-manager/folders/{folder_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "file_count" : 6,
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
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "created_by" : "created_by"
}}]
     - parameter body: (body)
     - parameter folderId: (path) The unique id for the File Manager folder.

     - returns: RequestBuilder<GalleryFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| folderId | (path) The unique id for the File Manager folder. |

### `postFileManagerFiles(body:completion:)`

```swift
open class func postFileManagerFiles(body: GalleryFile, completion: @escaping ((_ data: GalleryFile1?, _ error: Error?) -> Void))
```

Add file

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postFileManagerFilesWithRequestBuilder(body:)`

```swift
open class func postFileManagerFilesWithRequestBuilder(body: GalleryFile) -> RequestBuilder<GalleryFile1>
```

     Add file
     - POST /file-manager/files

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "full_size_url" : "http://example.com/aeiou",
  "size" : 1,
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
  "width" : 5,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "folder_id" : 6,
  "type" : "image",
  "thumbnail_url" : "http://example.com/aeiou",
  "created_by" : "created_by",
  "height" : 5
}}]
     - parameter body: (body)

     - returns: RequestBuilder<GalleryFile1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |

### `postFileManagerFolders(body:completion:)`

```swift
open class func postFileManagerFolders(body: GalleryFolder, completion: @escaping ((_ data: GalleryFolder1?, _ error: Error?) -> Void))
```

Add folder

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postFileManagerFoldersWithRequestBuilder(body:)`

```swift
open class func postFileManagerFoldersWithRequestBuilder(body: GalleryFolder) -> RequestBuilder<GalleryFolder1>
```

     Add folder
     - POST /file-manager/folders

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "file_count" : 6,
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
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "created_by" : "created_by"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<GalleryFolder1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |