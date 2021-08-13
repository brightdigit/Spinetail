////
//// ReportingAPI.swift
////
//// Generated by swagger-codegen
//// https://github.com/swagger-api/swagger-codegen
////
//
// import Foundation
// import Alamofire
//
//
// open class ReportingAPI {
//    /**
//     * enum for parameter sortField
//     */
//    public enum SortField_getReportingFacebookAds: String {
//        case createdAt = "created_at"
//        case updatedAt = "updated_at"
//        case endTime = "end_time"
//    }
//
//    /**
//     * enum for parameter sortDir
//     */
//    public enum SortDir_getReportingFacebookAds: String {
//        case asc = "ASC"
//        case desc = "DESC"
//    }
//
//    /**
//     List facebook ads reports
//
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
//     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
//     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
//     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
//     - parameter completion: completion handler to receive the data and the error objects
//     */
//    open class func getReportingFacebookAds(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getReportingFacebookAds? = nil, sortDir: SortDir_getReportingFacebookAds? = nil, completion: @escaping ((_ data: InlineResponse20010?,_ error: Error?) -> Void)) {
//        getReportingFacebookAdsWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, sortField: sortField, sortDir: sortDir).execute { (response, error) -> Void in
//            completion(response?.body, error)
//        }
//    }
//
//
//    /**
//     List facebook ads reports
//     - GET /reporting/facebook-ads
//
//     - BASIC:
//       - type: http
//       - name: basicAuth
//     - examples: [{contentType=application/json, example={
//  "facebook_ads" : [ "", "" ],
//  "_links" : [ {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  }, {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  } ],
//  "total_items" : 0
// }}]
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
//     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
//     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
//     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
//
//     - returns: RequestBuilder<InlineResponse20010>
//     */
//    open class func getReportingFacebookAdsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getReportingFacebookAds? = nil, sortDir: SortDir_getReportingFacebookAds? = nil) -> RequestBuilder<InlineResponse20010> {
//        let path = "/reporting/facebook-ads"
//        let URLString = SwaggerClientAPI.basePath + path
//        let parameters: [String:Any]? = nil
//        var url = URLComponents(string: URLString)
//        url?.queryItems = APIHelper.mapValuesToQueryItems([
//                        "fields": fields,
//                        "exclude_fields": excludeFields,
//                        "count": count?.encodeToJSON(),
//                        "offset": offset?.encodeToJSON(),
//                        "sort_field": sortField?.rawValue,
//                        "sort_dir": sortDir?.rawValue
//        ])
//
//
//        let requestBuilder: RequestBuilder<InlineResponse20010>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
//
//        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
//    }
//    /**
//     Get facebook ad report
//
//     - parameter outreachId: (path) The outreach id.
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter completion: completion handler to receive the data and the error objects
//     */
//    open class func getReportingFacebookAdsId(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: InlineResponse20011?,_ error: Error?) -> Void)) {
//        getReportingFacebookAdsIdWithRequestBuilder(outreachId: outreachId, fields: fields, excludeFields: excludeFields).execute { (response, error) -> Void in
//            completion(response?.body, error)
//        }
//    }
//
//
//    /**
//     Get facebook ad report
//     - GET /reporting/facebook-ads/{outreach_id}
//
//     - BASIC:
//       - type: http
//       - name: basicAuth
//     - examples: [{contentType=application/json, example={
//  "_links" : [ {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  }, {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  } ],
//  "canceled_at" : "2000-01-23T04:56:07.000+00:00",
//  "channel" : {
//    "fb_placement_feed" : true,
//    "fb_placement_audience" : false,
//    "ig_placement_feed" : false
//  },
//  "type" : "regular",
//  "show_report" : true,
//  "email_source_name" : "email_source_name",
//  "paused_at" : "2000-01-23T04:56:07.000+00:00",
//  "updated_at" : "2000-01-23T04:56:07.000+00:00",
//  "published_time" : "2000-01-23T04:56:07.000+00:00",
//  "id" : "id",
//  "budget" : {
//    "duration" : 86400,
//    "total_amount" : 500.0,
//    "currency_code" : "USD"
//  },
//  "has_segment" : true,
//  "audience" : {
//    "include_source_in_target" : true,
//    "email_source" : {
//      "name" : "name",
//      "segment_type" : "segment_type",
//      "list_name" : "list_name",
//      "type" : "type",
//      "is_segment" : true
//    },
//    "targeting_specs" : {
//      "max_age" : 1,
//      "gender" : 0,
//      "locations" : {
//        "regions" : [ "regions", "regions" ],
//        "cities" : [ "cities", "cities" ],
//        "countries" : [ "countries", "countries" ],
//        "zips" : [ "zips", "zips" ]
//      },
//      "min_age" : 6,
//      "interests" : [ {
//        "name" : "name"
//      }, {
//        "name" : "name"
//      } ]
//    },
//    "source_type" : "facebook",
//    "type" : "Custom Audience",
//    "lookalike_country_code" : "lookalike_country_code"
//  },
//  "thumbnail" : "thumbnail",
//  "create_time" : "2000-01-23T04:56:07.000+00:00",
//  "end_time" : "2000-01-23T04:56:07.000+00:00",
//  "web_id" : 1,
//  "start_time" : "2000-01-23T04:56:07.000+00:00",
//  "recipients" : {
//    "segment_opts" : {
//      "prebuilt_segment_id" : "subscribers-female",
//      "match" : "any",
//      "saved_segment_id" : 5,
//      "conditions" : [ { }, { } ]
//    },
//    "list_id" : "list_id",
//    "segment_text" : "segment_text",
//    "recipient_count" : 5,
//    "list_name" : "list_name",
//    "list_is_active" : true
//  },
//  "name" : "name",
//  "audience_activity" : {
//    "revenue" : [ {
//      "date" : "date",
//      "revenue" : 1.4658129805029452
//    }, {
//      "date" : "date",
//      "revenue" : 1.4658129805029452
//    } ],
//    "clicks" : [ {
//      "date" : "date",
//      "clicks" : 0
//    }, {
//      "date" : "date",
//      "clicks" : 0
//    } ],
//    "impressions" : [ {
//      "date" : "date",
//      "impressions" : 6
//    }, {
//      "date" : "date",
//      "impressions" : 6
//    } ]
//  },
//  "needs_attention" : true,
//  "report_summary" : {
//    "total_products_sold" : 4,
//    "comments" : 1,
//    "reach" : 5,
//    "click_rate" : 7.061401241503109,
//    "extended_at" : {
//      "datetime" : "datetime",
//      "timezone" : "timezone"
//    },
//    "return_on_investment" : 7.457744773683766,
//    "impressions" : 5,
//    "total_orders" : 7,
//    "first_time_buyers" : 3,
//    "shares" : 6,
//    "average_order_amount" : {
//      "amount" : 1.2315135367772556,
//      "currency_code" : "currency_code"
//    },
//    "unique_clicks" : 9,
//    "has_extended_ad_duration" : true,
//    "ecommerce" : {
//      "total_revenue" : 2.027123023002322,
//      "currency_code" : "currency_code"
//    },
//    "clicks" : 2,
//    "likes" : 1
//  },
//  "status" : "save",
//  "was_canceled_by_facebook" : true
// }}]
//     - parameter outreachId: (path) The outreach id.
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//
//     - returns: RequestBuilder<InlineResponse20011>
//     */
//    open class func getReportingFacebookAdsIdWithRequestBuilder(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<InlineResponse20011> {
//        var path = "/reporting/facebook-ads/{outreach_id}"
//        let outreachIdPreEscape = "\(outreachId)"
//        let outreachIdPostEscape = outreachIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
//        path = path.replacingOccurrences(of: "{outreach_id}", with: outreachIdPostEscape, options: .literal, range: nil)
//        let URLString = SwaggerClientAPI.basePath + path
//        let parameters: [String:Any]? = nil
//        var url = URLComponents(string: URLString)
//        url?.queryItems = APIHelper.mapValuesToQueryItems([
//                        "fields": fields,
//                        "exclude_fields": excludeFields
//        ])
//
//
//        let requestBuilder: RequestBuilder<InlineResponse20011>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
//
//        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
//    }
//    /**
//     * enum for parameter sortField
//     */
//    public enum SortField_getReportingFacebookAdsIdEcommerceProductActivity: String {
//        case title = "title"
//        case totalRevenue = "total_revenue"
//        case totalPurchased = "total_purchased"
//    }
//
//    /**
//     List facebook ecommerce report
//
//     - parameter outreachId: (path) The outreach id.
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
//     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
//     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
//     - parameter completion: completion handler to receive the data and the error objects
//     */
//    open class func getReportingFacebookAdsIdEcommerceProductActivity(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getReportingFacebookAdsIdEcommerceProductActivity? = nil, completion: @escaping ((_ data: InlineResponse2007?,_ error: Error?) -> Void)) {
//        getReportingFacebookAdsIdEcommerceProductActivityWithRequestBuilder(outreachId: outreachId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, sortField: sortField).execute { (response, error) -> Void in
//            completion(response?.body, error)
//        }
//    }
//
//
//    /**
//     List facebook ecommerce report
//     - GET /reporting/facebook-ads/{outreach_id}/ecommerce-product-activity
//
//     - BASIC:
//       - type: http
//       - name: basicAuth
//     - examples: [{contentType=application/json, example={
//  "_links" : [ {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  }, {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  } ],
//  "total_items" : 5,
//  "products" : [ {
//    "total_purchased" : 6.027456183070403,
//    "image_url" : "image_url",
//    "total_revenue" : 0.8008281904610115,
//    "recommendation_purchased" : 5,
//    "recommendation_total" : 1,
//    "title" : "title",
//    "sku" : "sku",
//    "currency_code" : "currency_code"
//  }, {
//    "total_purchased" : 6.027456183070403,
//    "image_url" : "image_url",
//    "total_revenue" : 0.8008281904610115,
//    "recommendation_purchased" : 5,
//    "recommendation_total" : 1,
//    "title" : "title",
//    "sku" : "sku",
//    "currency_code" : "currency_code"
//  } ]
// }}]
//     - parameter outreachId: (path) The outreach id.
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
//     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
//     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
//
//     - returns: RequestBuilder<InlineResponse2007>
//     */
//    open class func getReportingFacebookAdsIdEcommerceProductActivityWithRequestBuilder(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getReportingFacebookAdsIdEcommerceProductActivity? = nil) -> RequestBuilder<InlineResponse2007> {
//        var path = "/reporting/facebook-ads/{outreach_id}/ecommerce-product-activity"
//        let outreachIdPreEscape = "\(outreachId)"
//        let outreachIdPostEscape = outreachIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
//        path = path.replacingOccurrences(of: "{outreach_id}", with: outreachIdPostEscape, options: .literal, range: nil)
//        let URLString = SwaggerClientAPI.basePath + path
//        let parameters: [String:Any]? = nil
//        var url = URLComponents(string: URLString)
//        url?.queryItems = APIHelper.mapValuesToQueryItems([
//                        "fields": fields,
//                        "exclude_fields": excludeFields,
//                        "count": count?.encodeToJSON(),
//                        "offset": offset?.encodeToJSON(),
//                        "sort_field": sortField?.rawValue
//        ])
//
//
//        let requestBuilder: RequestBuilder<InlineResponse2007>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
//
//        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
//    }
//    /**
//     List landing pages reports
//
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
//     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
//     - parameter completion: completion handler to receive the data and the error objects
//     */
//    open class func getReportingLandingPages(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: InlineResponse20012?,_ error: Error?) -> Void)) {
//        getReportingLandingPagesWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { (response, error) -> Void in
//            completion(response?.body, error)
//        }
//    }
//
//
//    /**
//     List landing pages reports
//     - GET /reporting/landing-pages
//
//     - BASIC:
//       - type: http
//       - name: basicAuth
//     - examples: [{contentType=application/json, example={
//  "_links" : [ null, null ],
//  "landing_pages" : [ {
//    "unique_visits" : 6,
//    "subscribes" : 1,
//    "list_id" : "list_id",
//    "_links" : [ {
//      "schema" : "schema",
//      "targetSchema" : "targetSchema",
//      "method" : "GET",
//      "rel" : "rel",
//      "href" : "href"
//    }, {
//      "schema" : "schema",
//      "targetSchema" : "targetSchema",
//      "method" : "GET",
//      "rel" : "rel",
//      "href" : "href"
//    } ],
//    "web_id" : 33345484,
//    "list_name" : "Test List",
//    "title" : "title",
//    "url" : "url",
//    "signup_tags" : [ {
//      "tag_name" : "tag_name",
//      "tag_id" : 3
//    }, {
//      "tag_name" : "tag_name",
//      "tag_id" : 3
//    } ],
//    "visits" : 0,
//    "timeseries" : {
//      "daily_stats" : {
//        "unique_visits" : [ {
//          "date" : "2018-04-25",
//          "val" : 1
//        }, {
//          "date" : "2018-04-25",
//          "val" : 1
//        } ],
//        "visits" : [ {
//          "date" : "2018-04-25",
//          "val" : 11
//        }, {
//          "date" : "2018-04-25",
//          "val" : 11
//        } ],
//        "clicks" : [ {
//          "date" : "2018-04-25",
//          "val" : 13
//        }, {
//          "date" : "2018-04-25",
//          "val" : 13
//        } ]
//      },
//      "weekly_stats" : {
//        "unique_visits" : [ null, null ],
//        "visits" : [ {
//          "date" : "2018-04-25",
//          "val" : 49
//        }, {
//          "date" : "2018-04-25",
//          "val" : 49
//        } ],
//        "clicks" : [ {
//          "date" : "2018-04-25",
//          "val" : 23
//        }, {
//          "date" : "2018-04-25",
//          "val" : 23
//        } ]
//      }
//    },
//    "ecommerce" : {
//      "average_order_revenue" : 9.301444243932576,
//      "total_revenue" : 2.3021358869347655,
//      "total_orders" : 7,
//      "currency_code" : "currency_code"
//    },
//    "name" : "name",
//    "clicks" : 5,
//    "id" : "00dfc2e1f0",
//    "published_at" : "2000-01-23T04:56:07.000+00:00",
//    "conversion_rate" : 5.637376656633329,
//    "unpublished_at" : "2000-01-23T04:56:07.000+00:00",
//    "status" : "status"
//  }, {
//    "unique_visits" : 6,
//    "subscribes" : 1,
//    "list_id" : "list_id",
//    "_links" : [ {
//      "schema" : "schema",
//      "targetSchema" : "targetSchema",
//      "method" : "GET",
//      "rel" : "rel",
//      "href" : "href"
//    }, {
//      "schema" : "schema",
//      "targetSchema" : "targetSchema",
//      "method" : "GET",
//      "rel" : "rel",
//      "href" : "href"
//    } ],
//    "web_id" : 33345484,
//    "list_name" : "Test List",
//    "title" : "title",
//    "url" : "url",
//    "signup_tags" : [ {
//      "tag_name" : "tag_name",
//      "tag_id" : 3
//    }, {
//      "tag_name" : "tag_name",
//      "tag_id" : 3
//    } ],
//    "visits" : 0,
//    "timeseries" : {
//      "daily_stats" : {
//        "unique_visits" : [ {
//          "date" : "2018-04-25",
//          "val" : 1
//        }, {
//          "date" : "2018-04-25",
//          "val" : 1
//        } ],
//        "visits" : [ {
//          "date" : "2018-04-25",
//          "val" : 11
//        }, {
//          "date" : "2018-04-25",
//          "val" : 11
//        } ],
//        "clicks" : [ {
//          "date" : "2018-04-25",
//          "val" : 13
//        }, {
//          "date" : "2018-04-25",
//          "val" : 13
//        } ]
//      },
//      "weekly_stats" : {
//        "unique_visits" : [ null, null ],
//        "visits" : [ {
//          "date" : "2018-04-25",
//          "val" : 49
//        }, {
//          "date" : "2018-04-25",
//          "val" : 49
//        } ],
//        "clicks" : [ {
//          "date" : "2018-04-25",
//          "val" : 23
//        }, {
//          "date" : "2018-04-25",
//          "val" : 23
//        } ]
//      }
//    },
//    "ecommerce" : {
//      "average_order_revenue" : 9.301444243932576,
//      "total_revenue" : 2.3021358869347655,
//      "total_orders" : 7,
//      "currency_code" : "currency_code"
//    },
//    "name" : "name",
//    "clicks" : 5,
//    "id" : "00dfc2e1f0",
//    "published_at" : "2000-01-23T04:56:07.000+00:00",
//    "conversion_rate" : 5.637376656633329,
//    "unpublished_at" : "2000-01-23T04:56:07.000+00:00",
//    "status" : "status"
//  } ],
//  "total_items" : 2
// }}]
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
//     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
//
//     - returns: RequestBuilder<InlineResponse20012>
//     */
//    open class func getReportingLandingPagesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<InlineResponse20012> {
//        let path = "/reporting/landing-pages"
//        let URLString = SwaggerClientAPI.basePath + path
//        let parameters: [String:Any]? = nil
//        var url = URLComponents(string: URLString)
//        url?.queryItems = APIHelper.mapValuesToQueryItems([
//                        "fields": fields,
//                        "exclude_fields": excludeFields,
//                        "count": count?.encodeToJSON(),
//                        "offset": offset?.encodeToJSON()
//        ])
//
//
//        let requestBuilder: RequestBuilder<InlineResponse20012>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
//
//        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
//    }
//    /**
//     Get landing page report
//
//     - parameter outreachId: (path) The outreach id.
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter completion: completion handler to receive the data and the error objects
//     */
//    open class func getReportingLandingPagesId(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: LandingPageReport?,_ error: Error?) -> Void)) {
//        getReportingLandingPagesIdWithRequestBuilder(outreachId: outreachId, fields: fields, excludeFields: excludeFields).execute { (response, error) -> Void in
//            completion(response?.body, error)
//        }
//    }
//
//
//    /**
//     Get landing page report
//     - GET /reporting/landing-pages/{outreach_id}
//
//     - BASIC:
//       - type: http
//       - name: basicAuth
//     - examples: [{contentType=application/json, example={
//  "unique_visits" : 6,
//  "subscribes" : 1,
//  "list_id" : "list_id",
//  "_links" : [ {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  }, {
//    "schema" : "schema",
//    "targetSchema" : "targetSchema",
//    "method" : "GET",
//    "rel" : "rel",
//    "href" : "href"
//  } ],
//  "web_id" : 33345484,
//  "list_name" : "Test List",
//  "title" : "title",
//  "url" : "url",
//  "signup_tags" : [ {
//    "tag_name" : "tag_name",
//    "tag_id" : 3
//  }, {
//    "tag_name" : "tag_name",
//    "tag_id" : 3
//  } ],
//  "visits" : 0,
//  "timeseries" : {
//    "daily_stats" : {
//      "unique_visits" : [ {
//        "date" : "2018-04-25",
//        "val" : 1
//      }, {
//        "date" : "2018-04-25",
//        "val" : 1
//      } ],
//      "visits" : [ {
//        "date" : "2018-04-25",
//        "val" : 11
//      }, {
//        "date" : "2018-04-25",
//        "val" : 11
//      } ],
//      "clicks" : [ {
//        "date" : "2018-04-25",
//        "val" : 13
//      }, {
//        "date" : "2018-04-25",
//        "val" : 13
//      } ]
//    },
//    "weekly_stats" : {
//      "unique_visits" : [ null, null ],
//      "visits" : [ {
//        "date" : "2018-04-25",
//        "val" : 49
//      }, {
//        "date" : "2018-04-25",
//        "val" : 49
//      } ],
//      "clicks" : [ {
//        "date" : "2018-04-25",
//        "val" : 23
//      }, {
//        "date" : "2018-04-25",
//        "val" : 23
//      } ]
//    }
//  },
//  "ecommerce" : {
//    "average_order_revenue" : 9.301444243932576,
//    "total_revenue" : 2.3021358869347655,
//    "total_orders" : 7,
//    "currency_code" : "currency_code"
//  },
//  "name" : "name",
//  "clicks" : 5,
//  "id" : "00dfc2e1f0",
//  "published_at" : "2000-01-23T04:56:07.000+00:00",
//  "conversion_rate" : 5.637376656633329,
//  "unpublished_at" : "2000-01-23T04:56:07.000+00:00",
//  "status" : "status"
// }}]
//     - parameter outreachId: (path) The outreach id.
//     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
//     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
//
//     - returns: RequestBuilder<LandingPageReport>
//     */
//    open class func getReportingLandingPagesIdWithRequestBuilder(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<LandingPageReport> {
//        var path = "/reporting/landing-pages/{outreach_id}"
//        let outreachIdPreEscape = "\(outreachId)"
//        let outreachIdPostEscape = outreachIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
//        path = path.replacingOccurrences(of: "{outreach_id}", with: outreachIdPostEscape, options: .literal, range: nil)
//        let URLString = SwaggerClientAPI.basePath + path
//        let parameters: [String:Any]? = nil
//        var url = URLComponents(string: URLString)
//        url?.queryItems = APIHelper.mapValuesToQueryItems([
//                        "fields": fields,
//                        "exclude_fields": excludeFields
//        ])
//
//
//        let requestBuilder: RequestBuilder<LandingPageReport>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
//
//        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
//    }
// }
