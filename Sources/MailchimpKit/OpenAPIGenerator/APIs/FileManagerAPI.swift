import Alamofire
import Foundation

open class FileManagerAPI {
  /**
   Delete file

   - parameter fileId: (path) The unique id for the File Manager file.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteFileManagerFilesId(fileId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteFileManagerFilesIdWithRequestBuilder(fileId: fileId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete file
   - DELETE /file-manager/files/{file_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter fileId: (path) The unique id for the File Manager file.

   - returns: RequestBuilder<Void>
   */
  open class func deleteFileManagerFilesIdWithRequestBuilder(fileId: String) -> RequestBuilder<Void> {
    var path = "/file-manager/files/{file_id}"
    let fileIdPreEscape = "\(fileId)"
    let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{file_id}", with: fileIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete folder

   - parameter folderId: (path) The unique id for the File Manager folder.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteFileManagerFoldersId(folderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteFileManagerFoldersIdWithRequestBuilder(folderId: folderId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete folder
   - DELETE /file-manager/folders/{folder_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter folderId: (path) The unique id for the File Manager folder.

   - returns: RequestBuilder<Void>
   */
  open class func deleteFileManagerFoldersIdWithRequestBuilder(folderId: String) -> RequestBuilder<Void> {
    var path = "/file-manager/folders/{folder_id}"
    let folderIdPreEscape = "\(folderId)"
    let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{folder_id}", with: folderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getFileManagerFiles: String {
    case addedDate = "added_date"
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getFileManagerFiles: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
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
   */
  open class func getFileManagerFiles(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: SortField_getFileManagerFiles? = nil, sortDir: SortDir_getFileManagerFiles? = nil, completion: @escaping ((_ data: MailchimpFileManager?, _ error: Error?) -> Void)) {
    getFileManagerFilesWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type, createdBy: createdBy, beforeCreatedAt: beforeCreatedAt, sinceCreatedAt: sinceCreatedAt, sortField: sortField, sortDir: sortDir).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getFileManagerFilesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: SortField_getFileManagerFiles? = nil, sortDir: SortDir_getFileManagerFiles? = nil) -> RequestBuilder<MailchimpFileManager> {
    let path = "/file-manager/files"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "type": type,
      "created_by": createdBy,
      "before_created_at": beforeCreatedAt,
      "since_created_at": sinceCreatedAt,
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue
    ])

    let requestBuilder: RequestBuilder<MailchimpFileManager>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get file

   - parameter fileId: (path) The unique id for the File Manager file.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getFileManagerFilesId(fileId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: GalleryFile1?, _ error: Error?) -> Void)) {
    getFileManagerFilesIdWithRequestBuilder(fileId: fileId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getFileManagerFilesIdWithRequestBuilder(fileId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<GalleryFile1> {
    var path = "/file-manager/files/{file_id}"
    let fileIdPreEscape = "\(fileId)"
    let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{file_id}", with: fileIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<GalleryFile1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List folders

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter createdBy: (query) The Mailchimp account user who created the File Manager file. (optional)
   - parameter beforeCreatedAt: (query) Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter sinceCreatedAt: (query) Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getFileManagerFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, completion: @escaping ((_ data: FileManagerFolders?, _ error: Error?) -> Void)) {
    getFileManagerFoldersWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, createdBy: createdBy, beforeCreatedAt: beforeCreatedAt, sinceCreatedAt: sinceCreatedAt).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getFileManagerFoldersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil) -> RequestBuilder<FileManagerFolders> {
    let path = "/file-manager/folders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "created_by": createdBy,
      "before_created_at": beforeCreatedAt,
      "since_created_at": sinceCreatedAt
    ])

    let requestBuilder: RequestBuilder<FileManagerFolders>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get folder

   - parameter folderId: (path) The unique id for the File Manager folder.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getFileManagerFoldersId(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: GalleryFolder1?, _ error: Error?) -> Void)) {
    getFileManagerFoldersIdWithRequestBuilder(folderId: folderId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getFileManagerFoldersIdWithRequestBuilder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<GalleryFolder1> {
    var path = "/file-manager/folders/{folder_id}"
    let folderIdPreEscape = "\(folderId)"
    let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{folder_id}", with: folderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<GalleryFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update file

   - parameter body: (body)
   - parameter fileId: (path) The unique id for the File Manager file.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchFileManagerFilesId(body: GalleryFile2, fileId: String, completion: @escaping ((_ data: GalleryFile1?, _ error: Error?) -> Void)) {
    patchFileManagerFilesIdWithRequestBuilder(body: body, fileId: fileId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func patchFileManagerFilesIdWithRequestBuilder(body: GalleryFile2, fileId: String) -> RequestBuilder<GalleryFile1> {
    var path = "/file-manager/files/{file_id}"
    let fileIdPreEscape = "\(fileId)"
    let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{file_id}", with: fileIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<GalleryFile1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update folder

   - parameter body: (body)
   - parameter folderId: (path) The unique id for the File Manager folder.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchFileManagerFoldersId(body: GalleryFolder2, folderId: String, completion: @escaping ((_ data: GalleryFolder1?, _ error: Error?) -> Void)) {
    patchFileManagerFoldersIdWithRequestBuilder(body: body, folderId: folderId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func patchFileManagerFoldersIdWithRequestBuilder(body: GalleryFolder2, folderId: String) -> RequestBuilder<GalleryFolder1> {
    var path = "/file-manager/folders/{folder_id}"
    let folderIdPreEscape = "\(folderId)"
    let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{folder_id}", with: folderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<GalleryFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add file

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postFileManagerFiles(body: GalleryFile, completion: @escaping ((_ data: GalleryFile1?, _ error: Error?) -> Void)) {
    postFileManagerFilesWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postFileManagerFilesWithRequestBuilder(body: GalleryFile) -> RequestBuilder<GalleryFile1> {
    let path = "/file-manager/files"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<GalleryFile1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add folder

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postFileManagerFolders(body: GalleryFolder, completion: @escaping ((_ data: GalleryFolder1?, _ error: Error?) -> Void)) {
    postFileManagerFoldersWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postFileManagerFoldersWithRequestBuilder(body: GalleryFolder) -> RequestBuilder<GalleryFolder1> {
    let path = "/file-manager/folders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<GalleryFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
