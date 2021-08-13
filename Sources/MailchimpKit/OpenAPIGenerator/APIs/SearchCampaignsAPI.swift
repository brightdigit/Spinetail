import Alamofire
import Foundation

open class SearchCampaignsAPI {
  /**
   Search campaigns

   - parameter query: (query) The search query used to filter results.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getSearchCampaigns(query: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Campaigns?, _ error: Error?) -> Void)) {
    getSearchCampaignsWithRequestBuilder(query: query, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Search campaigns
        - GET /search-campaigns

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
     "results" : [ {
       "snippet" : "snippet",
       "campaign" : {
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
       }
     }, {
       "snippet" : "snippet",
       "campaign" : {
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
       }
     } ],
     "total_items" : 0
   }}]
        - parameter query: (query) The search query used to filter results.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<Campaigns>
        */
  open class func getSearchCampaignsWithRequestBuilder(query: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Campaigns> {
    let path = "/search-campaigns"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "query": query
    ])

    let requestBuilder: RequestBuilder<Campaigns>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
