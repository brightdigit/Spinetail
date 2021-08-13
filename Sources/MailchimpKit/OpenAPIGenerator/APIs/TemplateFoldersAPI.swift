import Alamofire
import Foundation

open class TemplateFoldersAPI {
  /**
   Delete template folder

   - parameter folderId: (path) The unique id for the template folder.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteTemplateFoldersId(folderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteTemplateFoldersIdWithRequestBuilder(folderId: folderId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete template folder
   - DELETE /template-folders/{folder_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter folderId: (path) The unique id for the template folder.

   - returns: RequestBuilder<Void>
   */
  open class func deleteTemplateFoldersIdWithRequestBuilder(folderId: String) -> RequestBuilder<Void> {
    var path = "/template-folders/{folder_id}"
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
   List template folders

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getTemplateFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: TemplateFolders?, _ error: Error?) -> Void)) {
    getTemplateFoldersWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getTemplateFoldersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<TemplateFolders> {
    let path = "/template-folders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<TemplateFolders>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get template folder

   - parameter folderId: (path) The unique id for the template folder.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getTemplateFoldersId(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: TemplateFolder1?, _ error: Error?) -> Void)) {
    getTemplateFoldersIdWithRequestBuilder(folderId: folderId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getTemplateFoldersIdWithRequestBuilder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<TemplateFolder1> {
    var path = "/template-folders/{folder_id}"
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

    let requestBuilder: RequestBuilder<TemplateFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update template folder

   - parameter body: (body)
   - parameter folderId: (path) The unique id for the template folder.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchTemplateFoldersId(body: TemplateFolder2, folderId: String, completion: @escaping ((_ data: TemplateFolder1?, _ error: Error?) -> Void)) {
    patchTemplateFoldersIdWithRequestBuilder(body: body, folderId: folderId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func patchTemplateFoldersIdWithRequestBuilder(body: TemplateFolder2, folderId: String) -> RequestBuilder<TemplateFolder1> {
    var path = "/template-folders/{folder_id}"
    let folderIdPreEscape = "\(folderId)"
    let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{folder_id}", with: folderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<TemplateFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add template folder

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postTemplateFolders(body: TemplateFolder, completion: @escaping ((_ data: TemplateFolder1?, _ error: Error?) -> Void)) {
    postTemplateFoldersWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postTemplateFoldersWithRequestBuilder(body: TemplateFolder) -> RequestBuilder<TemplateFolder1> {
    let path = "/template-folders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<TemplateFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
