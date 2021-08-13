import Alamofire
import Foundation

open class ListsAPI {
  /**
   Delete list

   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsId(listId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdWithRequestBuilder(listId: listId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete list
   - DELETE /lists/{list_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdWithRequestBuilder(listId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete interest category

   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdInterestCategoriesId(listId: String, interestCategoryId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdInterestCategoriesIdWithRequestBuilder(listId: listId, interestCategoryId: interestCategoryId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete interest category
   - DELETE /lists/{list_id}/interest-categories/{interest_category_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdInterestCategoriesIdWithRequestBuilder(listId: String, interestCategoryId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete interest in category

   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdInterestCategoriesIdInterestsId(listId: String, interestCategoryId: String, interestId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId: listId, interestCategoryId: interestCategoryId, interestId: interestId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete interest in category
   - DELETE /lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId: String, interestCategoryId: String, interestId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let interestIdPreEscape = "\(interestId)"
    let interestIdPostEscape = interestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_id}", with: interestIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Archive list member

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdMembersId(listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdMembersIdWithRequestBuilder(listId: listId, subscriberHash: subscriberHash).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Archive list member
   - DELETE /lists/{list_id}/members/{subscriber_hash}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdMembersIdWithRequestBuilder(listId: String, subscriberHash: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/members/{subscriber_hash}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete note

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter noteId: (path) The id for the note.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdMembersIdNotesId(listId: String, subscriberHash: String, noteId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdMembersIdNotesIdWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, noteId: noteId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete note
   - DELETE /lists/{list_id}/members/{subscriber_hash}/notes/{note_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter noteId: (path) The id for the note.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdMembersIdNotesIdWithRequestBuilder(listId: String, subscriberHash: String, noteId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let noteIdPreEscape = "\(noteId)"
    let noteIdPostEscape = noteIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{note_id}", with: noteIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete merge field

   - parameter listId: (path) The unique ID for the list.
   - parameter mergeId: (path) The id for the merge field.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdMergeFieldsId(listId: String, mergeId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdMergeFieldsIdWithRequestBuilder(listId: listId, mergeId: mergeId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete merge field
   - DELETE /lists/{list_id}/merge-fields/{merge_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter mergeId: (path) The id for the merge field.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdMergeFieldsIdWithRequestBuilder(listId: String, mergeId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/merge-fields/{merge_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let mergeIdPreEscape = "\(mergeId)"
    let mergeIdPostEscape = mergeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{merge_id}", with: mergeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete segment

   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdSegmentsId(listId: String, segmentId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdSegmentsIdWithRequestBuilder(listId: listId, segmentId: segmentId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete segment
   - DELETE /lists/{list_id}/segments/{segment_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdSegmentsIdWithRequestBuilder(listId: String, segmentId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/segments/{segment_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Remove list member from segment

   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdSegmentsIdMembersId(listId: String, segmentId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdSegmentsIdMembersIdWithRequestBuilder(listId: listId, segmentId: segmentId, subscriberHash: subscriberHash).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Remove list member from segment
   - DELETE /lists/{list_id}/segments/{segment_id}/members/{subscriber_hash}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdSegmentsIdMembersIdWithRequestBuilder(listId: String, segmentId: String, subscriberHash: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/segments/{segment_id}/members/{subscriber_hash}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete webhook

   - parameter listId: (path) The unique ID for the list.
   - parameter webhookId: (path) The webhook&#x27;s id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteListsIdWebhooksId(listId: String, webhookId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteListsIdWebhooksIdWithRequestBuilder(listId: listId, webhookId: webhookId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete webhook
   - DELETE /lists/{list_id}/webhooks/{webhook_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter webhookId: (path) The webhook&#x27;s id.

   - returns: RequestBuilder<Void>
   */
  open class func deleteListsIdWebhooksIdWithRequestBuilder(listId: String, webhookId: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/webhooks/{webhook_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let webhookIdPreEscape = "\(webhookId)"
    let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{webhook_id}", with: webhookIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List member tags

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListMemberTags(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CollectionOfTags?, _ error: Error?) -> Void)) {
    getListMemberTagsWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List member tags
        - GET /lists/{list_id}/members/{subscriber_hash}/tags

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
     "total_items" : 6,
     "tags" : [ {
       "date_added" : "2000-01-23T04:56:07.000+00:00",
       "name" : "name",
       "id" : 0
     }, {
       "date_added" : "2000-01-23T04:56:07.000+00:00",
       "name" : "name",
       "id" : 0
     } ]
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<CollectionOfTags>
        */
  open class func getListMemberTagsWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CollectionOfTags> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/tags"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<CollectionOfTags>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getLists: String {
    case dateCreated = "date_created"
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getLists: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   Get lists info

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter beforeDateCreated: (query) Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter sinceDateCreated: (query) Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeCampaignLastSent: (query) Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter sinceCampaignLastSent: (query) Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter email: (query) Restrict results to lists that include a specific subscriber&#x27;s email address. (optional)
   - parameter sortField: (query) Returns files sorted by the specified field. (optional)
   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter hasEcommerceStore: (query) Restrict results to lists that contain an active, connected, undeleted ecommerce store. (optional)
   - parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getLists(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, beforeDateCreated: String? = nil, sinceDateCreated: String? = nil, beforeCampaignLastSent: String? = nil, sinceCampaignLastSent: String? = nil, email: String? = nil, sortField: SortField_getLists? = nil, sortDir: SortDir_getLists? = nil, hasEcommerceStore: Bool? = nil, includeTotalContacts: Bool? = nil, completion: @escaping ((_ data: SubscriberLists?, _ error: Error?) -> Void)) {
    getListsWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, beforeDateCreated: beforeDateCreated, sinceDateCreated: sinceDateCreated, beforeCampaignLastSent: beforeCampaignLastSent, sinceCampaignLastSent: sinceCampaignLastSent, email: email, sortField: sortField, sortDir: sortDir, hasEcommerceStore: hasEcommerceStore, includeTotalContacts: includeTotalContacts).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get lists info
        - GET /lists

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "_links" : [ null, null ],
     "lists" : [ {
       "notify_on_subscribe" : "false",
       "subscribe_url_long" : "subscribe_url_long",
       "marketing_permissions" : false,
       "permission_reminder" : "permission_reminder",
       "use_archive_bar" : false,
       "notify_on_unsubscribe" : "false",
       "visibility" : "pub",
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
       "campaign_defaults" : {
         "from_email" : "from_email",
         "subject" : "subject",
         "language" : "language",
         "from_name" : "from_name"
       },
       "web_id" : 0,
       "modules" : [ "modules", "modules" ],
       "email_type_option" : true,
       "beamer_address" : "beamer_address",
       "has_welcome" : false,
       "stats" : {
         "cleaned_count" : 2,
         "unsubscribe_count_since_send" : 9,
         "member_count_since_send" : 7,
         "click_rate" : 6.84685269835264,
         "cleaned_count_since_send" : 3,
         "total_contacts" : 5,
         "campaign_count" : 2,
         "avg_unsub_rate" : 1.2315135367772556,
         "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
         "unsubscribe_count" : 5,
         "target_sub_rate" : 1.0246457001441578,
         "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
         "avg_sub_rate" : 7.386281948385884,
         "member_count" : 1,
         "merge_field_count" : 4,
         "open_rate" : 1.4894159098541704,
         "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
       },
       "contact" : {
         "zip" : "zip",
         "country" : "country",
         "address2" : "address2",
         "city" : "city",
         "phone" : "phone",
         "address1" : "address1",
         "company" : "company",
         "state" : "state"
       },
       "name" : "name",
       "list_rating" : 6,
       "double_optin" : false,
       "id" : "id",
       "subscribe_url_short" : "subscribe_url_short"
     }, {
       "notify_on_subscribe" : "false",
       "subscribe_url_long" : "subscribe_url_long",
       "marketing_permissions" : false,
       "permission_reminder" : "permission_reminder",
       "use_archive_bar" : false,
       "notify_on_unsubscribe" : "false",
       "visibility" : "pub",
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
       "campaign_defaults" : {
         "from_email" : "from_email",
         "subject" : "subject",
         "language" : "language",
         "from_name" : "from_name"
       },
       "web_id" : 0,
       "modules" : [ "modules", "modules" ],
       "email_type_option" : true,
       "beamer_address" : "beamer_address",
       "has_welcome" : false,
       "stats" : {
         "cleaned_count" : 2,
         "unsubscribe_count_since_send" : 9,
         "member_count_since_send" : 7,
         "click_rate" : 6.84685269835264,
         "cleaned_count_since_send" : 3,
         "total_contacts" : 5,
         "campaign_count" : 2,
         "avg_unsub_rate" : 1.2315135367772556,
         "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
         "unsubscribe_count" : 5,
         "target_sub_rate" : 1.0246457001441578,
         "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
         "avg_sub_rate" : 7.386281948385884,
         "member_count" : 1,
         "merge_field_count" : 4,
         "open_rate" : 1.4894159098541704,
         "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
       },
       "contact" : {
         "zip" : "zip",
         "country" : "country",
         "address2" : "address2",
         "city" : "city",
         "phone" : "phone",
         "address1" : "address1",
         "company" : "company",
         "state" : "state"
       },
       "name" : "name",
       "list_rating" : 6,
       "double_optin" : false,
       "id" : "id",
       "subscribe_url_short" : "subscribe_url_short"
     } ],
     "total_items" : 7,
     "constraints" : {
       "may_create" : true,
       "current_total_instances" : 4,
       "max_instances" : 1
     }
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter beforeDateCreated: (query) Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter sinceDateCreated: (query) Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeCampaignLastSent: (query) Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter sinceCampaignLastSent: (query) Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter email: (query) Restrict results to lists that include a specific subscriber&#x27;s email address. (optional)
        - parameter sortField: (query) Returns files sorted by the specified field. (optional)
        - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
        - parameter hasEcommerceStore: (query) Restrict results to lists that contain an active, connected, undeleted ecommerce store. (optional)
        - parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)

        - returns: RequestBuilder<SubscriberLists>
        */
  open class func getListsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, beforeDateCreated: String? = nil, sinceDateCreated: String? = nil, beforeCampaignLastSent: String? = nil, sinceCampaignLastSent: String? = nil, email: String? = nil, sortField: SortField_getLists? = nil, sortDir: SortDir_getLists? = nil, hasEcommerceStore: Bool? = nil, includeTotalContacts: Bool? = nil) -> RequestBuilder<SubscriberLists> {
    let path = "/lists"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "before_date_created": beforeDateCreated,
      "since_date_created": sinceDateCreated,
      "before_campaign_last_sent": beforeCampaignLastSent,
      "since_campaign_last_sent": sinceCampaignLastSent,
      "email": email,
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue,
      "has_ecommerce_store": hasEcommerceStore,
      "include_total_contacts": includeTotalContacts
    ])

    let requestBuilder: RequestBuilder<SubscriberLists>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get list info

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsId(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeTotalContacts: Bool? = nil, completion: @escaping ((_ data: SubscriberList1?, _ error: Error?) -> Void)) {
    getListsIdWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, includeTotalContacts: includeTotalContacts).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get list info
        - GET /lists/{list_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "notify_on_subscribe" : "false",
     "subscribe_url_long" : "subscribe_url_long",
     "marketing_permissions" : false,
     "permission_reminder" : "permission_reminder",
     "use_archive_bar" : false,
     "notify_on_unsubscribe" : "false",
     "visibility" : "pub",
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
     "campaign_defaults" : {
       "from_email" : "from_email",
       "subject" : "subject",
       "language" : "language",
       "from_name" : "from_name"
     },
     "web_id" : 0,
     "modules" : [ "modules", "modules" ],
     "email_type_option" : true,
     "beamer_address" : "beamer_address",
     "has_welcome" : false,
     "stats" : {
       "cleaned_count" : 2,
       "unsubscribe_count_since_send" : 9,
       "member_count_since_send" : 7,
       "click_rate" : 6.84685269835264,
       "cleaned_count_since_send" : 3,
       "total_contacts" : 5,
       "campaign_count" : 2,
       "avg_unsub_rate" : 1.2315135367772556,
       "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
       "unsubscribe_count" : 5,
       "target_sub_rate" : 1.0246457001441578,
       "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
       "avg_sub_rate" : 7.386281948385884,
       "member_count" : 1,
       "merge_field_count" : 4,
       "open_rate" : 1.4894159098541704,
       "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
     },
     "contact" : {
       "zip" : "zip",
       "country" : "country",
       "address2" : "address2",
       "city" : "city",
       "phone" : "phone",
       "address1" : "address1",
       "company" : "company",
       "state" : "state"
     },
     "name" : "name",
     "list_rating" : 6,
     "double_optin" : false,
     "id" : "id",
     "subscribe_url_short" : "subscribe_url_short"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter includeTotalContacts: (query) Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. (optional)

        - returns: RequestBuilder<SubscriberList1>
        */
  open class func getListsIdWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeTotalContacts: Bool? = nil) -> RequestBuilder<SubscriberList1> {
    var path = "/lists/{list_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "include_total_contacts": includeTotalContacts
    ])

    let requestBuilder: RequestBuilder<SubscriberList1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List abuse reports

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdAbuseReports(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: AbuseComplaints?, _ error: Error?) -> Void)) {
    getListsIdAbuseReportsWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List abuse reports
        - GET /lists/{list_id}/abuse-reports

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "total_items" : 6,
     "abuse_reports" : [ {
       "email_id" : "email_id",
       "date" : "date",
       "email_address" : "email_address",
       "list_id" : "list_id",
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
       "id" : 0,
       "vip" : true,
       "campaign_id" : "campaign_id"
     }, {
       "email_id" : "email_id",
       "date" : "date",
       "email_address" : "email_address",
       "list_id" : "list_id",
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
       "id" : 0,
       "vip" : true,
       "campaign_id" : "campaign_id"
     } ]
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<AbuseComplaints>
        */
  open class func getListsIdAbuseReportsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<AbuseComplaints> {
    var path = "/lists/{list_id}/abuse-reports"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<AbuseComplaints>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get abuse report

   - parameter listId: (path) The unique ID for the list.
   - parameter reportId: (path) The id for the abuse report.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdAbuseReportsId(listId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: AbuseComplaint?, _ error: Error?) -> Void)) {
    getListsIdAbuseReportsIdWithRequestBuilder(listId: listId, reportId: reportId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get abuse report
        - GET /lists/{list_id}/abuse-reports/{report_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "date" : "date",
     "email_address" : "email_address",
     "list_id" : "list_id",
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
     "id" : 0,
     "vip" : true,
     "campaign_id" : "campaign_id"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter reportId: (path) The id for the abuse report.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<AbuseComplaint>
        */
  open class func getListsIdAbuseReportsIdWithRequestBuilder(listId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<AbuseComplaint> {
    var path = "/lists/{list_id}/abuse-reports/{report_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let reportIdPreEscape = "\(reportId)"
    let reportIdPostEscape = reportIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{report_id}", with: reportIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<AbuseComplaint>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List recent activity

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdActivity(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ListActivity?, _ error: Error?) -> Void)) {
    getListsIdActivityWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List recent activity
        - GET /lists/{list_id}/activity

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "activity" : [ {
       "soft_bounce" : 5,
       "hard_bounce" : 5,
       "subs" : 2,
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
       "emails_sent" : 0,
       "unsubs" : 7,
       "recipient_clicks" : 1,
       "other_adds" : 9,
       "day" : "day",
       "unique_opens" : 6,
       "other_removes" : 3
     }, {
       "soft_bounce" : 5,
       "hard_bounce" : 5,
       "subs" : 2,
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
       "emails_sent" : 0,
       "unsubs" : 7,
       "recipient_clicks" : 1,
       "other_adds" : 9,
       "day" : "day",
       "unique_opens" : 6,
       "other_removes" : 3
     } ],
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "total_items" : 2
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<ListActivity>
        */
  open class func getListsIdActivityWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ListActivity> {
    var path = "/lists/{list_id}/activity"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<ListActivity>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List top email clients

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdClients(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EmailClients?, _ error: Error?) -> Void)) {
    getListsIdClientsWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List top email clients
        - GET /lists/{list_id}/clients

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "clients" : [ {
       "members" : 0,
       "client" : "client"
     }, {
       "members" : 0,
       "client" : "client"
     } ],
     "list_id" : "list_id",
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
     "total_items" : 6
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EmailClients>
        */
  open class func getListsIdClientsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EmailClients> {
    var path = "/lists/{list_id}/clients"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EmailClients>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getListsIdGrowthHistory: String {
    case month
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getListsIdGrowthHistory: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   List growth history data

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter sortField: (query) Returns files sorted by the specified field. (optional)
   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdGrowthHistory(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getListsIdGrowthHistory? = nil, sortDir: SortDir_getListsIdGrowthHistory? = nil, completion: @escaping ((_ data: GrowthHistory?, _ error: Error?) -> Void)) {
    getListsIdGrowthHistoryWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, sortField: sortField, sortDir: sortDir).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List growth history data
        - GET /lists/{list_id}/growth-history

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "history" : [ {
       "imports" : 6,
       "list_id" : "list_id",
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
       "pending" : 9,
       "reconfirm" : 2,
       "existing" : 0,
       "optins" : 1,
       "subscribed" : 5,
       "unsubscribed" : 5,
       "deleted" : 3,
       "month" : "month",
       "cleaned" : 7,
       "transactional" : 2
     }, {
       "imports" : 6,
       "list_id" : "list_id",
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
       "pending" : 9,
       "reconfirm" : 2,
       "existing" : 0,
       "optins" : 1,
       "subscribed" : 5,
       "unsubscribed" : 5,
       "deleted" : 3,
       "month" : "month",
       "cleaned" : 7,
       "transactional" : 2
     } ],
     "total_items" : 4
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter sortField: (query) Returns files sorted by the specified field. (optional)
        - parameter sortDir: (query) Determines the order direction for sorted results. (optional)

        - returns: RequestBuilder<GrowthHistory>
        */
  open class func getListsIdGrowthHistoryWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getListsIdGrowthHistory? = nil, sortDir: SortDir_getListsIdGrowthHistory? = nil) -> RequestBuilder<GrowthHistory> {
    var path = "/lists/{list_id}/growth-history"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue
    ])

    let requestBuilder: RequestBuilder<GrowthHistory>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get growth history by month

   - parameter listId: (path) The unique ID for the list.
   - parameter month: (path) A specific month of list growth history.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdGrowthHistoryId(listId: String, month: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: GrowthHistory1?, _ error: Error?) -> Void)) {
    getListsIdGrowthHistoryIdWithRequestBuilder(listId: listId, month: month, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get growth history by month
        - GET /lists/{list_id}/growth-history/{month}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "imports" : 6,
     "list_id" : "list_id",
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
     "pending" : 9,
     "reconfirm" : 2,
     "existing" : 0,
     "optins" : 1,
     "subscribed" : 5,
     "unsubscribed" : 5,
     "deleted" : 3,
     "month" : "month",
     "cleaned" : 7,
     "transactional" : 2
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter month: (path) A specific month of list growth history.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<GrowthHistory1>
        */
  open class func getListsIdGrowthHistoryIdWithRequestBuilder(listId: String, month: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<GrowthHistory1> {
    var path = "/lists/{list_id}/growth-history/{month}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let monthPreEscape = "\(month)"
    let monthPostEscape = monthPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{month}", with: monthPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<GrowthHistory1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List interest categories

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter type: (query) Restrict results a type of interest group (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdInterestCategories(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, completion: @escaping ((_ data: InterestGroupings?, _ error: Error?) -> Void)) {
    getListsIdInterestCategoriesWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List interest categories
        - GET /lists/{list_id}/interest-categories

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "categories" : [ {
       "list_id" : "list_id",
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
       "display_order" : 0,
       "id" : "id",
       "title" : "title",
       "type" : "checkboxes"
     }, {
       "list_id" : "list_id",
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
       "display_order" : 0,
       "id" : "id",
       "title" : "title",
       "type" : "checkboxes"
     } ],
     "total_items" : 6
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter type: (query) Restrict results a type of interest group (optional)

        - returns: RequestBuilder<InterestGroupings>
        */
  open class func getListsIdInterestCategoriesWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil) -> RequestBuilder<InterestGroupings> {
    var path = "/lists/{list_id}/interest-categories"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "type": type
    ])

    let requestBuilder: RequestBuilder<InterestGroupings>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get interest category info

   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdInterestCategoriesId(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: InterestCategory1?, _ error: Error?) -> Void)) {
    getListsIdInterestCategoriesIdWithRequestBuilder(listId: listId, interestCategoryId: interestCategoryId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get interest category info
        - GET /lists/{list_id}/interest-categories/{interest_category_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
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
     "display_order" : 0,
     "id" : "id",
     "title" : "title",
     "type" : "checkboxes"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter interestCategoryId: (path) The unique ID for the interest category.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<InterestCategory1>
        */
  open class func getListsIdInterestCategoriesIdWithRequestBuilder(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<InterestCategory1> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<InterestCategory1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List interests in category

   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdInterestCategoriesIdInterests(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Interests?, _ error: Error?) -> Void)) {
    getListsIdInterestCategoriesIdInterestsWithRequestBuilder(listId: listId, interestCategoryId: interestCategoryId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List interests in category
        - GET /lists/{list_id}/interest-categories/{interest_category_id}/interests

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "category_id" : "category_id",
     "_links" : [ null, null ],
     "interests" : [ {
       "category_id" : "category_id",
       "list_id" : "list_id",
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
       "subscriber_count" : "subscriber_count",
       "name" : "name",
       "display_order" : 0,
       "id" : "id"
     }, {
       "category_id" : "category_id",
       "list_id" : "list_id",
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
       "subscriber_count" : "subscriber_count",
       "name" : "name",
       "display_order" : 0,
       "id" : "id"
     } ],
     "total_items" : 6
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter interestCategoryId: (path) The unique ID for the interest category.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<Interests>
        */
  open class func getListsIdInterestCategoriesIdInterestsWithRequestBuilder(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Interests> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}/interests"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<Interests>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get interest in category

   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdInterestCategoriesIdInterestsId(listId: String, interestCategoryId: String, interestId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Interest1?, _ error: Error?) -> Void)) {
    getListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId: listId, interestCategoryId: interestCategoryId, interestId: interestId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get interest in category
        - GET /lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "category_id" : "category_id",
     "list_id" : "list_id",
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
     "subscriber_count" : "subscriber_count",
     "name" : "name",
     "display_order" : 0,
     "id" : "id"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter interestCategoryId: (path) The unique ID for the interest category.
        - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<Interest1>
        */
  open class func getListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(listId: String, interestCategoryId: String, interestId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Interest1> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let interestIdPreEscape = "\(interestId)"
    let interestIdPostEscape = interestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_id}", with: interestIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<Interest1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List locations

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdLocations(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ListLocations?, _ error: Error?) -> Void)) {
    getListsIdLocationsWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List locations
        - GET /lists/{list_id}/locations

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
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
     "locations" : [ {
       "cc" : "cc",
       "country" : "country",
       "total" : 6,
       "percent" : 0.8008281904610115
     }, {
       "cc" : "cc",
       "country" : "country",
       "total" : 6,
       "percent" : 0.8008281904610115
     } ],
     "total_items" : 1
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<ListLocations>
        */
  open class func getListsIdLocationsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ListLocations> {
    var path = "/lists/{list_id}/locations"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<ListLocations>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter status
   */
  public enum Status_getListsIdMembers: String {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
    case archived
  }

  /**
   * enum for parameter interestMatch
   */
  public enum InterestMatch_getListsIdMembers: String {
    case any
    case all
    case _none = "none"
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getListsIdMembers: String {
    case timestampOpt = "timestamp_opt"
    case timestampSignup = "timestamp_signup"
    case lastChanged = "last_changed"
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getListsIdMembers: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   List members info

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter emailType: (query) The email type. (optional)
   - parameter status: (query) The subscriber&#x27;s status. (optional)
   - parameter sinceTimestampOpt: (query) Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeTimestampOpt: (query) Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter sinceLastChanged: (query) Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeLastChanged: (query) Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter uniqueEmailId: (query) A unique identifier for the email address across all Mailchimp lists. (optional)
   - parameter vipOnly: (query) A filter to return only the list&#x27;s VIP members. Passing &#x60;true&#x60; will restrict results to VIP list members, passing &#x60;false&#x60; will return all list members. (optional)
   - parameter interestCategoryId: (query) The unique id for the interest category. (optional)
   - parameter interestIds: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. (optional)
   - parameter interestMatch: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. \&quot;any\&quot; will match a member with any of the interest supplied, \&quot;all\&quot; will only match members with every interest supplied, and \&quot;none\&quot; will match members without any of the interest supplied. (optional)
   - parameter sortField: (query) Returns files sorted by the specified field. (optional)
   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter sinceLastCampaign: (query) Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. (optional)
   - parameter unsubscribedSince: (query) Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembers(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailType: String? = nil, status: Status_getListsIdMembers? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch_getListsIdMembers? = nil, sortField: SortField_getListsIdMembers? = nil, sortDir: SortDir_getListsIdMembers? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil, completion: @escaping ((_ data: ListMembers1?, _ error: Error?) -> Void)) {
    getListsIdMembersWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, emailType: emailType, status: status, sinceTimestampOpt: sinceTimestampOpt, beforeTimestampOpt: beforeTimestampOpt, sinceLastChanged: sinceLastChanged, beforeLastChanged: beforeLastChanged, uniqueEmailId: uniqueEmailId, vipOnly: vipOnly, interestCategoryId: interestCategoryId, interestIds: interestIds, interestMatch: interestMatch, sortField: sortField, sortDir: sortDir, sinceLastCampaign: sinceLastCampaign, unsubscribedSince: unsubscribedSince).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List members info
        - GET /lists/{list_id}/members

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
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
     "total_items" : 9
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter emailType: (query) The email type. (optional)
        - parameter status: (query) The subscriber&#x27;s status. (optional)
        - parameter sinceTimestampOpt: (query) Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeTimestampOpt: (query) Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter sinceLastChanged: (query) Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeLastChanged: (query) Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter uniqueEmailId: (query) A unique identifier for the email address across all Mailchimp lists. (optional)
        - parameter vipOnly: (query) A filter to return only the list&#x27;s VIP members. Passing &#x60;true&#x60; will restrict results to VIP list members, passing &#x60;false&#x60; will return all list members. (optional)
        - parameter interestCategoryId: (query) The unique id for the interest category. (optional)
        - parameter interestIds: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. (optional)
        - parameter interestMatch: (query) Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. \&quot;any\&quot; will match a member with any of the interest supplied, \&quot;all\&quot; will only match members with every interest supplied, and \&quot;none\&quot; will match members without any of the interest supplied. (optional)
        - parameter sortField: (query) Returns files sorted by the specified field. (optional)
        - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
        - parameter sinceLastCampaign: (query) Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. (optional)
        - parameter unsubscribedSince: (query) Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. (optional)

        - returns: RequestBuilder<ListMembers1>
        */
  open class func getListsIdMembersWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailType: String? = nil, status: Status_getListsIdMembers? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch_getListsIdMembers? = nil, sortField: SortField_getListsIdMembers? = nil, sortDir: SortDir_getListsIdMembers? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil) -> RequestBuilder<ListMembers1> {
    var path = "/lists/{list_id}/members"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "email_type": emailType,
      "status": status?.rawValue,
      "since_timestamp_opt": sinceTimestampOpt,
      "before_timestamp_opt": beforeTimestampOpt,
      "since_last_changed": sinceLastChanged,
      "before_last_changed": beforeLastChanged,
      "unique_email_id": uniqueEmailId,
      "vip_only": vipOnly,
      "interest_category_id": interestCategoryId,
      "interest_ids": interestIds,
      "interest_match": interestMatch?.rawValue,
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue,
      "since_last_campaign": sinceLastCampaign,
      "unsubscribed_since": unsubscribedSince
    ])

    let requestBuilder: RequestBuilder<ListMembers1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get member info

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersId(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void)) {
    getListsIdMembersIdWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get member info
        - GET /lists/{list_id}/members/{subscriber_hash}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
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
     "member_rating" : 6,
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
     "tags_count" : 1,
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
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<ListMembers2>
        */
  open class func getListsIdMembersIdWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ListMembers2> {
    var path = "/lists/{list_id}/members/{subscriber_hash}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<ListMembers2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   View recent activity 50

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter action: (query) A comma seperated list of actions to return. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersIdActivity(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil, completion: @escaping ((_ data: MemberActivityEvents?, _ error: Error?) -> Void)) {
    getListsIdMembersIdActivityWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields, action: action).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        View recent activity 50
        - GET /lists/{list_id}/members/{subscriber_hash}/activity

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "activity" : [ {
       "parent_campaign" : "parent_campaign",
       "action" : "action",
       "type" : "type",
       "title" : "title",
       "url" : "url",
       "campaign_id" : "campaign_id",
       "timestamp" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "parent_campaign" : "parent_campaign",
       "action" : "action",
       "type" : "type",
       "title" : "title",
       "url" : "url",
       "campaign_id" : "campaign_id",
       "timestamp" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "list_id" : "list_id",
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
     "total_items" : 0
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter action: (query) A comma seperated list of actions to return. (optional)

        - returns: RequestBuilder<MemberActivityEvents>
        */
  open class func getListsIdMembersIdActivityWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil) -> RequestBuilder<MemberActivityEvents> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/activity"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "action": action
    ])

    let requestBuilder: RequestBuilder<MemberActivityEvents>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   View recent activity

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter activityFilters: (query) A comma-separated list of activity filters that correspond to a set of activity types, e.g \&quot;?activity_filters&#x3D;open,bounce,click\&quot;. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersIdActivityFeed(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, activityFilters: [String]? = nil, completion: @escaping ((_ data: MemberActivityEvents1?, _ error: Error?) -> Void)) {
    getListsIdMembersIdActivityFeedWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields, count: count, offset: offset, activityFilters: activityFilters).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        View recent activity
        - GET /lists/{list_id}/members/{subscriber_hash}/activity-feed

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "activity" : [ { }, { } ],
     "list_id" : "list_id",
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
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter activityFilters: (query) A comma-separated list of activity filters that correspond to a set of activity types, e.g \&quot;?activity_filters&#x3D;open,bounce,click\&quot;. (optional)

        - returns: RequestBuilder<MemberActivityEvents1>
        */
  open class func getListsIdMembersIdActivityFeedWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, activityFilters: [String]? = nil) -> RequestBuilder<MemberActivityEvents1> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/activity-feed"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "activity_filters": activityFilters
    ])

    let requestBuilder: RequestBuilder<MemberActivityEvents1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List member events

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersIdEvents(listId: String, subscriberHash: String, count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CollectionOfEvents?, _ error: Error?) -> Void)) {
    getListsIdMembersIdEventsWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, count: count, offset: offset, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List member events
        - GET /lists/{list_id}/members/{subscriber_hash}/events

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
     "total_items" : 0,
     "events" : [ {
       "occurred_at" : "2000-01-23T04:56:07.000+00:00",
       "name" : "name",
       "properties" : {
         "key" : "properties"
       }
     }, {
       "occurred_at" : "2000-01-23T04:56:07.000+00:00",
       "name" : "name",
       "properties" : {
         "key" : "properties"
       }
     } ]
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<CollectionOfEvents>
        */
  open class func getListsIdMembersIdEventsWithRequestBuilder(listId: String, subscriberHash: String, count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CollectionOfEvents> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/events"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<CollectionOfEvents>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List member goal events

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersIdGoals(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CollectionOfMemberActivityEvents?, _ error: Error?) -> Void)) {
    getListsIdMembersIdGoalsWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List member goal events
        - GET /lists/{list_id}/members/{subscriber_hash}/goals

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "list_id" : "list_id",
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
     "total_items" : 6,
     "goals" : [ {
       "goal_id" : 0,
       "data" : "data",
       "last_visited_at" : "2000-01-23T04:56:07.000+00:00",
       "event" : "event"
     }, {
       "goal_id" : 0,
       "data" : "data",
       "last_visited_at" : "2000-01-23T04:56:07.000+00:00",
       "event" : "event"
     } ]
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<CollectionOfMemberActivityEvents>
        */
  open class func getListsIdMembersIdGoalsWithRequestBuilder(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CollectionOfMemberActivityEvents> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/goals"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<CollectionOfMemberActivityEvents>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getListsIdMembersIdNotes: String {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case noteId = "note_id"
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getListsIdMembersIdNotes: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   List recent member notes

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter sortField: (query) Returns notes sorted by the specified field. (optional)
   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersIdNotes(listId: String, subscriberHash: String, sortField: SortField_getListsIdMembersIdNotes? = nil, sortDir: SortDir_getListsIdMembersIdNotes? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CollectionOfNotes?, _ error: Error?) -> Void)) {
    getListsIdMembersIdNotesWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, sortField: sortField, sortDir: sortDir, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List recent member notes
        - GET /lists/{list_id}/members/{subscriber_hash}/notes

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "notes" : [ {
       "email_id" : "email_id",
       "note" : "note",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "list_id" : "list_id",
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
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : 0,
       "created_by" : "created_by"
     }, {
       "email_id" : "email_id",
       "note" : "note",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "list_id" : "list_id",
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
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : 0,
       "created_by" : "created_by"
     } ],
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "total_items" : 6
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter sortField: (query) Returns notes sorted by the specified field. (optional)
        - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<CollectionOfNotes>
        */
  open class func getListsIdMembersIdNotesWithRequestBuilder(listId: String, subscriberHash: String, sortField: SortField_getListsIdMembersIdNotes? = nil, sortDir: SortDir_getListsIdMembersIdNotes? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CollectionOfNotes> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/notes"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue,
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<CollectionOfNotes>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get member note

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter noteId: (path) The id for the note.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMembersIdNotesId(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: MemberNotes1?, _ error: Error?) -> Void)) {
    getListsIdMembersIdNotesIdWithRequestBuilder(listId: listId, subscriberHash: subscriberHash, noteId: noteId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get member note
        - GET /lists/{list_id}/members/{subscriber_hash}/notes/{note_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "note" : "note",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "list_id" : "list_id",
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
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : 0,
     "created_by" : "created_by"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter noteId: (path) The id for the note.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<MemberNotes1>
        */
  open class func getListsIdMembersIdNotesIdWithRequestBuilder(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<MemberNotes1> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let noteIdPreEscape = "\(noteId)"
    let noteIdPostEscape = noteIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{note_id}", with: noteIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<MemberNotes1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List merge fields

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter type: (query) The merge field type. (optional)
   - parameter _required: (query) Whether it&#x27;s a required merge field. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMergeFields(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, _required: Bool? = nil, completion: @escaping ((_ data: CollectionOfMergeFields?, _ error: Error?) -> Void)) {
    getListsIdMergeFieldsWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type, _required: _required).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List merge fields
        - GET /lists/{list_id}/merge-fields

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "merge_fields" : [ {
       "public" : true,
       "list_id" : "list_id",
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
       "display_order" : 6,
       "options" : {
         "size" : 5,
         "date_format" : "date_format",
         "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
         "default_country" : 1,
         "phone_format" : "phone_format"
       },
       "merge_id" : 0,
       "default_value" : "default_value",
       "tag" : "tag",
       "type" : "text",
       "required" : true,
       "help_text" : "help_text"
     }, {
       "public" : true,
       "list_id" : "list_id",
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
       "display_order" : 6,
       "options" : {
         "size" : 5,
         "date_format" : "date_format",
         "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
         "default_country" : 1,
         "phone_format" : "phone_format"
       },
       "merge_id" : 0,
       "default_value" : "default_value",
       "tag" : "tag",
       "type" : "text",
       "required" : true,
       "help_text" : "help_text"
     } ],
     "total_items" : 5
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter type: (query) The merge field type. (optional)
        - parameter _required: (query) Whether it&#x27;s a required merge field. (optional)

        - returns: RequestBuilder<CollectionOfMergeFields>
        */
  open class func getListsIdMergeFieldsWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, _required: Bool? = nil) -> RequestBuilder<CollectionOfMergeFields> {
    var path = "/lists/{list_id}/merge-fields"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "type": type,
      "required": _required
    ])

    let requestBuilder: RequestBuilder<CollectionOfMergeFields>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get merge field

   - parameter listId: (path) The unique ID for the list.
   - parameter mergeId: (path) The id for the merge field.
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdMergeFieldsId(listId: String, mergeId: String, excludeFields: [String]? = nil, fields: [String]? = nil, completion: @escaping ((_ data: MergeField1?, _ error: Error?) -> Void)) {
    getListsIdMergeFieldsIdWithRequestBuilder(listId: listId, mergeId: mergeId, excludeFields: excludeFields, fields: fields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get merge field
        - GET /lists/{list_id}/merge-fields/{merge_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "public" : true,
     "list_id" : "list_id",
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
     "display_order" : 6,
     "options" : {
       "size" : 5,
       "date_format" : "date_format",
       "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
       "default_country" : 1,
       "phone_format" : "phone_format"
     },
     "merge_id" : 0,
     "default_value" : "default_value",
     "tag" : "tag",
     "type" : "text",
     "required" : true,
     "help_text" : "help_text"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter mergeId: (path) The id for the merge field.
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<MergeField1>
        */
  open class func getListsIdMergeFieldsIdWithRequestBuilder(listId: String, mergeId: String, excludeFields: [String]? = nil, fields: [String]? = nil) -> RequestBuilder<MergeField1> {
    var path = "/lists/{list_id}/merge-fields/{merge_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let mergeIdPreEscape = "\(mergeId)"
    let mergeIdPostEscape = mergeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{merge_id}", with: mergeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "exclude_fields": excludeFields,
      "fields": fields
    ])

    let requestBuilder: RequestBuilder<MergeField1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get segment info

   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter includeCleaned: (query) Include cleaned members in response (optional)
   - parameter includeTransactional: (query) Include transactional members in response (optional)
   - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdSegmentsId(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, completion: @escaping ((_ data: List4?, _ error: Error?) -> Void)) {
    getListsIdSegmentsIdWithRequestBuilder(listId: listId, segmentId: segmentId, fields: fields, excludeFields: excludeFields, includeCleaned: includeCleaned, includeTransactional: includeTransactional, includeUnsubscribed: includeUnsubscribed).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get segment info
        - GET /lists/{list_id}/segments/{segment_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "list_id" : "list_id",
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
     "options" : {
       "match" : "any",
       "conditions" : [ { }, { } ]
     },
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : 0,
     "member_count" : 6,
     "type" : "saved"
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter segmentId: (path) The unique id for the segment.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter includeCleaned: (query) Include cleaned members in response (optional)
        - parameter includeTransactional: (query) Include transactional members in response (optional)
        - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)

        - returns: RequestBuilder<List4>
        */
  open class func getListsIdSegmentsIdWithRequestBuilder(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) -> RequestBuilder<List4> {
    var path = "/lists/{list_id}/segments/{segment_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "include_cleaned": includeCleaned,
      "include_transactional": includeTransactional,
      "include_unsubscribed": includeUnsubscribed
    ])

    let requestBuilder: RequestBuilder<List4>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List members in segment

   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter includeCleaned: (query) Include cleaned members in response (optional)
   - parameter includeTransactional: (query) Include transactional members in response (optional)
   - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdSegmentsIdMembers(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, completion: @escaping ((_ data: SegmentMembers?, _ error: Error?) -> Void)) {
    getListsIdSegmentsIdMembersWithRequestBuilder(listId: listId, segmentId: segmentId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, includeCleaned: includeCleaned, includeTransactional: includeTransactional, includeUnsubscribed: includeUnsubscribed).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List members in segment
        - GET /lists/{list_id}/segments/{segment_id}/members

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "_links" : [ null, null ],
     "members" : [ {
       "email_type" : "email_type",
       "list_id" : "list_id",
       "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
       "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
       "ip_signup" : "ip_signup",
       "member_rating" : 0,
       "language" : "language",
       "unique_email_id" : "unique_email_id",
       "email_address" : "email_address",
       "email_client" : "email_client",
       "stats" : {
         "avg_click_rate" : 6.027456183070403,
         "avg_open_rate" : 0.8008281904610115
       },
       "ip_opt" : "ip_opt",
       "location" : {
         "country_code" : "country_code",
         "dstoff" : 7,
         "timezone" : "timezone",
         "latitude" : 5.962133916683182,
         "gmtoff" : 2,
         "longitude" : 5.637376656633329
       },
       "id" : "id",
       "interests" : {
         "key" : true
       },
       "vip" : true,
       "status" : "subscribed",
       "last_changed" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "email_type" : "email_type",
       "list_id" : "list_id",
       "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
       "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
       "ip_signup" : "ip_signup",
       "member_rating" : 0,
       "language" : "language",
       "unique_email_id" : "unique_email_id",
       "email_address" : "email_address",
       "email_client" : "email_client",
       "stats" : {
         "avg_click_rate" : 6.027456183070403,
         "avg_open_rate" : 0.8008281904610115
       },
       "ip_opt" : "ip_opt",
       "location" : {
         "country_code" : "country_code",
         "dstoff" : 7,
         "timezone" : "timezone",
         "latitude" : 5.962133916683182,
         "gmtoff" : 2,
         "longitude" : 5.637376656633329
       },
       "id" : "id",
       "interests" : {
         "key" : true
       },
       "vip" : true,
       "status" : "subscribed",
       "last_changed" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "total_items" : 6
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter segmentId: (path) The unique id for the segment.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter includeCleaned: (query) Include cleaned members in response (optional)
        - parameter includeTransactional: (query) Include transactional members in response (optional)
        - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)

        - returns: RequestBuilder<SegmentMembers>
        */
  open class func getListsIdSegmentsIdMembersWithRequestBuilder(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) -> RequestBuilder<SegmentMembers> {
    var path = "/lists/{list_id}/segments/{segment_id}/members"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "include_cleaned": includeCleaned,
      "include_transactional": includeTransactional,
      "include_unsubscribed": includeUnsubscribed
    ])

    let requestBuilder: RequestBuilder<SegmentMembers>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List signup forms

   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdSignupForms(listId: String, completion: @escaping ((_ data: ListSignupForms?, _ error: Error?) -> Void)) {
    getListsIdSignupFormsWithRequestBuilder(listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List signup forms
        - GET /lists/{list_id}/signup-forms

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "signup_forms" : [ {
       "list_id" : "4ca5becb8d",
       "contents" : [ {
         "section" : "signup_message",
         "value" : "Signup message goes here"
       }, {
         "section" : "signup_message",
         "value" : "Signup message goes here"
       } ],
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
       "header" : {
         "image_height" : "200",
         "image_link" : "gotothisimage.com",
         "image_align" : "center",
         "image_border_color" : "#896d6d",
         "image_url" : "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
         "image_border_style" : "solid",
         "image_alt" : "This is an image",
         "text" : "Header Text goes here",
         "image_width" : "800",
         "image_target" : "_blank",
         "image_border_width" : "2"
       },
       "signup_form_url" : "signup_form_url",
       "styles" : [ {
         "options" : [ {
           "property" : "background-color",
           "value" : "#111111"
         }, {
           "property" : "background-color",
           "value" : "#111111"
         } ],
         "selector" : "page_background"
       }, {
         "options" : [ {
           "property" : "background-color",
           "value" : "#111111"
         }, {
           "property" : "background-color",
           "value" : "#111111"
         } ],
         "selector" : "page_background"
       } ]
     }, {
       "list_id" : "4ca5becb8d",
       "contents" : [ {
         "section" : "signup_message",
         "value" : "Signup message goes here"
       }, {
         "section" : "signup_message",
         "value" : "Signup message goes here"
       } ],
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
       "header" : {
         "image_height" : "200",
         "image_link" : "gotothisimage.com",
         "image_align" : "center",
         "image_border_color" : "#896d6d",
         "image_url" : "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
         "image_border_style" : "solid",
         "image_alt" : "This is an image",
         "text" : "Header Text goes here",
         "image_width" : "800",
         "image_target" : "_blank",
         "image_border_width" : "2"
       },
       "signup_form_url" : "signup_form_url",
       "styles" : [ {
         "options" : [ {
           "property" : "background-color",
           "value" : "#111111"
         }, {
           "property" : "background-color",
           "value" : "#111111"
         } ],
         "selector" : "page_background"
       }, {
         "options" : [ {
           "property" : "background-color",
           "value" : "#111111"
         }, {
           "property" : "background-color",
           "value" : "#111111"
         } ],
         "selector" : "page_background"
       } ]
     } ],
     "total_items" : 0
   }}]
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<ListSignupForms>
        */
  open class func getListsIdSignupFormsWithRequestBuilder(listId: String) -> RequestBuilder<ListSignupForms> {
    var path = "/lists/{list_id}/signup-forms"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ListSignupForms>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List webhooks

   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdWebhooks(listId: String, completion: @escaping ((_ data: ListWebhooks?, _ error: Error?) -> Void)) {
    getListsIdWebhooksWithRequestBuilder(listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List webhooks
        - GET /lists/{list_id}/webhooks

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "webhooks" : [ {
       "sources" : {
         "admin" : true,
         "api" : true,
         "user" : true
       },
       "list_id" : "4ca5becb8d",
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
       "id" : "5d9a5e3f7b",
       "url" : "http://yourdomain.com/webhook",
       "events" : {
         "subscribe" : true,
         "unsubscribe" : true,
         "profile" : true,
         "cleaned" : true,
         "campaign" : true,
         "upemail" : true
       }
     }, {
       "sources" : {
         "admin" : true,
         "api" : true,
         "user" : true
       },
       "list_id" : "4ca5becb8d",
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
       "id" : "5d9a5e3f7b",
       "url" : "http://yourdomain.com/webhook",
       "events" : {
         "subscribe" : true,
         "unsubscribe" : true,
         "profile" : true,
         "cleaned" : true,
         "campaign" : true,
         "upemail" : true
       }
     } ],
     "_links" : [ null, null ],
     "total_items" : 0
   }}]
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<ListWebhooks>
        */
  open class func getListsIdWebhooksWithRequestBuilder(listId: String) -> RequestBuilder<ListWebhooks> {
    var path = "/lists/{list_id}/webhooks"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ListWebhooks>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get webhook info

   - parameter listId: (path) The unique ID for the list.
   - parameter webhookId: (path) The webhook&#x27;s id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getListsIdWebhooksId(listId: String, webhookId: String, completion: @escaping ((_ data: ListWebhooks1?, _ error: Error?) -> Void)) {
    getListsIdWebhooksIdWithRequestBuilder(listId: listId, webhookId: webhookId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get webhook info
        - GET /lists/{list_id}/webhooks/{webhook_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "sources" : {
       "admin" : true,
       "api" : true,
       "user" : true
     },
     "list_id" : "4ca5becb8d",
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
     "id" : "5d9a5e3f7b",
     "url" : "http://yourdomain.com/webhook",
     "events" : {
       "subscribe" : true,
       "unsubscribe" : true,
       "profile" : true,
       "cleaned" : true,
       "campaign" : true,
       "upemail" : true
     }
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter webhookId: (path) The webhook&#x27;s id.

        - returns: RequestBuilder<ListWebhooks1>
        */
  open class func getListsIdWebhooksIdWithRequestBuilder(listId: String, webhookId: String) -> RequestBuilder<ListWebhooks1> {
    var path = "/lists/{list_id}/webhooks/{webhook_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let webhookIdPreEscape = "\(webhookId)"
    let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{webhook_id}", with: webhookIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ListWebhooks1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update lists

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsId(body: SubscriberList2, listId: String, completion: @escaping ((_ data: SubscriberList1?, _ error: Error?) -> Void)) {
    patchListsIdWithRequestBuilder(body: body, listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update lists
        - PATCH /lists/{list_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "notify_on_subscribe" : "false",
     "subscribe_url_long" : "subscribe_url_long",
     "marketing_permissions" : false,
     "permission_reminder" : "permission_reminder",
     "use_archive_bar" : false,
     "notify_on_unsubscribe" : "false",
     "visibility" : "pub",
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
     "campaign_defaults" : {
       "from_email" : "from_email",
       "subject" : "subject",
       "language" : "language",
       "from_name" : "from_name"
     },
     "web_id" : 0,
     "modules" : [ "modules", "modules" ],
     "email_type_option" : true,
     "beamer_address" : "beamer_address",
     "has_welcome" : false,
     "stats" : {
       "cleaned_count" : 2,
       "unsubscribe_count_since_send" : 9,
       "member_count_since_send" : 7,
       "click_rate" : 6.84685269835264,
       "cleaned_count_since_send" : 3,
       "total_contacts" : 5,
       "campaign_count" : 2,
       "avg_unsub_rate" : 1.2315135367772556,
       "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
       "unsubscribe_count" : 5,
       "target_sub_rate" : 1.0246457001441578,
       "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
       "avg_sub_rate" : 7.386281948385884,
       "member_count" : 1,
       "merge_field_count" : 4,
       "open_rate" : 1.4894159098541704,
       "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
     },
     "contact" : {
       "zip" : "zip",
       "country" : "country",
       "address2" : "address2",
       "city" : "city",
       "phone" : "phone",
       "address1" : "address1",
       "company" : "company",
       "state" : "state"
     },
     "name" : "name",
     "list_rating" : 6,
     "double_optin" : false,
     "id" : "id",
     "subscribe_url_short" : "subscribe_url_short"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<SubscriberList1>
        */
  open class func patchListsIdWithRequestBuilder(body: SubscriberList2, listId: String) -> RequestBuilder<SubscriberList1> {
    var path = "/lists/{list_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<SubscriberList1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update interest category

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdInterestCategoriesId(body: InterestCategory2, listId: String, interestCategoryId: String, completion: @escaping ((_ data: InterestCategory1?, _ error: Error?) -> Void)) {
    patchListsIdInterestCategoriesIdWithRequestBuilder(body: body, listId: listId, interestCategoryId: interestCategoryId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update interest category
        - PATCH /lists/{list_id}/interest-categories/{interest_category_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
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
     "display_order" : 0,
     "id" : "id",
     "title" : "title",
     "type" : "checkboxes"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter interestCategoryId: (path) The unique ID for the interest category.

        - returns: RequestBuilder<InterestCategory1>
        */
  open class func patchListsIdInterestCategoriesIdWithRequestBuilder(body: InterestCategory2, listId: String, interestCategoryId: String) -> RequestBuilder<InterestCategory1> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<InterestCategory1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update interest in category

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdInterestCategoriesIdInterestsId(body: Interest2, listId: String, interestCategoryId: String, interestId: String, completion: @escaping ((_ data: Interest1?, _ error: Error?) -> Void)) {
    patchListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(body: body, listId: listId, interestCategoryId: interestCategoryId, interestId: interestId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update interest in category
        - PATCH /lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "category_id" : "category_id",
     "list_id" : "list_id",
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
     "subscriber_count" : "subscriber_count",
     "name" : "name",
     "display_order" : 0,
     "id" : "id"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter interestCategoryId: (path) The unique ID for the interest category.
        - parameter interestId: (path) The specific interest or &#x27;group name&#x27;.

        - returns: RequestBuilder<Interest1>
        */
  open class func patchListsIdInterestCategoriesIdInterestsIdWithRequestBuilder(body: Interest2, listId: String, interestCategoryId: String, interestId: String) -> RequestBuilder<Interest1> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let interestIdPreEscape = "\(interestId)"
    let interestIdPostEscape = interestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_id}", with: interestIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Interest1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update list member

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdMembersId(body: AddListMembers3, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void)) {
    patchListsIdMembersIdWithRequestBuilder(body: body, listId: listId, subscriberHash: subscriberHash, skipMergeValidation: skipMergeValidation).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update list member
        - PATCH /lists/{list_id}/members/{subscriber_hash}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
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
     "member_rating" : 6,
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
     "tags_count" : 1,
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
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)

        - returns: RequestBuilder<ListMembers2>
        */
  open class func patchListsIdMembersIdWithRequestBuilder(body: AddListMembers3, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil) -> RequestBuilder<ListMembers2> {
    var path = "/lists/{list_id}/members/{subscriber_hash}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "skip_merge_validation": skipMergeValidation
    ])

    let requestBuilder: RequestBuilder<ListMembers2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update note

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter noteId: (path) The id for the note.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdMembersIdNotesId(body: MemberNotes2, listId: String, subscriberHash: String, noteId: String, completion: @escaping ((_ data: MemberNotes1?, _ error: Error?) -> Void)) {
    patchListsIdMembersIdNotesIdWithRequestBuilder(body: body, listId: listId, subscriberHash: subscriberHash, noteId: noteId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update note
        - PATCH /lists/{list_id}/members/{subscriber_hash}/notes/{note_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "note" : "note",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "list_id" : "list_id",
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
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : 0,
     "created_by" : "created_by"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter noteId: (path) The id for the note.

        - returns: RequestBuilder<MemberNotes1>
        */
  open class func patchListsIdMembersIdNotesIdWithRequestBuilder(body: MemberNotes2, listId: String, subscriberHash: String, noteId: String) -> RequestBuilder<MemberNotes1> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let noteIdPreEscape = "\(noteId)"
    let noteIdPostEscape = noteIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{note_id}", with: noteIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<MemberNotes1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update merge field

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter mergeId: (path) The id for the merge field.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdMergeFieldsId(body: MergeField2, listId: String, mergeId: String, completion: @escaping ((_ data: MergeField1?, _ error: Error?) -> Void)) {
    patchListsIdMergeFieldsIdWithRequestBuilder(body: body, listId: listId, mergeId: mergeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update merge field
        - PATCH /lists/{list_id}/merge-fields/{merge_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "public" : true,
     "list_id" : "list_id",
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
     "display_order" : 6,
     "options" : {
       "size" : 5,
       "date_format" : "date_format",
       "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
       "default_country" : 1,
       "phone_format" : "phone_format"
     },
     "merge_id" : 0,
     "default_value" : "default_value",
     "tag" : "tag",
     "type" : "text",
     "required" : true,
     "help_text" : "help_text"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter mergeId: (path) The id for the merge field.

        - returns: RequestBuilder<MergeField1>
        */
  open class func patchListsIdMergeFieldsIdWithRequestBuilder(body: MergeField2, listId: String, mergeId: String) -> RequestBuilder<MergeField1> {
    var path = "/lists/{list_id}/merge-fields/{merge_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let mergeIdPreEscape = "\(mergeId)"
    let mergeIdPostEscape = mergeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{merge_id}", with: mergeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<MergeField1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update segment

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdSegmentsId(body: List5, listId: String, segmentId: String, completion: @escaping ((_ data: List4?, _ error: Error?) -> Void)) {
    patchListsIdSegmentsIdWithRequestBuilder(body: body, listId: listId, segmentId: segmentId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update segment
        - PATCH /lists/{list_id}/segments/{segment_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "list_id" : "list_id",
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
     "options" : {
       "match" : "any",
       "conditions" : [ { }, { } ]
     },
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : 0,
     "member_count" : 6,
     "type" : "saved"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter segmentId: (path) The unique id for the segment.

        - returns: RequestBuilder<List4>
        */
  open class func patchListsIdSegmentsIdWithRequestBuilder(body: List5, listId: String, segmentId: String) -> RequestBuilder<List4> {
    var path = "/lists/{list_id}/segments/{segment_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<List4>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update webhook

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter webhookId: (path) The webhook&#x27;s id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchListsIdWebhooksId(body: AddWebhook1, listId: String, webhookId: String, completion: @escaping ((_ data: ListWebhooks1?, _ error: Error?) -> Void)) {
    patchListsIdWebhooksIdWithRequestBuilder(body: body, listId: listId, webhookId: webhookId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update webhook
        - PATCH /lists/{list_id}/webhooks/{webhook_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "sources" : {
       "admin" : true,
       "api" : true,
       "user" : true
     },
     "list_id" : "4ca5becb8d",
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
     "id" : "5d9a5e3f7b",
     "url" : "http://yourdomain.com/webhook",
     "events" : {
       "subscribe" : true,
       "unsubscribe" : true,
       "profile" : true,
       "cleaned" : true,
       "campaign" : true,
       "upemail" : true
     }
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter webhookId: (path) The webhook&#x27;s id.

        - returns: RequestBuilder<ListWebhooks1>
        */
  open class func patchListsIdWebhooksIdWithRequestBuilder(body: AddWebhook1, listId: String, webhookId: String) -> RequestBuilder<ListWebhooks1> {
    var path = "/lists/{list_id}/webhooks/{webhook_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let webhookIdPreEscape = "\(webhookId)"
    let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{webhook_id}", with: webhookIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ListWebhooks1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add event

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListMemberEvents(body: Events, listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postListMemberEventsWithRequestBuilder(body: body, listId: listId, subscriberHash: subscriberHash).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Add event
   - POST /lists/{list_id}/members/{subscriber_hash}/events

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address. This endpoint also accepts email addresses.

   - returns: RequestBuilder<Void>
   */
  open class func postListMemberEventsWithRequestBuilder(body: Events, listId: String, subscriberHash: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/events"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add or remove member tags

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListMemberTags(body: MemberTags, listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postListMemberTagsWithRequestBuilder(body: body, listId: listId, subscriberHash: subscriberHash).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Add or remove member tags
   - POST /lists/{list_id}/members/{subscriber_hash}/tags

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

   - returns: RequestBuilder<Void>
   */
  open class func postListMemberTagsWithRequestBuilder(body: MemberTags, listId: String, subscriberHash: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/tags"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add list

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postLists(body: SubscriberList, completion: @escaping ((_ data: SubscriberList1?, _ error: Error?) -> Void)) {
    postListsWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add list
        - POST /lists

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "notify_on_subscribe" : "false",
     "subscribe_url_long" : "subscribe_url_long",
     "marketing_permissions" : false,
     "permission_reminder" : "permission_reminder",
     "use_archive_bar" : false,
     "notify_on_unsubscribe" : "false",
     "visibility" : "pub",
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
     "campaign_defaults" : {
       "from_email" : "from_email",
       "subject" : "subject",
       "language" : "language",
       "from_name" : "from_name"
     },
     "web_id" : 0,
     "modules" : [ "modules", "modules" ],
     "email_type_option" : true,
     "beamer_address" : "beamer_address",
     "has_welcome" : false,
     "stats" : {
       "cleaned_count" : 2,
       "unsubscribe_count_since_send" : 9,
       "member_count_since_send" : 7,
       "click_rate" : 6.84685269835264,
       "cleaned_count_since_send" : 3,
       "total_contacts" : 5,
       "campaign_count" : 2,
       "avg_unsub_rate" : 1.2315135367772556,
       "last_sub_date" : "2000-01-23T04:56:07.000+00:00",
       "unsubscribe_count" : 5,
       "target_sub_rate" : 1.0246457001441578,
       "campaign_last_sent" : "2000-01-23T04:56:07.000+00:00",
       "avg_sub_rate" : 7.386281948385884,
       "member_count" : 1,
       "merge_field_count" : 4,
       "open_rate" : 1.4894159098541704,
       "last_unsub_date" : "2000-01-23T04:56:07.000+00:00"
     },
     "contact" : {
       "zip" : "zip",
       "country" : "country",
       "address2" : "address2",
       "city" : "city",
       "phone" : "phone",
       "address1" : "address1",
       "company" : "company",
       "state" : "state"
     },
     "name" : "name",
     "list_rating" : 6,
     "double_optin" : false,
     "id" : "id",
     "subscribe_url_short" : "subscribe_url_short"
   }}]
        - parameter body: (body)

        - returns: RequestBuilder<SubscriberList1>
        */
  open class func postListsWithRequestBuilder(body: SubscriberList) -> RequestBuilder<SubscriberList1> {
    let path = "/lists"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<SubscriberList1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Batch subscribe or unsubscribe

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
   - parameter skipDuplicateCheck: (query) If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsId(body: MembersToSubscribeUnsubscribeTofromAListInBatch, listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil, completion: @escaping ((_ data: BatchUpdateListMembers?, _ error: Error?) -> Void)) {
    postListsIdWithRequestBuilder(body: body, listId: listId, skipMergeValidation: skipMergeValidation, skipDuplicateCheck: skipDuplicateCheck).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Batch subscribe or unsubscribe
        - POST /lists/{list_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "_links" : [ null, null ],
     "new_members" : [ {
       "email_type" : "email_type",
       "list_id" : "list_id",
       "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
       "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
       "ip_signup" : "ip_signup",
       "member_rating" : 1,
       "language" : "language",
       "tags" : [ {
         "name" : "name",
         "id" : 2
       }, {
         "name" : "name",
         "id" : 2
       } ],
       "unique_email_id" : "unique_email_id",
       "email_address" : "email_address",
       "email_client" : "email_client",
       "stats" : {
         "avg_click_rate" : 6.027456183070403,
         "avg_open_rate" : 0.8008281904610115
       },
       "tags_count" : 3,
       "ip_opt" : "ip_opt",
       "location" : {
         "country_code" : "country_code",
         "dstoff" : 7,
         "timezone" : "timezone",
         "latitude" : 5.962133916683182,
         "gmtoff" : 2,
         "longitude" : 5.637376656633329
       },
       "id" : "id",
       "interests" : {
         "key" : true
       },
       "vip" : true,
       "status" : "subscribed",
       "last_changed" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "email_type" : "email_type",
       "list_id" : "list_id",
       "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
       "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
       "ip_signup" : "ip_signup",
       "member_rating" : 1,
       "language" : "language",
       "tags" : [ {
         "name" : "name",
         "id" : 2
       }, {
         "name" : "name",
         "id" : 2
       } ],
       "unique_email_id" : "unique_email_id",
       "email_address" : "email_address",
       "email_client" : "email_client",
       "stats" : {
         "avg_click_rate" : 6.027456183070403,
         "avg_open_rate" : 0.8008281904610115
       },
       "tags_count" : 3,
       "ip_opt" : "ip_opt",
       "location" : {
         "country_code" : "country_code",
         "dstoff" : 7,
         "timezone" : "timezone",
         "latitude" : 5.962133916683182,
         "gmtoff" : 2,
         "longitude" : 5.637376656633329
       },
       "id" : "id",
       "interests" : {
         "key" : true
       },
       "vip" : true,
       "status" : "subscribed",
       "last_changed" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "updated_members" : [ null, null ],
     "total_created" : 42,
     "error_count" : 42,
     "errors" : [ {
       "email_address" : "email_address",
       "error_code" : "ERROR_CONTACT_EXISTS",
       "error" : "error"
     }, {
       "email_address" : "email_address",
       "error_code" : "ERROR_CONTACT_EXISTS",
       "error" : "error"
     } ],
     "total_updated" : 42
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
        - parameter skipDuplicateCheck: (query) If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. (optional)

        - returns: RequestBuilder<BatchUpdateListMembers>
        */
  open class func postListsIdWithRequestBuilder(body: MembersToSubscribeUnsubscribeTofromAListInBatch, listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil) -> RequestBuilder<BatchUpdateListMembers> {
    var path = "/lists/{list_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "skip_merge_validation": skipMergeValidation,
      "skip_duplicate_check": skipDuplicateCheck
    ])

    let requestBuilder: RequestBuilder<BatchUpdateListMembers>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add interest category

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdInterestCategories(body: InterestCategory, listId: String, completion: @escaping ((_ data: InterestCategory1?, _ error: Error?) -> Void)) {
    postListsIdInterestCategoriesWithRequestBuilder(body: body, listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add interest category
        - POST /lists/{list_id}/interest-categories

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
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
     "display_order" : 0,
     "id" : "id",
     "title" : "title",
     "type" : "checkboxes"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<InterestCategory1>
        */
  open class func postListsIdInterestCategoriesWithRequestBuilder(body: InterestCategory, listId: String) -> RequestBuilder<InterestCategory1> {
    var path = "/lists/{list_id}/interest-categories"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<InterestCategory1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add interest in category

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter interestCategoryId: (path) The unique ID for the interest category.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdInterestCategoriesIdInterests(body: Interest, listId: String, interestCategoryId: String, completion: @escaping ((_ data: Interest1?, _ error: Error?) -> Void)) {
    postListsIdInterestCategoriesIdInterestsWithRequestBuilder(body: body, listId: listId, interestCategoryId: interestCategoryId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add interest in category
        - POST /lists/{list_id}/interest-categories/{interest_category_id}/interests

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "category_id" : "category_id",
     "list_id" : "list_id",
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
     "subscriber_count" : "subscriber_count",
     "name" : "name",
     "display_order" : 0,
     "id" : "id"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter interestCategoryId: (path) The unique ID for the interest category.

        - returns: RequestBuilder<Interest1>
        */
  open class func postListsIdInterestCategoriesIdInterestsWithRequestBuilder(body: Interest, listId: String, interestCategoryId: String) -> RequestBuilder<Interest1> {
    var path = "/lists/{list_id}/interest-categories/{interest_category_id}/interests"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let interestCategoryIdPreEscape = "\(interestCategoryId)"
    let interestCategoryIdPostEscape = interestCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{interest_category_id}", with: interestCategoryIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Interest1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add member to list

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdMembers(body: AddListMembers1, listId: String, skipMergeValidation: Bool? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void)) {
    postListsIdMembersWithRequestBuilder(body: body, listId: listId, skipMergeValidation: skipMergeValidation).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add member to list
        - POST /lists/{list_id}/members

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
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
     "member_rating" : 6,
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
     "tags_count" : 1,
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
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)

        - returns: RequestBuilder<ListMembers2>
        */
  open class func postListsIdMembersWithRequestBuilder(body: AddListMembers1, listId: String, skipMergeValidation: Bool? = nil) -> RequestBuilder<ListMembers2> {
    var path = "/lists/{list_id}/members"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "skip_merge_validation": skipMergeValidation
    ])

    let requestBuilder: RequestBuilder<ListMembers2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Delete list member

   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdMembersHashActionsDeletePermanent(listId: String, subscriberHash: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postListsIdMembersHashActionsDeletePermanentWithRequestBuilder(listId: listId, subscriberHash: subscriberHash).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete list member
   - POST /lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

   - returns: RequestBuilder<Void>
   */
  open class func postListsIdMembersHashActionsDeletePermanentWithRequestBuilder(listId: String, subscriberHash: String) -> RequestBuilder<Void> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Add member note

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdMembersIdNotes(body: MemberNotes, listId: String, subscriberHash: String, completion: @escaping ((_ data: MemberNotes1?, _ error: Error?) -> Void)) {
    postListsIdMembersIdNotesWithRequestBuilder(body: body, listId: listId, subscriberHash: subscriberHash).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add member note
        - POST /lists/{list_id}/members/{subscriber_hash}/notes

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_id" : "email_id",
     "note" : "note",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "list_id" : "list_id",
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
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : 0,
     "created_by" : "created_by"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

        - returns: RequestBuilder<MemberNotes1>
        */
  open class func postListsIdMembersIdNotesWithRequestBuilder(body: MemberNotes, listId: String, subscriberHash: String) -> RequestBuilder<MemberNotes1> {
    var path = "/lists/{list_id}/members/{subscriber_hash}/notes"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<MemberNotes1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add merge field

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdMergeFields(body: MergeField, listId: String, completion: @escaping ((_ data: MergeField1?, _ error: Error?) -> Void)) {
    postListsIdMergeFieldsWithRequestBuilder(body: body, listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add merge field
        - POST /lists/{list_id}/merge-fields

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "public" : true,
     "list_id" : "list_id",
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
     "display_order" : 6,
     "options" : {
       "size" : 5,
       "date_format" : "date_format",
       "choices" : [ "First Choice", "Second Choice", "Third Choice" ],
       "default_country" : 1,
       "phone_format" : "phone_format"
     },
     "merge_id" : 0,
     "default_value" : "default_value",
     "tag" : "tag",
     "type" : "text",
     "required" : true,
     "help_text" : "help_text"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<MergeField1>
        */
  open class func postListsIdMergeFieldsWithRequestBuilder(body: MergeField, listId: String) -> RequestBuilder<MergeField1> {
    var path = "/lists/{list_id}/merge-fields"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<MergeField1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add segment

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdSegments(body: List3, listId: String, completion: @escaping ((_ data: List4?, _ error: Error?) -> Void)) {
    postListsIdSegmentsWithRequestBuilder(body: body, listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add segment
        - POST /lists/{list_id}/segments

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "list_id" : "list_id",
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
     "options" : {
       "match" : "any",
       "conditions" : [ { }, { } ]
     },
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : 0,
     "member_count" : 6,
     "type" : "saved"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<List4>
        */
  open class func postListsIdSegmentsWithRequestBuilder(body: List3, listId: String) -> RequestBuilder<List4> {
    var path = "/lists/{list_id}/segments"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<List4>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Batch add or remove members

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdSegmentsId(body: MembersToAddremoveTofromAStaticSegment, listId: String, segmentId: String, completion: @escaping ((_ data: BatchAddremoveListMembersTofromStaticSegment?, _ error: Error?) -> Void)) {
    postListsIdSegmentsIdWithRequestBuilder(body: body, listId: listId, segmentId: segmentId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Batch add or remove members
        - POST /lists/{list_id}/segments/{segment_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "members_removed" : [ null, null ],
     "total_added" : 42,
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
     "members_added" : [ {
       "email_type" : "email_type",
       "list_id" : "list_id",
       "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
       "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
       "ip_signup" : "ip_signup",
       "member_rating" : 1,
       "language" : "language",
       "tags" : [ {
         "name" : "name",
         "id" : 2
       }, {
         "name" : "name",
         "id" : 2
       } ],
       "unique_email_id" : "unique_email_id",
       "email_address" : "email_address",
       "email_client" : "email_client",
       "stats" : {
         "avg_click_rate" : 6.027456183070403,
         "avg_open_rate" : 0.8008281904610115
       },
       "tags_count" : 3,
       "ip_opt" : "ip_opt",
       "location" : {
         "country_code" : "country_code",
         "dstoff" : 7,
         "timezone" : "timezone",
         "latitude" : 5.962133916683182,
         "gmtoff" : 2,
         "longitude" : 5.637376656633329
       },
       "id" : "id",
       "interests" : {
         "key" : true
       },
       "vip" : true,
       "status" : "subscribed",
       "last_changed" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "email_type" : "email_type",
       "list_id" : "list_id",
       "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
       "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
       "ip_signup" : "ip_signup",
       "member_rating" : 1,
       "language" : "language",
       "tags" : [ {
         "name" : "name",
         "id" : 2
       }, {
         "name" : "name",
         "id" : 2
       } ],
       "unique_email_id" : "unique_email_id",
       "email_address" : "email_address",
       "email_client" : "email_client",
       "stats" : {
         "avg_click_rate" : 6.027456183070403,
         "avg_open_rate" : 0.8008281904610115
       },
       "tags_count" : 3,
       "ip_opt" : "ip_opt",
       "location" : {
         "country_code" : "country_code",
         "dstoff" : 7,
         "timezone" : "timezone",
         "latitude" : 5.962133916683182,
         "gmtoff" : 2,
         "longitude" : 5.637376656633329
       },
       "id" : "id",
       "interests" : {
         "key" : true
       },
       "vip" : true,
       "status" : "subscribed",
       "last_changed" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "total_removed" : 42,
     "error_count" : 42,
     "errors" : [ {
       "email_addresses" : [ "email_addresses", "email_addresses" ],
       "error" : "error"
     }, {
       "email_addresses" : [ "email_addresses", "email_addresses" ],
       "error" : "error"
     } ]
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter segmentId: (path) The unique id for the segment.

        - returns: RequestBuilder<BatchAddremoveListMembersTofromStaticSegment>
        */
  open class func postListsIdSegmentsIdWithRequestBuilder(body: MembersToAddremoveTofromAStaticSegment, listId: String, segmentId: String) -> RequestBuilder<BatchAddremoveListMembersTofromStaticSegment> {
    var path = "/lists/{list_id}/segments/{segment_id}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<BatchAddremoveListMembersTofromStaticSegment>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add member to segment

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter segmentId: (path) The unique id for the segment.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdSegmentsIdMembers(body: SegmentIdMembersBody, listId: String, segmentId: String, completion: @escaping ((_ data: ListMembers?, _ error: Error?) -> Void)) {
    postListsIdSegmentsIdMembersWithRequestBuilder(body: body, listId: listId, segmentId: segmentId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add member to segment
        - POST /lists/{list_id}/segments/{segment_id}/members

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "email_type" : "email_type",
     "list_id" : "list_id",
     "timestamp_opt" : "2000-01-23T04:56:07.000+00:00",
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
     "timestamp_signup" : "2000-01-23T04:56:07.000+00:00",
     "ip_signup" : "ip_signup",
     "member_rating" : 0,
     "language" : "language",
     "unique_email_id" : "unique_email_id",
     "email_address" : "email_address",
     "email_client" : "email_client",
     "stats" : {
       "avg_click_rate" : 6.027456183070403,
       "avg_open_rate" : 0.8008281904610115
     },
     "ip_opt" : "ip_opt",
     "location" : {
       "country_code" : "country_code",
       "dstoff" : 7,
       "timezone" : "timezone",
       "latitude" : 5.962133916683182,
       "gmtoff" : 2,
       "longitude" : 5.637376656633329
     },
     "id" : "id",
     "interests" : {
       "key" : true
     },
     "vip" : true,
     "status" : "subscribed",
     "last_changed" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter segmentId: (path) The unique id for the segment.

        - returns: RequestBuilder<ListMembers>
        */
  open class func postListsIdSegmentsIdMembersWithRequestBuilder(body: SegmentIdMembersBody, listId: String, segmentId: String) -> RequestBuilder<ListMembers> {
    var path = "/lists/{list_id}/segments/{segment_id}/members"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let segmentIdPreEscape = "\(segmentId)"
    let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{segment_id}", with: segmentIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ListMembers>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Customize signup form

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdSignupForms(body: SignupForm, listId: String, completion: @escaping ((_ data: SignupForm1?, _ error: Error?) -> Void)) {
    postListsIdSignupFormsWithRequestBuilder(body: body, listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Customize signup form
        - POST /lists/{list_id}/signup-forms

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "4ca5becb8d",
     "contents" : [ {
       "section" : "signup_message",
       "value" : "Signup message goes here"
     }, {
       "section" : "signup_message",
       "value" : "Signup message goes here"
     } ],
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
     "header" : {
       "image_height" : "200",
       "image_link" : "gotothisimage.com",
       "image_align" : "center",
       "image_border_color" : "#896d6d",
       "image_url" : "http://gallery.mailchimp.com/332310cb9a420a9e7fea2858a/images/2491208c-9458-4834-a708-fef4ee736472.png",
       "image_border_style" : "solid",
       "image_alt" : "This is an image",
       "text" : "Header Text goes here",
       "image_width" : "800",
       "image_target" : "_blank",
       "image_border_width" : "2"
     },
     "signup_form_url" : "signup_form_url",
     "styles" : [ {
       "options" : [ {
         "property" : "background-color",
         "value" : "#111111"
       }, {
         "property" : "background-color",
         "value" : "#111111"
       } ],
       "selector" : "page_background"
     }, {
       "options" : [ {
         "property" : "background-color",
         "value" : "#111111"
       }, {
         "property" : "background-color",
         "value" : "#111111"
       } ],
       "selector" : "page_background"
     } ]
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<SignupForm1>
        */
  open class func postListsIdSignupFormsWithRequestBuilder(body: SignupForm, listId: String) -> RequestBuilder<SignupForm1> {
    var path = "/lists/{list_id}/signup-forms"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<SignupForm1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add webhook

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postListsIdWebhooks(body: AddWebhook, listId: String, completion: @escaping ((_ data: ListWebhooks1?, _ error: Error?) -> Void)) {
    postListsIdWebhooksWithRequestBuilder(body: body, listId: listId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add webhook
        - POST /lists/{list_id}/webhooks

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "sources" : {
       "admin" : true,
       "api" : true,
       "user" : true
     },
     "list_id" : "4ca5becb8d",
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
     "id" : "5d9a5e3f7b",
     "url" : "http://yourdomain.com/webhook",
     "events" : {
       "subscribe" : true,
       "unsubscribe" : true,
       "profile" : true,
       "cleaned" : true,
       "campaign" : true,
       "upemail" : true
     }
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.

        - returns: RequestBuilder<ListWebhooks1>
        */
  open class func postListsIdWebhooksWithRequestBuilder(body: AddWebhook, listId: String) -> RequestBuilder<ListWebhooks1> {
    var path = "/lists/{list_id}/webhooks"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ListWebhooks1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   List segments

   - parameter listId: (path) The unique ID for the list.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter type: (query) Limit results based on segment type. (optional)
   - parameter sinceCreatedAt: (query) Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeCreatedAt: (query) Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter includeCleaned: (query) Include cleaned members in response (optional)
   - parameter includeTransactional: (query) Include transactional members in response (optional)
   - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
   - parameter sinceUpdatedAt: (query) Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeUpdatedAt: (query) Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func previewASegment(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, sinceCreatedAt: String? = nil, beforeCreatedAt: String? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, sinceUpdatedAt: String? = nil, beforeUpdatedAt: String? = nil, completion: @escaping ((_ data: CollectionOfSegments?, _ error: Error?) -> Void)) {
    previewASegmentWithRequestBuilder(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type, sinceCreatedAt: sinceCreatedAt, beforeCreatedAt: beforeCreatedAt, includeCleaned: includeCleaned, includeTransactional: includeTransactional, includeUnsubscribed: includeUnsubscribed, sinceUpdatedAt: sinceUpdatedAt, beforeUpdatedAt: beforeUpdatedAt).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List segments
        - GET /lists/{list_id}/segments

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "list_id" : "list_id",
     "_links" : [ null, null ],
     "total_items" : 1,
     "segments" : [ {
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "list_id" : "list_id",
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
       "options" : {
         "match" : "any",
         "conditions" : [ { }, { } ]
       },
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : 0,
       "member_count" : 6,
       "type" : "saved"
     }, {
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "list_id" : "list_id",
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
       "options" : {
         "match" : "any",
         "conditions" : [ { }, { } ]
       },
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : 0,
       "member_count" : 6,
       "type" : "saved"
     } ]
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter type: (query) Limit results based on segment type. (optional)
        - parameter sinceCreatedAt: (query) Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeCreatedAt: (query) Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter includeCleaned: (query) Include cleaned members in response (optional)
        - parameter includeTransactional: (query) Include transactional members in response (optional)
        - parameter includeUnsubscribed: (query) Include unsubscribed members in response (optional)
        - parameter sinceUpdatedAt: (query) Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeUpdatedAt: (query) Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

        - returns: RequestBuilder<CollectionOfSegments>
        */
  open class func previewASegmentWithRequestBuilder(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, sinceCreatedAt: String? = nil, beforeCreatedAt: String? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, sinceUpdatedAt: String? = nil, beforeUpdatedAt: String? = nil) -> RequestBuilder<CollectionOfSegments> {
    var path = "/lists/{list_id}/segments"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "type": type,
      "since_created_at": sinceCreatedAt,
      "before_created_at": beforeCreatedAt,
      "include_cleaned": includeCleaned,
      "include_transactional": includeTransactional,
      "include_unsubscribed": includeUnsubscribed,
      "since_updated_at": sinceUpdatedAt,
      "before_updated_at": beforeUpdatedAt
    ])

    let requestBuilder: RequestBuilder<CollectionOfSegments>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Add or update list member

   - parameter body: (body)
   - parameter listId: (path) The unique ID for the list.
   - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
   - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func putListsIdMembersId(body: AddListMembers2, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, completion: @escaping ((_ data: ListMembers2?, _ error: Error?) -> Void)) {
    putListsIdMembersIdWithRequestBuilder(body: body, listId: listId, subscriberHash: subscriberHash, skipMergeValidation: skipMergeValidation).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add or update list member
        - PUT /lists/{list_id}/members/{subscriber_hash}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
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
     "member_rating" : 6,
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
     "tags_count" : 1,
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
   }}]
        - parameter body: (body)
        - parameter listId: (path) The unique ID for the list.
        - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
        - parameter skipMergeValidation: (query) If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. (optional)

        - returns: RequestBuilder<ListMembers2>
        */
  open class func putListsIdMembersIdWithRequestBuilder(body: AddListMembers2, listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil) -> RequestBuilder<ListMembers2> {
    var path = "/lists/{list_id}/members/{subscriber_hash}"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let subscriberHashPreEscape = "\(subscriberHash)"
    let subscriberHashPostEscape = subscriberHashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{subscriber_hash}", with: subscriberHashPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "skip_merge_validation": skipMergeValidation
    ])

    let requestBuilder: RequestBuilder<ListMembers2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PUT", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Search for tags on a list by name.

   - parameter listId: (path) The unique ID for the list.
   - parameter name: (query) The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func searchTagsByName(listId: String, name: String? = nil, completion: @escaping ((_ data: TagSearchResults?, _ error: Error?) -> Void)) {
    searchTagsByNameWithRequestBuilder(listId: listId, name: name).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Search for tags on a list by name.
        - GET /lists/{list_id}/tag-search

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "total_items" : 6,
     "tags" : [ {
       "name" : "name",
       "id" : 0
     }, {
       "name" : "name",
       "id" : 0
     } ]
   }}]
        - parameter listId: (path) The unique ID for the list.
        - parameter name: (query) The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. (optional)

        - returns: RequestBuilder<TagSearchResults>
        */
  open class func searchTagsByNameWithRequestBuilder(listId: String, name: String? = nil) -> RequestBuilder<TagSearchResults> {
    var path = "/lists/{list_id}/tag-search"
    let listIdPreEscape = "\(listId)"
    let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{list_id}", with: listIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "name": name
    ])

    let requestBuilder: RequestBuilder<TagSearchResults>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
