import Alamofire
import Foundation

open class CampaignsAPI {
  /**
   Delete campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteCampaignsId(campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteCampaignsIdWithRequestBuilder(campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete campaign
   - DELETE /campaigns/{campaign_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func deleteCampaignsIdWithRequestBuilder(campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete campaign feedback message

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter feedbackId: (path) The unique id for the feedback message.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteCampaignsIdFeedbackId(campaignId: String, feedbackId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteCampaignsIdFeedbackIdWithRequestBuilder(campaignId: campaignId, feedbackId: feedbackId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete campaign feedback message
   - DELETE /campaigns/{campaign_id}/feedback/{feedback_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter feedbackId: (path) The unique id for the feedback message.

   - returns: RequestBuilder<Void>
   */
  open class func deleteCampaignsIdFeedbackIdWithRequestBuilder(campaignId: String, feedbackId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/feedback/{feedback_id}"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let feedbackIdPreEscape = "\(feedbackId)"
    let feedbackIdPostEscape = feedbackIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{feedback_id}", with: feedbackIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter type
   */
  public enum ModelType_getCampaigns: String {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
  }

  /**
   * enum for parameter status
   */
  public enum Status_getCampaigns: String {
    case save
    case paused
    case schedule
    case sending
    case sent
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getCampaigns: String {
    case createTime = "create_time"
    case sendTime = "send_time"
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getCampaigns: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   List campaigns

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter type: (query) The campaign type. (optional)
   - parameter status: (query) The status of the campaign. (optional)
   - parameter beforeSendTime: (query) Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter sinceSendTime: (query) Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeCreateTime: (query) Restrict the response to campaigns created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter sinceCreateTime: (query) Restrict the response to campaigns created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter listId: (query) The unique id for the list. (optional)
   - parameter folderId: (query) The unique folder id. (optional)
   - parameter memberId: (query) Retrieve campaigns sent to a particular list member. Member ID is The MD5 hash of the lowercase version of the list member’s email address. (optional)
   - parameter sortField: (query) Returns files sorted by the specified field. (optional)
   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaigns(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: ModelType_getCampaigns? = nil, status: Status_getCampaigns? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, listId: String? = nil, folderId: String? = nil, memberId: String? = nil, sortField: SortField_getCampaigns? = nil, sortDir: SortDir_getCampaigns? = nil, completion: @escaping ((_ data: InlineResponse2005?, _ error: Error?) -> Void)) {
    getCampaignsWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type, status: status, beforeSendTime: beforeSendTime, sinceSendTime: sinceSendTime, beforeCreateTime: beforeCreateTime, sinceCreateTime: sinceCreateTime, listId: listId, folderId: folderId, memberId: memberId, sortField: sortField, sortDir: sortDir).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List campaigns
        - GET /campaigns

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "campaigns" : [ {
       "archive_url" : "archive_url",
       "resendable" : true,
       "settings" : {
         "auto_footer" : true,
         "subject_line" : "subject_line",
         "preview_text" : "preview_text",
         "use_conversation" : true,
         "authenticate" : true,
         "to_name" : "to_name",
         "timewarp" : true,
         "title" : "title",
         "from_name" : "from_name",
         "auto_tweet" : true,
         "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
         "fb_comments" : true,
         "drag_and_drop" : true,
         "reply_to" : "reply_to",
         "inline_css" : true,
         "template_id" : 5,
         "folder_id" : "folder_id"
       },
       "variate_settings" : {
         "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
         "combinations" : [ {
           "subject_line" : 7,
           "send_time" : 9,
           "reply_to" : 2,
           "recipients" : 7,
           "id" : "id",
           "from_name" : 3,
           "content_description" : 4
         }, {
           "subject_line" : 7,
           "send_time" : 9,
           "reply_to" : 2,
           "recipients" : 7,
           "id" : "id",
           "from_name" : 3,
           "content_description" : 4
         } ],
         "wait_time" : 5,
         "subject_lines" : [ "subject_lines", "subject_lines" ],
         "contents" : [ "contents", "contents" ],
         "test_size" : 2,
         "winning_combination_id" : "winning_combination_id",
         "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
         "winner_criteria" : "opens",
         "winning_campaign_id" : "winning_campaign_id",
         "from_names" : [ "from_names", "from_names" ]
       },
       "ab_split_opts" : {
         "pick_winner" : "opens",
         "wait_time" : 1,
         "wait_units" : "hours",
         "subject_b" : "subject_b",
         "subject_a" : "subject_a",
         "split_test" : "subject",
         "from_name_a" : "from_name_a",
         "from_name_b" : "from_name_b",
         "send_time_winner" : "send_time_winner",
         "reply_email_b" : "reply_email_b",
         "reply_email_a" : "reply_email_a",
         "send_time_a" : "2000-01-23T04:56:07.000+00:00",
         "send_time_b" : "2000-01-23T04:56:07.000+00:00",
         "split_size" : 34
       },
       "create_time" : "2000-01-23T04:56:07.000+00:00",
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
       "web_id" : 0,
       "type" : "regular",
       "tracking" : {
         "salesforce" : {
           "notes" : true,
           "campaign" : true
         },
         "goal_tracking" : true,
         "capsule" : {
           "notes" : true
         },
         "clicktale" : "clicktale",
         "text_clicks" : true,
         "ecomm360" : true,
         "opens" : true,
         "google_analytics" : "google_analytics",
         "html_clicks" : true
       },
       "needs_block_refresh" : true,
       "send_time" : "2000-01-23T04:56:07.000+00:00",
       "rss_opts" : {
         "schedule" : {
           "hour" : 2,
           "weekly_send_day" : "sunday",
           "daily_send" : {
             "sunday" : true,
             "saturday" : true,
             "tuesday" : true,
             "wednesday" : true,
             "thursday" : true,
             "friday" : true,
             "monday" : true
           },
           "monthly_send_date" : 3.1764016704468894
         },
         "last_sent" : "2000-01-23T04:56:07.000+00:00",
         "constrain_rss_img" : true,
         "feed_url" : "http://example.com/aeiou",
         "frequency" : "daily"
       },
       "parent_campaign_id" : "parent_campaign_id",
       "content_type" : "template",
       "social_card" : {
         "image_url" : "image_url",
         "description" : "description",
         "title" : "title"
       },
       "recipients" : {
         "segment_opts" : {
           "prebuilt_segment_id" : "subscribers-female",
           "match" : "any",
           "saved_segment_id" : 5,
           "conditions" : [ { }, { } ]
         },
         "list_id" : "list_id",
         "segment_text" : "segment_text",
         "recipient_count" : 1,
         "list_name" : "list_name",
         "list_is_active" : true
       },
       "emails_sent" : 6,
       "id" : "id",
       "delivery_status" : {
         "emails_sent" : 6,
         "can_cancel" : true,
         "emails_canceled" : 3,
         "enabled" : true,
         "status" : "delivering"
       },
       "long_archive_url" : "long_archive_url",
       "status" : "save",
       "report_summary" : {
         "subscriber_clicks" : 9,
         "click_rate" : 9.369310271410669,
         "ecommerce" : {
           "total_spent" : 8.762042012749001,
           "total_revenue" : 9.018348186070783,
           "total_orders" : 6
         },
         "opens" : 7,
         "clicks" : 5,
         "unique_opens" : 1,
         "open_rate" : 4.965218492984954
       }
     }, {
       "archive_url" : "archive_url",
       "resendable" : true,
       "settings" : {
         "auto_footer" : true,
         "subject_line" : "subject_line",
         "preview_text" : "preview_text",
         "use_conversation" : true,
         "authenticate" : true,
         "to_name" : "to_name",
         "timewarp" : true,
         "title" : "title",
         "from_name" : "from_name",
         "auto_tweet" : true,
         "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
         "fb_comments" : true,
         "drag_and_drop" : true,
         "reply_to" : "reply_to",
         "inline_css" : true,
         "template_id" : 5,
         "folder_id" : "folder_id"
       },
       "variate_settings" : {
         "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
         "combinations" : [ {
           "subject_line" : 7,
           "send_time" : 9,
           "reply_to" : 2,
           "recipients" : 7,
           "id" : "id",
           "from_name" : 3,
           "content_description" : 4
         }, {
           "subject_line" : 7,
           "send_time" : 9,
           "reply_to" : 2,
           "recipients" : 7,
           "id" : "id",
           "from_name" : 3,
           "content_description" : 4
         } ],
         "wait_time" : 5,
         "subject_lines" : [ "subject_lines", "subject_lines" ],
         "contents" : [ "contents", "contents" ],
         "test_size" : 2,
         "winning_combination_id" : "winning_combination_id",
         "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
         "winner_criteria" : "opens",
         "winning_campaign_id" : "winning_campaign_id",
         "from_names" : [ "from_names", "from_names" ]
       },
       "ab_split_opts" : {
         "pick_winner" : "opens",
         "wait_time" : 1,
         "wait_units" : "hours",
         "subject_b" : "subject_b",
         "subject_a" : "subject_a",
         "split_test" : "subject",
         "from_name_a" : "from_name_a",
         "from_name_b" : "from_name_b",
         "send_time_winner" : "send_time_winner",
         "reply_email_b" : "reply_email_b",
         "reply_email_a" : "reply_email_a",
         "send_time_a" : "2000-01-23T04:56:07.000+00:00",
         "send_time_b" : "2000-01-23T04:56:07.000+00:00",
         "split_size" : 34
       },
       "create_time" : "2000-01-23T04:56:07.000+00:00",
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
       "web_id" : 0,
       "type" : "regular",
       "tracking" : {
         "salesforce" : {
           "notes" : true,
           "campaign" : true
         },
         "goal_tracking" : true,
         "capsule" : {
           "notes" : true
         },
         "clicktale" : "clicktale",
         "text_clicks" : true,
         "ecomm360" : true,
         "opens" : true,
         "google_analytics" : "google_analytics",
         "html_clicks" : true
       },
       "needs_block_refresh" : true,
       "send_time" : "2000-01-23T04:56:07.000+00:00",
       "rss_opts" : {
         "schedule" : {
           "hour" : 2,
           "weekly_send_day" : "sunday",
           "daily_send" : {
             "sunday" : true,
             "saturday" : true,
             "tuesday" : true,
             "wednesday" : true,
             "thursday" : true,
             "friday" : true,
             "monday" : true
           },
           "monthly_send_date" : 3.1764016704468894
         },
         "last_sent" : "2000-01-23T04:56:07.000+00:00",
         "constrain_rss_img" : true,
         "feed_url" : "http://example.com/aeiou",
         "frequency" : "daily"
       },
       "parent_campaign_id" : "parent_campaign_id",
       "content_type" : "template",
       "social_card" : {
         "image_url" : "image_url",
         "description" : "description",
         "title" : "title"
       },
       "recipients" : {
         "segment_opts" : {
           "prebuilt_segment_id" : "subscribers-female",
           "match" : "any",
           "saved_segment_id" : 5,
           "conditions" : [ { }, { } ]
         },
         "list_id" : "list_id",
         "segment_text" : "segment_text",
         "recipient_count" : 1,
         "list_name" : "list_name",
         "list_is_active" : true
       },
       "emails_sent" : 6,
       "id" : "id",
       "delivery_status" : {
         "emails_sent" : 6,
         "can_cancel" : true,
         "emails_canceled" : 3,
         "enabled" : true,
         "status" : "delivering"
       },
       "long_archive_url" : "long_archive_url",
       "status" : "save",
       "report_summary" : {
         "subscriber_clicks" : 9,
         "click_rate" : 9.369310271410669,
         "ecommerce" : {
           "total_spent" : 8.762042012749001,
           "total_revenue" : 9.018348186070783,
           "total_orders" : 6
         },
         "opens" : 7,
         "clicks" : 5,
         "unique_opens" : 1,
         "open_rate" : 4.965218492984954
       }
     } ],
     "_links" : [ null, null ],
     "total_items" : 6
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter type: (query) The campaign type. (optional)
        - parameter status: (query) The status of the campaign. (optional)
        - parameter beforeSendTime: (query) Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter sinceSendTime: (query) Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeCreateTime: (query) Restrict the response to campaigns created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter sinceCreateTime: (query) Restrict the response to campaigns created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter listId: (query) The unique id for the list. (optional)
        - parameter folderId: (query) The unique folder id. (optional)
        - parameter memberId: (query) Retrieve campaigns sent to a particular list member. Member ID is The MD5 hash of the lowercase version of the list member’s email address. (optional)
        - parameter sortField: (query) Returns files sorted by the specified field. (optional)
        - parameter sortDir: (query) Determines the order direction for sorted results. (optional)

        - returns: RequestBuilder<InlineResponse2005>
        */
  open class func getCampaignsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: ModelType_getCampaigns? = nil, status: Status_getCampaigns? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, listId: String? = nil, folderId: String? = nil, memberId: String? = nil, sortField: SortField_getCampaigns? = nil, sortDir: SortDir_getCampaigns? = nil) -> RequestBuilder<InlineResponse2005> {
    let path = "/campaigns"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "type": type?.rawValue,
      "status": status?.rawValue,
      "before_send_time": beforeSendTime?.encodeToJSON(),
      "since_send_time": sinceSendTime?.encodeToJSON(),
      "before_create_time": beforeCreateTime?.encodeToJSON(),
      "since_create_time": sinceCreateTime?.encodeToJSON(),
      "list_id": listId,
      "folder_id": folderId,
      "member_id": memberId,
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue
    ])

    let requestBuilder: RequestBuilder<InlineResponse2005>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get campaign info

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignsId(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Campaign1?, _ error: Error?) -> Void)) {
    getCampaignsIdWithRequestBuilder(campaignId: campaignId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get campaign info
        - GET /campaigns/{campaign_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_url" : "archive_url",
     "resendable" : true,
     "settings" : {
       "auto_footer" : true,
       "subject_line" : "subject_line",
       "preview_text" : "preview_text",
       "use_conversation" : true,
       "authenticate" : true,
       "to_name" : "to_name",
       "timewarp" : true,
       "title" : "title",
       "from_name" : "from_name",
       "auto_tweet" : true,
       "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
       "fb_comments" : true,
       "drag_and_drop" : true,
       "reply_to" : "reply_to",
       "inline_css" : true,
       "template_id" : 5,
       "folder_id" : "folder_id"
     },
     "variate_settings" : {
       "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
       "combinations" : [ {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       }, {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       } ],
       "wait_time" : 5,
       "subject_lines" : [ "subject_lines", "subject_lines" ],
       "contents" : [ "contents", "contents" ],
       "test_size" : 2,
       "winning_combination_id" : "winning_combination_id",
       "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
       "winner_criteria" : "opens",
       "winning_campaign_id" : "winning_campaign_id",
       "from_names" : [ "from_names", "from_names" ]
     },
     "ab_split_opts" : {
       "pick_winner" : "opens",
       "wait_time" : 1,
       "wait_units" : "hours",
       "subject_b" : "subject_b",
       "subject_a" : "subject_a",
       "split_test" : "subject",
       "from_name_a" : "from_name_a",
       "from_name_b" : "from_name_b",
       "send_time_winner" : "send_time_winner",
       "reply_email_b" : "reply_email_b",
       "reply_email_a" : "reply_email_a",
       "send_time_a" : "2000-01-23T04:56:07.000+00:00",
       "send_time_b" : "2000-01-23T04:56:07.000+00:00",
       "split_size" : 34
     },
     "create_time" : "2000-01-23T04:56:07.000+00:00",
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
     "web_id" : 0,
     "type" : "regular",
     "tracking" : {
       "salesforce" : {
         "notes" : true,
         "campaign" : true
       },
       "goal_tracking" : true,
       "capsule" : {
         "notes" : true
       },
       "clicktale" : "clicktale",
       "text_clicks" : true,
       "ecomm360" : true,
       "opens" : true,
       "google_analytics" : "google_analytics",
       "html_clicks" : true
     },
     "needs_block_refresh" : true,
     "send_time" : "2000-01-23T04:56:07.000+00:00",
     "rss_opts" : {
       "schedule" : {
         "hour" : 2,
         "weekly_send_day" : "sunday",
         "daily_send" : {
           "sunday" : true,
           "saturday" : true,
           "tuesday" : true,
           "wednesday" : true,
           "thursday" : true,
           "friday" : true,
           "monday" : true
         },
         "monthly_send_date" : 3.1764016704468894
       },
       "last_sent" : "2000-01-23T04:56:07.000+00:00",
       "constrain_rss_img" : true,
       "feed_url" : "http://example.com/aeiou",
       "frequency" : "daily"
     },
     "parent_campaign_id" : "parent_campaign_id",
     "content_type" : "template",
     "social_card" : {
       "image_url" : "image_url",
       "description" : "description",
       "title" : "title"
     },
     "recipients" : {
       "segment_opts" : {
         "prebuilt_segment_id" : "subscribers-female",
         "match" : "any",
         "saved_segment_id" : 5,
         "conditions" : [ { }, { } ]
       },
       "list_id" : "list_id",
       "segment_text" : "segment_text",
       "recipient_count" : 1,
       "list_name" : "list_name",
       "list_is_active" : true
     },
     "emails_sent" : 6,
     "id" : "id",
     "delivery_status" : {
       "emails_sent" : 6,
       "can_cancel" : true,
       "emails_canceled" : 3,
       "enabled" : true,
       "status" : "delivering"
     },
     "long_archive_url" : "long_archive_url",
     "status" : "save",
     "report_summary" : {
       "subscriber_clicks" : 9,
       "click_rate" : 9.369310271410669,
       "ecommerce" : {
         "total_spent" : 8.762042012749001,
         "total_revenue" : 9.018348186070783,
         "total_orders" : 6
       },
       "opens" : 7,
       "clicks" : 5,
       "unique_opens" : 1,
       "open_rate" : 4.965218492984954
     }
   }}]
        - parameter campaignId: (path) The unique id for the campaign.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<Campaign1>
        */
  open class func getCampaignsIdWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Campaign1> {
    var path = "/campaigns/{campaign_id}"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<Campaign1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get campaign content

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignsIdContent(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignContent?, _ error: Error?) -> Void)) {
    getCampaignsIdContentWithRequestBuilder(campaignId: campaignId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get campaign content
        - GET /campaigns/{campaign_id}/content

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_html" : "<!DOCTYPE html><html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><title>My Subject</title><style type=text/css>body{background-color:#d0e4fe}</style><body leftmargin=0 marginwidth=0 topmargin=0 marginheight=0 offset=0>",
     "plain_text" : "plain_text",
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
     "variate_contents" : [ {
       "content_label" : "Green header",
       "plain_text" : "plain_text",
       "html" : "<!DOCTYPE html><html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><title>*|MC:SUBJECT|*</title><style type=text/css>body{background-color:#d0e4fe}</style><body leftmargin=0 marginwidth=0 topmargin=0 marginheight=0 offset=0>"
     }, {
       "content_label" : "Green header",
       "plain_text" : "plain_text",
       "html" : "<!DOCTYPE html><html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><title>*|MC:SUBJECT|*</title><style type=text/css>body{background-color:#d0e4fe}</style><body leftmargin=0 marginwidth=0 topmargin=0 marginheight=0 offset=0>"
     } ],
     "html" : "html"
   }}]
        - parameter campaignId: (path) The unique id for the campaign.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<CampaignContent>
        */
  open class func getCampaignsIdContentWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignContent> {
    var path = "/campaigns/{campaign_id}/content"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<CampaignContent>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List campaign feedback

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignsIdFeedback(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignReports?, _ error: Error?) -> Void)) {
    getCampaignsIdFeedbackWithRequestBuilder(campaignId: campaignId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List campaign feedback
        - GET /campaigns/{campaign_id}/feedback

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "feedback" : [ {
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
       "parent_id" : 6,
       "feedback_id" : 0,
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "is_complete" : true,
       "source" : "api",
       "message" : "message",
       "created_by" : "created_by",
       "block_id" : 1,
       "campaign_id" : "campaign_id"
     }, {
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
       "parent_id" : 6,
       "feedback_id" : 0,
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "is_complete" : true,
       "source" : "api",
       "message" : "message",
       "created_by" : "created_by",
       "block_id" : 1,
       "campaign_id" : "campaign_id"
     } ],
     "_links" : [ null, null ],
     "total_items" : 5,
     "campaign_id" : "campaign_id"
   }}]
        - parameter campaignId: (path) The unique id for the campaign.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<CampaignReports>
        */
  open class func getCampaignsIdFeedbackWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignReports> {
    var path = "/campaigns/{campaign_id}/feedback"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<CampaignReports>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get campaign feedback message

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter feedbackId: (path) The unique id for the feedback message.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignsIdFeedbackId(campaignId: String, feedbackId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignFeedback1?, _ error: Error?) -> Void)) {
    getCampaignsIdFeedbackIdWithRequestBuilder(campaignId: campaignId, feedbackId: feedbackId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get campaign feedback message
        - GET /campaigns/{campaign_id}/feedback/{feedback_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
     "parent_id" : 6,
     "feedback_id" : 0,
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "is_complete" : true,
     "source" : "api",
     "message" : "message",
     "created_by" : "created_by",
     "block_id" : 1,
     "campaign_id" : "campaign_id"
   }}]
        - parameter campaignId: (path) The unique id for the campaign.
        - parameter feedbackId: (path) The unique id for the feedback message.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<CampaignFeedback1>
        */
  open class func getCampaignsIdFeedbackIdWithRequestBuilder(campaignId: String, feedbackId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignFeedback1> {
    var path = "/campaigns/{campaign_id}/feedback/{feedback_id}"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let feedbackIdPreEscape = "\(feedbackId)"
    let feedbackIdPostEscape = feedbackIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{feedback_id}", with: feedbackIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<CampaignFeedback1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get campaign send checklist

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getCampaignsIdSendChecklist(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: SendChecklist?, _ error: Error?) -> Void)) {
    getCampaignsIdSendChecklistWithRequestBuilder(campaignId: campaignId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get campaign send checklist
        - GET /campaigns/{campaign_id}/send-checklist

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "is_ready" : true,
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
     "items" : [ {
       "heading" : "heading",
       "details" : "details",
       "id" : 0,
       "type" : "success"
     }, {
       "heading" : "heading",
       "details" : "details",
       "id" : 0,
       "type" : "success"
     } ]
   }}]
        - parameter campaignId: (path) The unique id for the campaign.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<SendChecklist>
        */
  open class func getCampaignsIdSendChecklistWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<SendChecklist> {
    var path = "/campaigns/{campaign_id}/send-checklist"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<SendChecklist>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update campaign settings

   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchCampaignsId(body: Campaign2, campaignId: String, completion: @escaping ((_ data: Campaign1?, _ error: Error?) -> Void)) {
    patchCampaignsIdWithRequestBuilder(body: body, campaignId: campaignId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update campaign settings
        - PATCH /campaigns/{campaign_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_url" : "archive_url",
     "resendable" : true,
     "settings" : {
       "auto_footer" : true,
       "subject_line" : "subject_line",
       "preview_text" : "preview_text",
       "use_conversation" : true,
       "authenticate" : true,
       "to_name" : "to_name",
       "timewarp" : true,
       "title" : "title",
       "from_name" : "from_name",
       "auto_tweet" : true,
       "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
       "fb_comments" : true,
       "drag_and_drop" : true,
       "reply_to" : "reply_to",
       "inline_css" : true,
       "template_id" : 5,
       "folder_id" : "folder_id"
     },
     "variate_settings" : {
       "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
       "combinations" : [ {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       }, {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       } ],
       "wait_time" : 5,
       "subject_lines" : [ "subject_lines", "subject_lines" ],
       "contents" : [ "contents", "contents" ],
       "test_size" : 2,
       "winning_combination_id" : "winning_combination_id",
       "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
       "winner_criteria" : "opens",
       "winning_campaign_id" : "winning_campaign_id",
       "from_names" : [ "from_names", "from_names" ]
     },
     "ab_split_opts" : {
       "pick_winner" : "opens",
       "wait_time" : 1,
       "wait_units" : "hours",
       "subject_b" : "subject_b",
       "subject_a" : "subject_a",
       "split_test" : "subject",
       "from_name_a" : "from_name_a",
       "from_name_b" : "from_name_b",
       "send_time_winner" : "send_time_winner",
       "reply_email_b" : "reply_email_b",
       "reply_email_a" : "reply_email_a",
       "send_time_a" : "2000-01-23T04:56:07.000+00:00",
       "send_time_b" : "2000-01-23T04:56:07.000+00:00",
       "split_size" : 34
     },
     "create_time" : "2000-01-23T04:56:07.000+00:00",
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
     "web_id" : 0,
     "type" : "regular",
     "tracking" : {
       "salesforce" : {
         "notes" : true,
         "campaign" : true
       },
       "goal_tracking" : true,
       "capsule" : {
         "notes" : true
       },
       "clicktale" : "clicktale",
       "text_clicks" : true,
       "ecomm360" : true,
       "opens" : true,
       "google_analytics" : "google_analytics",
       "html_clicks" : true
     },
     "needs_block_refresh" : true,
     "send_time" : "2000-01-23T04:56:07.000+00:00",
     "rss_opts" : {
       "schedule" : {
         "hour" : 2,
         "weekly_send_day" : "sunday",
         "daily_send" : {
           "sunday" : true,
           "saturday" : true,
           "tuesday" : true,
           "wednesday" : true,
           "thursday" : true,
           "friday" : true,
           "monday" : true
         },
         "monthly_send_date" : 3.1764016704468894
       },
       "last_sent" : "2000-01-23T04:56:07.000+00:00",
       "constrain_rss_img" : true,
       "feed_url" : "http://example.com/aeiou",
       "frequency" : "daily"
     },
     "parent_campaign_id" : "parent_campaign_id",
     "content_type" : "template",
     "social_card" : {
       "image_url" : "image_url",
       "description" : "description",
       "title" : "title"
     },
     "recipients" : {
       "segment_opts" : {
         "prebuilt_segment_id" : "subscribers-female",
         "match" : "any",
         "saved_segment_id" : 5,
         "conditions" : [ { }, { } ]
       },
       "list_id" : "list_id",
       "segment_text" : "segment_text",
       "recipient_count" : 1,
       "list_name" : "list_name",
       "list_is_active" : true
     },
     "emails_sent" : 6,
     "id" : "id",
     "delivery_status" : {
       "emails_sent" : 6,
       "can_cancel" : true,
       "emails_canceled" : 3,
       "enabled" : true,
       "status" : "delivering"
     },
     "long_archive_url" : "long_archive_url",
     "status" : "save",
     "report_summary" : {
       "subscriber_clicks" : 9,
       "click_rate" : 9.369310271410669,
       "ecommerce" : {
         "total_spent" : 8.762042012749001,
         "total_revenue" : 9.018348186070783,
         "total_orders" : 6
       },
       "opens" : 7,
       "clicks" : 5,
       "unique_opens" : 1,
       "open_rate" : 4.965218492984954
     }
   }}]
        - parameter body: (body)
        - parameter campaignId: (path) The unique id for the campaign.

        - returns: RequestBuilder<Campaign1>
        */
  open class func patchCampaignsIdWithRequestBuilder(body: Campaign2, campaignId: String) -> RequestBuilder<Campaign1> {
    var path = "/campaigns/{campaign_id}"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Campaign1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update campaign feedback message

   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter feedbackId: (path) The unique id for the feedback message.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchCampaignsIdFeedbackId(body: CampaignFeedback2, campaignId: String, feedbackId: String, completion: @escaping ((_ data: CampaignFeedback1?, _ error: Error?) -> Void)) {
    patchCampaignsIdFeedbackIdWithRequestBuilder(body: body, campaignId: campaignId, feedbackId: feedbackId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update campaign feedback message
        - PATCH /campaigns/{campaign_id}/feedback/{feedback_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
     "parent_id" : 6,
     "feedback_id" : 0,
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "is_complete" : true,
     "source" : "api",
     "message" : "message",
     "created_by" : "created_by",
     "block_id" : 1,
     "campaign_id" : "campaign_id"
   }}]
        - parameter body: (body)
        - parameter campaignId: (path) The unique id for the campaign.
        - parameter feedbackId: (path) The unique id for the feedback message.

        - returns: RequestBuilder<CampaignFeedback1>
        */
  open class func patchCampaignsIdFeedbackIdWithRequestBuilder(body: CampaignFeedback2, campaignId: String, feedbackId: String) -> RequestBuilder<CampaignFeedback1> {
    var path = "/campaigns/{campaign_id}/feedback/{feedback_id}"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let feedbackIdPreEscape = "\(feedbackId)"
    let feedbackIdPostEscape = feedbackIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{feedback_id}", with: feedbackIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<CampaignFeedback1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add campaign

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaigns(body: Campaign, completion: @escaping ((_ data: Campaign1?, _ error: Error?) -> Void)) {
    postCampaignsWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add campaign
        - POST /campaigns

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_url" : "archive_url",
     "resendable" : true,
     "settings" : {
       "auto_footer" : true,
       "subject_line" : "subject_line",
       "preview_text" : "preview_text",
       "use_conversation" : true,
       "authenticate" : true,
       "to_name" : "to_name",
       "timewarp" : true,
       "title" : "title",
       "from_name" : "from_name",
       "auto_tweet" : true,
       "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
       "fb_comments" : true,
       "drag_and_drop" : true,
       "reply_to" : "reply_to",
       "inline_css" : true,
       "template_id" : 5,
       "folder_id" : "folder_id"
     },
     "variate_settings" : {
       "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
       "combinations" : [ {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       }, {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       } ],
       "wait_time" : 5,
       "subject_lines" : [ "subject_lines", "subject_lines" ],
       "contents" : [ "contents", "contents" ],
       "test_size" : 2,
       "winning_combination_id" : "winning_combination_id",
       "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
       "winner_criteria" : "opens",
       "winning_campaign_id" : "winning_campaign_id",
       "from_names" : [ "from_names", "from_names" ]
     },
     "ab_split_opts" : {
       "pick_winner" : "opens",
       "wait_time" : 1,
       "wait_units" : "hours",
       "subject_b" : "subject_b",
       "subject_a" : "subject_a",
       "split_test" : "subject",
       "from_name_a" : "from_name_a",
       "from_name_b" : "from_name_b",
       "send_time_winner" : "send_time_winner",
       "reply_email_b" : "reply_email_b",
       "reply_email_a" : "reply_email_a",
       "send_time_a" : "2000-01-23T04:56:07.000+00:00",
       "send_time_b" : "2000-01-23T04:56:07.000+00:00",
       "split_size" : 34
     },
     "create_time" : "2000-01-23T04:56:07.000+00:00",
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
     "web_id" : 0,
     "type" : "regular",
     "tracking" : {
       "salesforce" : {
         "notes" : true,
         "campaign" : true
       },
       "goal_tracking" : true,
       "capsule" : {
         "notes" : true
       },
       "clicktale" : "clicktale",
       "text_clicks" : true,
       "ecomm360" : true,
       "opens" : true,
       "google_analytics" : "google_analytics",
       "html_clicks" : true
     },
     "needs_block_refresh" : true,
     "send_time" : "2000-01-23T04:56:07.000+00:00",
     "rss_opts" : {
       "schedule" : {
         "hour" : 2,
         "weekly_send_day" : "sunday",
         "daily_send" : {
           "sunday" : true,
           "saturday" : true,
           "tuesday" : true,
           "wednesday" : true,
           "thursday" : true,
           "friday" : true,
           "monday" : true
         },
         "monthly_send_date" : 3.1764016704468894
       },
       "last_sent" : "2000-01-23T04:56:07.000+00:00",
       "constrain_rss_img" : true,
       "feed_url" : "http://example.com/aeiou",
       "frequency" : "daily"
     },
     "parent_campaign_id" : "parent_campaign_id",
     "content_type" : "template",
     "social_card" : {
       "image_url" : "image_url",
       "description" : "description",
       "title" : "title"
     },
     "recipients" : {
       "segment_opts" : {
         "prebuilt_segment_id" : "subscribers-female",
         "match" : "any",
         "saved_segment_id" : 5,
         "conditions" : [ { }, { } ]
       },
       "list_id" : "list_id",
       "segment_text" : "segment_text",
       "recipient_count" : 1,
       "list_name" : "list_name",
       "list_is_active" : true
     },
     "emails_sent" : 6,
     "id" : "id",
     "delivery_status" : {
       "emails_sent" : 6,
       "can_cancel" : true,
       "emails_canceled" : 3,
       "enabled" : true,
       "status" : "delivering"
     },
     "long_archive_url" : "long_archive_url",
     "status" : "save",
     "report_summary" : {
       "subscriber_clicks" : 9,
       "click_rate" : 9.369310271410669,
       "ecommerce" : {
         "total_spent" : 8.762042012749001,
         "total_revenue" : 9.018348186070783,
         "total_orders" : 6
       },
       "opens" : 7,
       "clicks" : 5,
       "unique_opens" : 1,
       "open_rate" : 4.965218492984954
     }
   }}]
        - parameter body: (body)

        - returns: RequestBuilder<Campaign1>
        */
  open class func postCampaignsWithRequestBuilder(body: Campaign) -> RequestBuilder<Campaign1> {
    let path = "/campaigns"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Campaign1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Cancel campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsCancelSend(campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsCancelSendWithRequestBuilder(campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Cancel campaign
   - POST /campaigns/{campaign_id}/actions/cancel-send

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsCancelSendWithRequestBuilder(campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/cancel-send"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Resend campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsCreateResend(campaignId: String, completion: @escaping ((_ data: Campaign3?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsCreateResendWithRequestBuilder(campaignId: campaignId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Resend campaign
        - POST /campaigns/{campaign_id}/actions/create-resend

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_url" : "archive_url",
     "resendable" : true,
     "settings" : {
       "auto_footer" : true,
       "subject_line" : "subject_line",
       "preview_text" : "preview_text",
       "use_conversation" : true,
       "authenticate" : true,
       "to_name" : "to_name",
       "timewarp" : true,
       "title" : "title",
       "from_name" : "from_name",
       "auto_tweet" : true,
       "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
       "fb_comments" : true,
       "drag_and_drop" : true,
       "reply_to" : "reply_to",
       "inline_css" : true,
       "template_id" : 5,
       "folder_id" : "folder_id"
     },
     "variate_settings" : {
       "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
       "combinations" : [ {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       }, {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       } ],
       "wait_time" : 5,
       "subject_lines" : [ "subject_lines", "subject_lines" ],
       "contents" : [ "contents", "contents" ],
       "test_size" : 2,
       "winning_combination_id" : "winning_combination_id",
       "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
       "winner_criteria" : "opens",
       "winning_campaign_id" : "winning_campaign_id",
       "from_names" : [ "from_names", "from_names" ]
     },
     "ab_split_opts" : {
       "pick_winner" : "opens",
       "wait_time" : 1,
       "wait_units" : "hours",
       "subject_b" : "subject_b",
       "subject_a" : "subject_a",
       "split_test" : "subject",
       "from_name_a" : "from_name_a",
       "from_name_b" : "from_name_b",
       "send_time_winner" : "send_time_winner",
       "reply_email_b" : "reply_email_b",
       "reply_email_a" : "reply_email_a",
       "send_time_a" : "2000-01-23T04:56:07.000+00:00",
       "send_time_b" : "2000-01-23T04:56:07.000+00:00",
       "split_size" : 34
     },
     "create_time" : "2000-01-23T04:56:07.000+00:00",
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
     "web_id" : 0,
     "type" : "regular",
     "tracking" : {
       "salesforce" : {
         "notes" : true,
         "campaign" : true
       },
       "goal_tracking" : true,
       "capsule" : {
         "notes" : true
       },
       "clicktale" : "clicktale",
       "text_clicks" : true,
       "ecomm360" : true,
       "opens" : true,
       "google_analytics" : "google_analytics",
       "html_clicks" : true
     },
     "needs_block_refresh" : true,
     "send_time" : "2000-01-23T04:56:07.000+00:00",
     "rss_opts" : {
       "schedule" : {
         "hour" : 16,
         "weekly_send_day" : "sunday",
         "daily_send" : {
           "sunday" : true,
           "saturday" : true,
           "tuesday" : true,
           "wednesday" : true,
           "thursday" : true,
           "friday" : true,
           "monday" : true
         },
         "monthly_send_date" : 28.834477156190985
       },
       "last_sent" : "2000-01-23T04:56:07.000+00:00",
       "constrain_rss_img" : true,
       "feed_url" : "http://example.com/aeiou",
       "frequency" : "daily"
     },
     "parent_campaign_id" : "parent_campaign_id",
     "content_type" : "content_type",
     "social_card" : {
       "image_url" : "image_url",
       "description" : "description",
       "title" : "title"
     },
     "recipients" : {
       "segment_opts" : {
         "prebuilt_segment_id" : "subscribers-female",
         "match" : "any",
         "saved_segment_id" : 5,
         "conditions" : [ { }, { } ]
       },
       "list_id" : "list_id",
       "segment_text" : "segment_text",
       "recipient_count" : 1,
       "list_name" : "list_name"
     },
     "emails_sent" : 6,
     "id" : "id",
     "delivery_status" : {
       "emails_sent" : 6,
       "can_cancel" : true,
       "emails_canceled" : 3,
       "enabled" : true,
       "status" : "delivering"
     },
     "long_archive_url" : "long_archive_url",
     "status" : "save",
     "report_summary" : {
       "subscriber_clicks" : 1,
       "click_rate" : 1.0246457001441578,
       "ecommerce" : {
         "total_spent" : 8.762042012749001,
         "total_revenue" : 9.018348186070783,
         "total_orders" : 6
       },
       "opens" : 3,
       "clicks" : 7,
       "unique_opens" : 2,
       "open_rate" : 4.145608029883936
     }
   }}]
        - parameter campaignId: (path) The unique id for the campaign.

        - returns: RequestBuilder<Campaign3>
        */
  open class func postCampaignsIdActionsCreateResendWithRequestBuilder(campaignId: String) -> RequestBuilder<Campaign3> {
    var path = "/campaigns/{campaign_id}/actions/create-resend"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Campaign3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Pause rss campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsPause(campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsPauseWithRequestBuilder(campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Pause rss campaign
   - POST /campaigns/{campaign_id}/actions/pause

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsPauseWithRequestBuilder(campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/pause"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Replicate campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsReplicate(campaignId: String, completion: @escaping ((_ data: Campaign3?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsReplicateWithRequestBuilder(campaignId: campaignId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Replicate campaign
        - POST /campaigns/{campaign_id}/actions/replicate

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_url" : "archive_url",
     "resendable" : true,
     "settings" : {
       "auto_footer" : true,
       "subject_line" : "subject_line",
       "preview_text" : "preview_text",
       "use_conversation" : true,
       "authenticate" : true,
       "to_name" : "to_name",
       "timewarp" : true,
       "title" : "title",
       "from_name" : "from_name",
       "auto_tweet" : true,
       "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
       "fb_comments" : true,
       "drag_and_drop" : true,
       "reply_to" : "reply_to",
       "inline_css" : true,
       "template_id" : 5,
       "folder_id" : "folder_id"
     },
     "variate_settings" : {
       "send_times" : [ "2000-01-23T04:56:07.000+00:00", "2000-01-23T04:56:07.000+00:00" ],
       "combinations" : [ {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       }, {
         "subject_line" : 7,
         "send_time" : 9,
         "reply_to" : 2,
         "recipients" : 7,
         "id" : "id",
         "from_name" : 3,
         "content_description" : 4
       } ],
       "wait_time" : 5,
       "subject_lines" : [ "subject_lines", "subject_lines" ],
       "contents" : [ "contents", "contents" ],
       "test_size" : 2,
       "winning_combination_id" : "winning_combination_id",
       "reply_to_addresses" : [ "reply_to_addresses", "reply_to_addresses" ],
       "winner_criteria" : "opens",
       "winning_campaign_id" : "winning_campaign_id",
       "from_names" : [ "from_names", "from_names" ]
     },
     "ab_split_opts" : {
       "pick_winner" : "opens",
       "wait_time" : 1,
       "wait_units" : "hours",
       "subject_b" : "subject_b",
       "subject_a" : "subject_a",
       "split_test" : "subject",
       "from_name_a" : "from_name_a",
       "from_name_b" : "from_name_b",
       "send_time_winner" : "send_time_winner",
       "reply_email_b" : "reply_email_b",
       "reply_email_a" : "reply_email_a",
       "send_time_a" : "2000-01-23T04:56:07.000+00:00",
       "send_time_b" : "2000-01-23T04:56:07.000+00:00",
       "split_size" : 34
     },
     "create_time" : "2000-01-23T04:56:07.000+00:00",
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
     "web_id" : 0,
     "type" : "regular",
     "tracking" : {
       "salesforce" : {
         "notes" : true,
         "campaign" : true
       },
       "goal_tracking" : true,
       "capsule" : {
         "notes" : true
       },
       "clicktale" : "clicktale",
       "text_clicks" : true,
       "ecomm360" : true,
       "opens" : true,
       "google_analytics" : "google_analytics",
       "html_clicks" : true
     },
     "needs_block_refresh" : true,
     "send_time" : "2000-01-23T04:56:07.000+00:00",
     "rss_opts" : {
       "schedule" : {
         "hour" : 16,
         "weekly_send_day" : "sunday",
         "daily_send" : {
           "sunday" : true,
           "saturday" : true,
           "tuesday" : true,
           "wednesday" : true,
           "thursday" : true,
           "friday" : true,
           "monday" : true
         },
         "monthly_send_date" : 28.834477156190985
       },
       "last_sent" : "2000-01-23T04:56:07.000+00:00",
       "constrain_rss_img" : true,
       "feed_url" : "http://example.com/aeiou",
       "frequency" : "daily"
     },
     "parent_campaign_id" : "parent_campaign_id",
     "content_type" : "content_type",
     "social_card" : {
       "image_url" : "image_url",
       "description" : "description",
       "title" : "title"
     },
     "recipients" : {
       "segment_opts" : {
         "prebuilt_segment_id" : "subscribers-female",
         "match" : "any",
         "saved_segment_id" : 5,
         "conditions" : [ { }, { } ]
       },
       "list_id" : "list_id",
       "segment_text" : "segment_text",
       "recipient_count" : 1,
       "list_name" : "list_name"
     },
     "emails_sent" : 6,
     "id" : "id",
     "delivery_status" : {
       "emails_sent" : 6,
       "can_cancel" : true,
       "emails_canceled" : 3,
       "enabled" : true,
       "status" : "delivering"
     },
     "long_archive_url" : "long_archive_url",
     "status" : "save",
     "report_summary" : {
       "subscriber_clicks" : 1,
       "click_rate" : 1.0246457001441578,
       "ecommerce" : {
         "total_spent" : 8.762042012749001,
         "total_revenue" : 9.018348186070783,
         "total_orders" : 6
       },
       "opens" : 3,
       "clicks" : 7,
       "unique_opens" : 2,
       "open_rate" : 4.145608029883936
     }
   }}]
        - parameter campaignId: (path) The unique id for the campaign.

        - returns: RequestBuilder<Campaign3>
        */
  open class func postCampaignsIdActionsReplicateWithRequestBuilder(campaignId: String) -> RequestBuilder<Campaign3> {
    var path = "/campaigns/{campaign_id}/actions/replicate"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Campaign3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Resume rss campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsResume(campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsResumeWithRequestBuilder(campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Resume rss campaign
   - POST /campaigns/{campaign_id}/actions/resume

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsResumeWithRequestBuilder(campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/resume"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Schedule campaign

   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsSchedule(body: ActionsScheduleBody, campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsScheduleWithRequestBuilder(body: body, campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Schedule campaign
   - POST /campaigns/{campaign_id}/actions/schedule

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsScheduleWithRequestBuilder(body: ActionsScheduleBody, campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/schedule"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Send campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsSend(campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsSendWithRequestBuilder(campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Send campaign
   - POST /campaigns/{campaign_id}/actions/send

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsSendWithRequestBuilder(campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/send"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Send test email

   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsTest(body: ActionsTestBody, campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsTestWithRequestBuilder(body: body, campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Send test email
   - POST /campaigns/{campaign_id}/actions/test

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsTestWithRequestBuilder(body: ActionsTestBody, campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/test"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Unschedule campaign

   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdActionsUnschedule(campaignId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postCampaignsIdActionsUnscheduleWithRequestBuilder(campaignId: campaignId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Unschedule campaign
   - POST /campaigns/{campaign_id}/actions/unschedule

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter campaignId: (path) The unique id for the campaign.

   - returns: RequestBuilder<Void>
   */
  open class func postCampaignsIdActionsUnscheduleWithRequestBuilder(campaignId: String) -> RequestBuilder<Void> {
    var path = "/campaigns/{campaign_id}/actions/unschedule"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Add campaign feedback

   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postCampaignsIdFeedback(body: CampaignFeedback, campaignId: String, completion: @escaping ((_ data: CampaignFeedback1?, _ error: Error?) -> Void)) {
    postCampaignsIdFeedbackWithRequestBuilder(body: body, campaignId: campaignId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add campaign feedback
        - POST /campaigns/{campaign_id}/feedback

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
     "parent_id" : 6,
     "feedback_id" : 0,
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "is_complete" : true,
     "source" : "api",
     "message" : "message",
     "created_by" : "created_by",
     "block_id" : 1,
     "campaign_id" : "campaign_id"
   }}]
        - parameter body: (body)
        - parameter campaignId: (path) The unique id for the campaign.

        - returns: RequestBuilder<CampaignFeedback1>
        */
  open class func postCampaignsIdFeedbackWithRequestBuilder(body: CampaignFeedback, campaignId: String) -> RequestBuilder<CampaignFeedback1> {
    var path = "/campaigns/{campaign_id}/feedback"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<CampaignFeedback1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Set campaign content

   - parameter body: (body)
   - parameter campaignId: (path) The unique id for the campaign.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func putCampaignsIdContent(body: CampaignContent1, campaignId: String, completion: @escaping ((_ data: CampaignContent?, _ error: Error?) -> Void)) {
    putCampaignsIdContentWithRequestBuilder(body: body, campaignId: campaignId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Set campaign content
        - PUT /campaigns/{campaign_id}/content

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "archive_html" : "<!DOCTYPE html><html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><title>My Subject</title><style type=text/css>body{background-color:#d0e4fe}</style><body leftmargin=0 marginwidth=0 topmargin=0 marginheight=0 offset=0>",
     "plain_text" : "plain_text",
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
     "variate_contents" : [ {
       "content_label" : "Green header",
       "plain_text" : "plain_text",
       "html" : "<!DOCTYPE html><html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><title>*|MC:SUBJECT|*</title><style type=text/css>body{background-color:#d0e4fe}</style><body leftmargin=0 marginwidth=0 topmargin=0 marginheight=0 offset=0>"
     }, {
       "content_label" : "Green header",
       "plain_text" : "plain_text",
       "html" : "<!DOCTYPE html><html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><title>*|MC:SUBJECT|*</title><style type=text/css>body{background-color:#d0e4fe}</style><body leftmargin=0 marginwidth=0 topmargin=0 marginheight=0 offset=0>"
     } ],
     "html" : "html"
   }}]
        - parameter body: (body)
        - parameter campaignId: (path) The unique id for the campaign.

        - returns: RequestBuilder<CampaignContent>
        */
  open class func putCampaignsIdContentWithRequestBuilder(body: CampaignContent1, campaignId: String) -> RequestBuilder<CampaignContent> {
    var path = "/campaigns/{campaign_id}/content"
    let campaignIdPreEscape = "\(campaignId)"
    let campaignIdPostEscape = campaignIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{campaign_id}", with: campaignIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<CampaignContent>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PUT", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
