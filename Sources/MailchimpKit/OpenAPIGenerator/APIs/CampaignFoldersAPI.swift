import Alamofire
import Foundation

open class CampaignFoldersAPI {
  /**
   Delete campaign folder

   - parameter folderId: (path) The unique id for the campaign folder.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteCampaignFoldersId(folderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteCampaignFoldersIdWithRequestBuilder(folderId: folderId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete campaign folder
   - DELETE /campaign-folders/{folder_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter folderId: (path) The unique id for the campaign folder.

   - returns: RequestBuilder<Void>
   */
  open class func deleteCampaignFoldersIdWithRequestBuilder(folderId: String) -> RequestBuilder<Void> {
    var path = "/campaign-folders/{folder_id}"
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
   List campaign folders

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CampaignFolders?, _ error: Error?) -> Void)) {
    getCampaignFoldersWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getCampaignFoldersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CampaignFolders> {
    let path = "/campaign-folders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<CampaignFolders>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get campaign folder

   - parameter folderId: (path) The unique id for the campaign folder.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignFoldersId(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignFolder1?, _ error: Error?) -> Void)) {
    getCampaignFoldersIdWithRequestBuilder(folderId: folderId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getCampaignFoldersIdWithRequestBuilder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignFolder1> {
    var path = "/campaign-folders/{folder_id}"
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

    let requestBuilder: RequestBuilder<CampaignFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update campaign folder

   - parameter body: (body)
   - parameter folderId: (path) The unique id for the campaign folder.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchCampaignFoldersId(body: CampaignFolder2, folderId: String, completion: @escaping ((_ data: CampaignFolder1?, _ error: Error?) -> Void)) {
    patchCampaignFoldersIdWithRequestBuilder(body: body, folderId: folderId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func patchCampaignFoldersIdWithRequestBuilder(body: CampaignFolder2, folderId: String) -> RequestBuilder<CampaignFolder1> {
    var path = "/campaign-folders/{folder_id}"
    let folderIdPreEscape = "\(folderId)"
    let folderIdPostEscape = folderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{folder_id}", with: folderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<CampaignFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add campaign folder

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignFolders(body: CampaignFolder, completion: @escaping ((_ data: CampaignFolder1?, _ error: Error?) -> Void)) {
    postCampaignFoldersWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postCampaignFoldersWithRequestBuilder(body: CampaignFolder) -> RequestBuilder<CampaignFolder1> {
    let path = "/campaign-folders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<CampaignFolder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
