import Alamofire
import Foundation

open class BatchesAPI {
  /**
   Delete batch request

   - parameter batchId: (path) The unique id for the batch operation.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteBatchesId(batchId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteBatchesIdWithRequestBuilder(batchId: batchId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete batch request
   - DELETE /batches/{batch_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter batchId: (path) The unique id for the batch operation.

   - returns: RequestBuilder<Void>
   */
  open class func deleteBatchesIdWithRequestBuilder(batchId: String) -> RequestBuilder<Void> {
    var path = "/batches/{batch_id}"
    let batchIdPreEscape = "\(batchId)"
    let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{batch_id}", with: batchIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List batch requests

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getBatches(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: BatchOperations?, _ error: Error?) -> Void)) {
    getBatchesWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List batch requests
        - GET /batches

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "batches" : [ {
       "finished_operations" : 6,
       "completed_at" : "2000-01-23T04:56:07.000+00:00",
       "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
       "total_operations" : 0,
       "errored_operations" : 1,
       "id" : "id",
       "response_body_url" : "response_body_url",
       "status" : "pending"
     }, {
       "finished_operations" : 6,
       "completed_at" : "2000-01-23T04:56:07.000+00:00",
       "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
       "total_operations" : 0,
       "errored_operations" : 1,
       "id" : "id",
       "response_body_url" : "response_body_url",
       "status" : "pending"
     } ],
     "_links" : [ null, null ],
     "total_items" : 5
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<BatchOperations>
        */
  open class func getBatchesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<BatchOperations> {
    let path = "/batches"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<BatchOperations>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get batch operation status

   - parameter batchId: (path) The unique id for the batch operation.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getBatchesId(batchId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Batch?, _ error: Error?) -> Void)) {
    getBatchesIdWithRequestBuilder(batchId: batchId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get batch operation status
        - GET /batches/{batch_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "finished_operations" : 6,
     "completed_at" : "2000-01-23T04:56:07.000+00:00",
     "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
     "total_operations" : 0,
     "errored_operations" : 1,
     "id" : "id",
     "response_body_url" : "response_body_url",
     "status" : "pending"
   }}]
        - parameter batchId: (path) The unique id for the batch operation.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<Batch>
        */
  open class func getBatchesIdWithRequestBuilder(batchId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Batch> {
    var path = "/batches/{batch_id}"
    let batchIdPreEscape = "\(batchId)"
    let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{batch_id}", with: batchIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<Batch>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Start batch operation

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postBatches(body: BatchesBody, completion: @escaping ((_ data: Batch?, _ error: Error?) -> Void)) {
    postBatchesWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Start batch operation
        - POST /batches

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "finished_operations" : 6,
     "completed_at" : "2000-01-23T04:56:07.000+00:00",
     "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
     "total_operations" : 0,
     "errored_operations" : 1,
     "id" : "id",
     "response_body_url" : "response_body_url",
     "status" : "pending"
   }}]
        - parameter body: (body)

        - returns: RequestBuilder<Batch>
        */
  open class func postBatchesWithRequestBuilder(body: BatchesBody) -> RequestBuilder<Batch> {
    let path = "/batches"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Batch>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
