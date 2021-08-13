**CLASS**

# `ReportsAPI`

```swift
open class ReportsAPI
```

## Methods
### `getReports(fields:excludeFields:count:offset:type:beforeSendTime:sinceSendTime:completion:)`

```swift
open class func getReports(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: ModelType_getReports? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil, completion: @escaping ((_ data: CampaignReports1?, _ error: Error?) -> Void))
```

List campaign reports

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter type: (query) The campaign type. (optional)
- parameter beforeSendTime: (query) Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceSendTime: (query) Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) The campaign type. (optional) |
| beforeSendTime | (query) Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceSendTime | (query) Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsWithRequestBuilder(fields:excludeFields:count:offset:type:beforeSendTime:sinceSendTime:)`

```swift
open class func getReportsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: ModelType_getReports? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil) -> RequestBuilder<CampaignReports1>
```

     List campaign reports
     - GET /reports

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "reports" : [ {
    "forwards" : {
      "forwards_count" : 7,
      "forwards_opens" : 9
    },
    "share_report" : {
      "share_url" : "share_url",
      "share_password" : "share_password"
    },
    "preview_text" : "preview_text",
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
    "rss_last_send" : "2000-01-23T04:56:07.000+00:00",
    "list_name" : "list_name",
    "type" : "type",
    "list_is_active" : true,
    "industry_stats" : {
      "unopen_rate" : 9.369310271410669,
      "click_rate" : 5.025004791520295,
      "bounce_rate" : 9.965781217890562,
      "unsub_rate" : 6.683562403749608,
      "type" : "type",
      "abuse_rate" : 8.762042012749001,
      "open_rate" : 4.965218492984954
    },
    "list_stats" : {
      "sub_rate" : 9.018348186070783,
      "click_rate" : 6.965117697638846,
      "unsub_rate" : 6.438423552598547,
      "open_rate" : 3.5571952270680973
    },
    "campaign_title" : "campaign_title",
    "facebook_likes" : {
      "facebook_likes" : 1,
      "unique_likes" : 7,
      "recipient_likes" : 6
    },
    "timeseries" : [ {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    } ],
    "emails_sent" : 0,
    "ecommerce" : {
      "total_spent" : 4.678947989005849,
      "total_revenue" : 7.260521264802104,
      "total_orders" : 1,
      "currency_code" : "USD"
    },
    "id" : "id",
    "bounces" : {
      "hard_bounces" : 5,
      "syntax_errors" : 2,
      "soft_bounces" : 5
    },
    "subject_line" : "subject_line",
    "ab_split" : {
      "a" : {
        "forwards" : 5,
        "unsubs" : 6,
        "opens" : 3,
        "bounces" : 1,
        "recipient_clicks" : 6,
        "forwards_opens" : 6,
        "last_open" : "last_open",
        "abuse_reports" : 2,
        "unique_opens" : 3
      },
      "b" : {
        "forwards" : 0,
        "unsubs" : 7,
        "opens" : 8,
        "bounces" : 7,
        "recipient_clicks" : 6,
        "forwards_opens" : 4,
        "last_open" : "last_open",
        "abuse_reports" : 0,
        "unique_opens" : 7
      }
    },
    "timewarp" : [ {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    }, {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    } ],
    "unsubscribed" : 1,
    "send_time" : "2000-01-23T04:56:07.000+00:00",
    "opens" : {
      "opens_total" : 3,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 2,
      "open_rate" : 4.145608029883936
    },
    "clicks" : {
      "clicks_total" : 7,
      "unique_clicks" : 1,
      "click_rate" : 1.4894159098541704,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "unique_subscriber_clicks" : 1
    },
    "abuse_reports" : 6,
    "delivery_status" : {
      "emails_sent" : 6,
      "can_cancel" : true,
      "emails_canceled" : 3,
      "enabled" : true,
      "status" : "delivering"
    }
  }, {
    "forwards" : {
      "forwards_count" : 7,
      "forwards_opens" : 9
    },
    "share_report" : {
      "share_url" : "share_url",
      "share_password" : "share_password"
    },
    "preview_text" : "preview_text",
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
    "rss_last_send" : "2000-01-23T04:56:07.000+00:00",
    "list_name" : "list_name",
    "type" : "type",
    "list_is_active" : true,
    "industry_stats" : {
      "unopen_rate" : 9.369310271410669,
      "click_rate" : 5.025004791520295,
      "bounce_rate" : 9.965781217890562,
      "unsub_rate" : 6.683562403749608,
      "type" : "type",
      "abuse_rate" : 8.762042012749001,
      "open_rate" : 4.965218492984954
    },
    "list_stats" : {
      "sub_rate" : 9.018348186070783,
      "click_rate" : 6.965117697638846,
      "unsub_rate" : 6.438423552598547,
      "open_rate" : 3.5571952270680973
    },
    "campaign_title" : "campaign_title",
    "facebook_likes" : {
      "facebook_likes" : 1,
      "unique_likes" : 7,
      "recipient_likes" : 6
    },
    "timeseries" : [ {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    } ],
    "emails_sent" : 0,
    "ecommerce" : {
      "total_spent" : 4.678947989005849,
      "total_revenue" : 7.260521264802104,
      "total_orders" : 1,
      "currency_code" : "USD"
    },
    "id" : "id",
    "bounces" : {
      "hard_bounces" : 5,
      "syntax_errors" : 2,
      "soft_bounces" : 5
    },
    "subject_line" : "subject_line",
    "ab_split" : {
      "a" : {
        "forwards" : 5,
        "unsubs" : 6,
        "opens" : 3,
        "bounces" : 1,
        "recipient_clicks" : 6,
        "forwards_opens" : 6,
        "last_open" : "last_open",
        "abuse_reports" : 2,
        "unique_opens" : 3
      },
      "b" : {
        "forwards" : 0,
        "unsubs" : 7,
        "opens" : 8,
        "bounces" : 7,
        "recipient_clicks" : 6,
        "forwards_opens" : 4,
        "last_open" : "last_open",
        "abuse_reports" : 0,
        "unique_opens" : 7
      }
    },
    "timewarp" : [ {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    }, {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    } ],
    "unsubscribed" : 1,
    "send_time" : "2000-01-23T04:56:07.000+00:00",
    "opens" : {
      "opens_total" : 3,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 2,
      "open_rate" : 4.145608029883936
    },
    "clicks" : {
      "clicks_total" : 7,
      "unique_clicks" : 1,
      "click_rate" : 1.4894159098541704,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "unique_subscriber_clicks" : 1
    },
    "abuse_reports" : 6,
    "delivery_status" : {
      "emails_sent" : 6,
      "can_cancel" : true,
      "emails_canceled" : 3,
      "enabled" : true,
      "status" : "delivering"
    }
  } ],
  "_links" : [ null, null ],
  "total_items" : 9
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter type: (query) The campaign type. (optional)
     - parameter beforeSendTime: (query) Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceSendTime: (query) Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<CampaignReports1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| type | (query) The campaign type. (optional) |
| beforeSendTime | (query) Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceSendTime | (query) Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `getReportsId(campaignId:fields:excludeFields:completion:)`

```swift
open class func getReportsId(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignReport?, _ error: Error?) -> Void))
```

Get campaign report

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdWithRequestBuilder(campaignId:fields:excludeFields:)`

```swift
open class func getReportsIdWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignReport>
```

     Get campaign report
     - GET /reports/{campaign_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "forwards" : {
    "forwards_count" : 7,
    "forwards_opens" : 9
  },
  "share_report" : {
    "share_url" : "share_url",
    "share_password" : "share_password"
  },
  "preview_text" : "preview_text",
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
  "rss_last_send" : "2000-01-23T04:56:07.000+00:00",
  "list_name" : "list_name",
  "type" : "type",
  "list_is_active" : true,
  "industry_stats" : {
    "unopen_rate" : 9.369310271410669,
    "click_rate" : 5.025004791520295,
    "bounce_rate" : 9.965781217890562,
    "unsub_rate" : 6.683562403749608,
    "type" : "type",
    "abuse_rate" : 8.762042012749001,
    "open_rate" : 4.965218492984954
  },
  "list_stats" : {
    "sub_rate" : 9.018348186070783,
    "click_rate" : 6.965117697638846,
    "unsub_rate" : 6.438423552598547,
    "open_rate" : 3.5571952270680973
  },
  "campaign_title" : "campaign_title",
  "facebook_likes" : {
    "facebook_likes" : 1,
    "unique_likes" : 7,
    "recipient_likes" : 6
  },
  "timeseries" : [ {
    "emails_sent" : 0,
    "recipients_clicks" : 4,
    "unique_opens" : 6,
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "emails_sent" : 0,
    "recipients_clicks" : 4,
    "unique_opens" : 6,
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "emails_sent" : 0,
  "ecommerce" : {
    "total_spent" : 4.678947989005849,
    "total_revenue" : 7.260521264802104,
    "total_orders" : 1,
    "currency_code" : "USD"
  },
  "id" : "id",
  "bounces" : {
    "hard_bounces" : 5,
    "syntax_errors" : 2,
    "soft_bounces" : 5
  },
  "subject_line" : "subject_line",
  "ab_split" : {
    "a" : {
      "forwards" : 5,
      "unsubs" : 6,
      "opens" : 3,
      "bounces" : 1,
      "recipient_clicks" : 6,
      "forwards_opens" : 6,
      "last_open" : "last_open",
      "abuse_reports" : 2,
      "unique_opens" : 3
    },
    "b" : {
      "forwards" : 0,
      "unsubs" : 7,
      "opens" : 8,
      "bounces" : 7,
      "recipient_clicks" : 6,
      "forwards_opens" : 4,
      "last_open" : "last_open",
      "abuse_reports" : 0,
      "unique_opens" : 7
    }
  },
  "timewarp" : [ {
    "unique_clicks" : 3,
    "opens" : 3,
    "clicks" : 5,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "gmt_offset" : 3,
    "bounces" : 4,
    "last_open" : "2000-01-23T04:56:07.000+00:00",
    "unique_opens" : 7
  }, {
    "unique_clicks" : 3,
    "opens" : 3,
    "clicks" : 5,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "gmt_offset" : 3,
    "bounces" : 4,
    "last_open" : "2000-01-23T04:56:07.000+00:00",
    "unique_opens" : 7
  } ],
  "unsubscribed" : 1,
  "send_time" : "2000-01-23T04:56:07.000+00:00",
  "opens" : {
    "opens_total" : 3,
    "last_open" : "2000-01-23T04:56:07.000+00:00",
    "unique_opens" : 2,
    "open_rate" : 4.145608029883936
  },
  "clicks" : {
    "clicks_total" : 7,
    "unique_clicks" : 1,
    "click_rate" : 1.4894159098541704,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "unique_subscriber_clicks" : 1
  },
  "abuse_reports" : 6,
  "delivery_status" : {
    "emails_sent" : 6,
    "can_cancel" : true,
    "emails_canceled" : 3,
    "enabled" : true,
    "status" : "delivering"
  }
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<CampaignReport>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdAbuseReportsId(campaignId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdAbuseReportsId(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: AbuseComplaints1?, _ error: Error?) -> Void))
```

List abuse reports

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdAbuseReportsIdWithRequestBuilder(campaignId:fields:excludeFields:)`

```swift
open class func getReportsIdAbuseReportsIdWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<AbuseComplaints1>
```

     List abuse reports
     - GET /reports/{campaign_id}/abuse-reports

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "total_items" : 6,
  "abuse_reports" : [ {
    "email_id" : "email_id",
    "date" : "2000-01-23T04:56:07.000+00:00",
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
    "list_is_active" : true,
    "vip" : true,
    "campaign_id" : "campaign_id"
  }, {
    "email_id" : "email_id",
    "date" : "2000-01-23T04:56:07.000+00:00",
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
    "list_is_active" : true,
    "vip" : true,
    "campaign_id" : "campaign_id"
  } ],
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<AbuseComplaints1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdAbuseReportsIdId(campaignId:reportId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdAbuseReportsIdId(campaignId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: AbuseComplaint1?, _ error: Error?) -> Void))
```

Get abuse report

- parameter campaignId: (path) The unique id for the campaign.
- parameter reportId: (path) The id for the abuse report.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| reportId | (path) The id for the abuse report. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdAbuseReportsIdIdWithRequestBuilder(campaignId:reportId:fields:excludeFields:)`

```swift
open class func getReportsIdAbuseReportsIdIdWithRequestBuilder(campaignId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<AbuseComplaint1>
```

     Get abuse report
     - GET /reports/{campaign_id}/abuse-reports/{report_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "date" : "2000-01-23T04:56:07.000+00:00",
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
  "list_is_active" : true,
  "vip" : true,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter reportId: (path) The id for the abuse report.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<AbuseComplaint1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| reportId | (path) The id for the abuse report. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdAdvice(campaignId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdAdvice(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignAdviceReport?, _ error: Error?) -> Void))
```

List campaign feedback

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdAdviceWithRequestBuilder(campaignId:fields:excludeFields:)`

```swift
open class func getReportsIdAdviceWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignAdviceReport>
```

     List campaign feedback
     - GET /reports/{campaign_id}/advice

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "advice" : [ {
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
    "type" : "negative",
    "message" : "message"
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
    "type" : "negative",
    "message" : "message"
  } ],
  "total_items" : 0,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<CampaignAdviceReport>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdClickDetails(campaignId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getReportsIdClickDetails(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: ClickDetailReport?, _ error: Error?) -> Void))
```

List campaign details

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdClickDetailsWithRequestBuilder(campaignId:fields:excludeFields:count:offset:)`

```swift
open class func getReportsIdClickDetailsWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<ClickDetailReport>
```

     List campaign details
     - GET /reports/{campaign_id}/click-details

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "urls_clicked" : [ {
    "unique_click_percentage" : 5.962133916683182,
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
    "unique_clicks" : 1,
    "ab_split" : {
      "a" : {
        "click_percentage_a" : 2.3021358869347655,
        "unique_clicks_a" : 7,
        "total_clicks_a" : 5,
        "unique_click_percentage_a" : 9.301444243932576
      },
      "b" : {
        "click_percentage_b" : 2.027123023002322,
        "unique_clicks_b" : 4,
        "total_clicks_b" : 3,
        "unique_click_percentage_b" : 7.386281948385884
      }
    },
    "click_percentage" : 6.027456183070403,
    "total_clicks" : 0,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "id" : "id",
    "url" : "url",
    "campaign_id" : "campaign_id"
  }, {
    "unique_click_percentage" : 5.962133916683182,
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
    "unique_clicks" : 1,
    "ab_split" : {
      "a" : {
        "click_percentage_a" : 2.3021358869347655,
        "unique_clicks_a" : 7,
        "total_clicks_a" : 5,
        "unique_click_percentage_a" : 9.301444243932576
      },
      "b" : {
        "click_percentage_b" : 2.027123023002322,
        "unique_clicks_b" : 4,
        "total_clicks_b" : 3,
        "unique_click_percentage_b" : 7.386281948385884
      }
    },
    "click_percentage" : 6.027456183070403,
    "total_clicks" : 0,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "id" : "id",
    "url" : "url",
    "campaign_id" : "campaign_id"
  } ],
  "total_items" : 1,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<ClickDetailReport>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getReportsIdClickDetailsId(campaignId:linkId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdClickDetailsId(campaignId: String, linkId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ClickDetailReport1?, _ error: Error?) -> Void))
```

Get campaign link details

- parameter campaignId: (path) The unique id for the campaign.
- parameter linkId: (path) The id for the link.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| linkId | (path) The id for the link. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdClickDetailsIdWithRequestBuilder(campaignId:linkId:fields:excludeFields:)`

```swift
open class func getReportsIdClickDetailsIdWithRequestBuilder(campaignId: String, linkId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ClickDetailReport1>
```

     Get campaign link details
     - GET /reports/{campaign_id}/click-details/{link_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "unique_click_percentage" : 5.962133916683182,
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
  "unique_clicks" : 1,
  "ab_split" : {
    "a" : {
      "click_percentage_a" : 2.3021358869347655,
      "unique_clicks_a" : 7,
      "total_clicks_a" : 5,
      "unique_click_percentage_a" : 9.301444243932576
    },
    "b" : {
      "click_percentage_b" : 2.027123023002322,
      "unique_clicks_b" : 4,
      "total_clicks_b" : 3,
      "unique_click_percentage_b" : 7.386281948385884
    }
  },
  "click_percentage" : 6.027456183070403,
  "total_clicks" : 0,
  "last_click" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "url" : "url",
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter linkId: (path) The id for the link.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ClickDetailReport1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| linkId | (path) The id for the link. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdClickDetailsIdMembers(campaignId:linkId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getReportsIdClickDetailsIdMembers(campaignId: String, linkId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: ClickDetailMembers?, _ error: Error?) -> Void))
```

List clicked link subscribers

- parameter campaignId: (path) The unique id for the campaign.
- parameter linkId: (path) The id for the link.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| linkId | (path) The id for the link. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdClickDetailsIdMembersWithRequestBuilder(campaignId:linkId:fields:excludeFields:count:offset:)`

```swift
open class func getReportsIdClickDetailsIdMembersWithRequestBuilder(campaignId: String, linkId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<ClickDetailMembers>
```

     List clicked link subscribers
     - GET /reports/{campaign_id}/click-details/{link_id}/members

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "members" : [ {
    "email_id" : "email_id",
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
    "clicks" : 0,
    "contact_status" : "contact_status",
    "url_id" : "url_id",
    "vip" : true,
    "list_is_active" : true,
    "campaign_id" : "campaign_id"
  }, {
    "email_id" : "email_id",
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
    "clicks" : 0,
    "contact_status" : "contact_status",
    "url_id" : "url_id",
    "vip" : true,
    "list_is_active" : true,
    "campaign_id" : "campaign_id"
  } ],
  "total_items" : 6,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter linkId: (path) The id for the link.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<ClickDetailMembers>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| linkId | (path) The id for the link. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getReportsIdClickDetailsIdMembersId(campaignId:linkId:subscriberHash:fields:excludeFields:completion:)`

```swift
open class func getReportsIdClickDetailsIdMembersId(campaignId: String, linkId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ClickDetailMember?, _ error: Error?) -> Void))
```

Get clicked link subscriber

- parameter campaignId: (path) The unique id for the campaign.
- parameter linkId: (path) The id for the link.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| linkId | (path) The id for the link. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdClickDetailsIdMembersIdWithRequestBuilder(campaignId:linkId:subscriberHash:fields:excludeFields:)`

```swift
open class func getReportsIdClickDetailsIdMembersIdWithRequestBuilder(campaignId: String, linkId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ClickDetailMember>
```

     Get clicked link subscriber
     - GET /reports/{campaign_id}/click-details/{link_id}/members/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
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
  "clicks" : 0,
  "contact_status" : "contact_status",
  "url_id" : "url_id",
  "vip" : true,
  "list_is_active" : true,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter linkId: (path) The id for the link.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ClickDetailMember>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| linkId | (path) The id for the link. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdDomainPerformance(campaignId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdDomainPerformance(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: DomainPerformance?, _ error: Error?) -> Void))
```

List domain performance stats

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdDomainPerformanceWithRequestBuilder(campaignId:fields:excludeFields:)`

```swift
open class func getReportsIdDomainPerformanceWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<DomainPerformance>
```

     List domain performance stats
     - GET /reports/{campaign_id}/domain-performance

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
  "total_sent" : 7,
  "domains" : [ {
    "opens_pct" : 3.616076749251911,
    "emails_pct" : 7.061401241503109,
    "domain" : "domain",
    "emails_sent" : 0,
    "unsubs" : 5,
    "opens" : 1,
    "clicks" : 5,
    "delivered" : 2,
    "unsubs_pct" : 4.145608029883936,
    "bounces" : 6,
    "clicks_pct" : 2.027123023002322,
    "bounces_pct" : 9.301444243932576
  }, {
    "opens_pct" : 3.616076749251911,
    "emails_pct" : 7.061401241503109,
    "domain" : "domain",
    "emails_sent" : 0,
    "unsubs" : 5,
    "opens" : 1,
    "clicks" : 5,
    "delivered" : 2,
    "unsubs_pct" : 4.145608029883936,
    "bounces" : 6,
    "clicks_pct" : 2.027123023002322,
    "bounces_pct" : 9.301444243932576
  } ],
  "total_items" : 1,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<DomainPerformance>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdEcommerceProductActivity(campaignId:fields:excludeFields:count:offset:sortField:completion:)`

```swift
open class func getReportsIdEcommerceProductActivity(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getReportsIdEcommerceProductActivity? = nil, completion: @escaping ((_ data: InlineResponse2007?, _ error: Error?) -> Void))
```

List campaign product activity

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter sortField: (query) Returns files sorted by the specified field. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdEcommerceProductActivityWithRequestBuilder(campaignId:fields:excludeFields:count:offset:sortField:)`

```swift
open class func getReportsIdEcommerceProductActivityWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField_getReportsIdEcommerceProductActivity? = nil) -> RequestBuilder<InlineResponse2007>
```

     List campaign product activity
     - GET /reports/{campaign_id}/ecommerce-product-activity

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
  "total_items" : 5,
  "products" : [ {
    "total_purchased" : 6.027456183070403,
    "image_url" : "image_url",
    "total_revenue" : 0.8008281904610115,
    "recommendation_purchased" : 5,
    "recommendation_total" : 1,
    "title" : "title",
    "sku" : "sku",
    "currency_code" : "currency_code"
  }, {
    "total_purchased" : 6.027456183070403,
    "image_url" : "image_url",
    "total_revenue" : 0.8008281904610115,
    "recommendation_purchased" : 5,
    "recommendation_total" : 1,
    "title" : "title",
    "sku" : "sku",
    "currency_code" : "currency_code"
  } ]
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter sortField: (query) Returns files sorted by the specified field. (optional)

     - returns: RequestBuilder<InlineResponse2007>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| sortField | (query) Returns files sorted by the specified field. (optional) |

### `getReportsIdEepurl(campaignId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdEepurl(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EepurlActivity?, _ error: Error?) -> Void))
```

List EepURL activity

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdEepurlWithRequestBuilder(campaignId:fields:excludeFields:)`

```swift
open class func getReportsIdEepurlWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EepurlActivity>
```

     List EepURL activity
     - GET /reports/{campaign_id}/eepurl

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "twitter" : {
    "last_tweet" : "last_tweet",
    "statuses" : [ {
      "datetime" : "2000-01-23T04:56:07.000+00:00",
      "status_id" : "status_id",
      "screen_name" : "screen_name",
      "is_retweet" : true,
      "status" : "status"
    }, {
      "datetime" : "2000-01-23T04:56:07.000+00:00",
      "status_id" : "status_id",
      "screen_name" : "screen_name",
      "is_retweet" : true,
      "status" : "status"
    } ],
    "first_tweet" : "first_tweet",
    "tweets" : 0,
    "retweets" : 6
  },
  "eepurl" : "eepurl",
  "referrers" : [ {
    "referrer" : "referrer",
    "clicks" : 5,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "first_click" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "referrer" : "referrer",
    "clicks" : 5,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "first_click" : "2000-01-23T04:56:07.000+00:00"
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
  "clicks" : {
    "clicks" : 1,
    "last_click" : "2000-01-23T04:56:07.000+00:00",
    "locations" : [ {
      "country" : "country",
      "region" : "NY"
    }, {
      "country" : "country",
      "region" : "NY"
    } ],
    "first_click" : "2000-01-23T04:56:07.000+00:00"
  },
  "total_items" : 5,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<EepurlActivity>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdEmailActivity(campaignId:fields:excludeFields:count:offset:since:completion:)`

```swift
open class func getReportsIdEmailActivity(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, since: String? = nil, completion: @escaping ((_ data: EmailActivity?, _ error: Error?) -> Void))
```

List email activity

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter since: (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| since | (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdEmailActivityWithRequestBuilder(campaignId:fields:excludeFields:count:offset:since:)`

```swift
open class func getReportsIdEmailActivityWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, since: String? = nil) -> RequestBuilder<EmailActivity>
```

     List email activity
     - GET /reports/{campaign_id}/email-activity

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "emails" : [ {
    "email_id" : "email_id",
    "email_address" : "email_address",
    "list_id" : "list_id",
    "activity" : [ {
      "ip" : "ip",
      "action" : "action",
      "type" : "type",
      "url" : "url",
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "ip" : "ip",
      "action" : "action",
      "type" : "type",
      "url" : "url",
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
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
    "list_is_active" : true,
    "campaign_id" : "campaign_id"
  }, {
    "email_id" : "email_id",
    "email_address" : "email_address",
    "list_id" : "list_id",
    "activity" : [ {
      "ip" : "ip",
      "action" : "action",
      "type" : "type",
      "url" : "url",
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "ip" : "ip",
      "action" : "action",
      "type" : "type",
      "url" : "url",
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
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
    "list_is_active" : true,
    "campaign_id" : "campaign_id"
  } ],
  "_links" : [ null, null ],
  "total_items" : 0,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter since: (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<EmailActivity>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| since | (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `getReportsIdEmailActivityId(campaignId:subscriberHash:fields:excludeFields:since:completion:)`

```swift
open class func getReportsIdEmailActivityId(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, since: String? = nil, completion: @escaping ((_ data: EmailActivity1?, _ error: Error?) -> Void))
```

Get subscriber email activity

- parameter campaignId: (path) The unique id for the campaign.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter since: (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| since | (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdEmailActivityIdWithRequestBuilder(campaignId:subscriberHash:fields:excludeFields:since:)`

```swift
open class func getReportsIdEmailActivityIdWithRequestBuilder(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, since: String? = nil) -> RequestBuilder<EmailActivity1>
```

     Get subscriber email activity
     - GET /reports/{campaign_id}/email-activity/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "email_address" : "email_address",
  "list_id" : "list_id",
  "activity" : [ {
    "ip" : "ip",
    "action" : "action",
    "type" : "type",
    "url" : "url",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "ip" : "ip",
    "action" : "action",
    "type" : "type",
    "url" : "url",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
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
  "list_is_active" : true,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter since: (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<EmailActivity1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| since | (query) Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `getReportsIdLocations(campaignId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getReportsIdLocations(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: OpenLocations?, _ error: Error?) -> Void))
```

List top open activities

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdLocationsWithRequestBuilder(campaignId:fields:excludeFields:count:offset:)`

```swift
open class func getReportsIdLocationsWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<OpenLocations>
```

     List top open activities
     - GET /reports/{campaign_id}/locations

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
  "locations" : [ {
    "country_code" : "country_code",
    "opens" : 0,
    "region_name" : "region_name",
    "region" : "region"
  }, {
    "country_code" : "country_code",
    "opens" : 0,
    "region_name" : "region_name",
    "region" : "region"
  } ],
  "total_items" : 6,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<OpenLocations>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getReportsIdOpenDetails(campaignId:fields:excludeFields:count:offset:since:completion:)`

```swift
open class func getReportsIdOpenDetails(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, since: String? = nil, completion: @escaping ((_ data: OpenDetailReport?, _ error: Error?) -> Void))
```

List campaign open details

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter since: (query) Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| since | (query) Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdOpenDetailsWithRequestBuilder(campaignId:fields:excludeFields:count:offset:since:)`

```swift
open class func getReportsIdOpenDetailsWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, since: String? = nil) -> RequestBuilder<OpenDetailReport>
```

     List campaign open details
     - GET /reports/{campaign_id}/open-details

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "total_opens" : 6,
  "_links" : [ null, null ],
  "members" : [ {
    "email_id" : "email_id",
    "email_address" : "email_address",
    "list_id" : "list_id",
    "opens_count" : 0,
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
    "opens" : [ {
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    } ],
    "contact_status" : "contact_status",
    "list_is_active" : true,
    "vip" : true,
    "campaign_id" : "campaign_id"
  }, {
    "email_id" : "email_id",
    "email_address" : "email_address",
    "list_id" : "list_id",
    "opens_count" : 0,
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
    "opens" : [ {
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    } ],
    "contact_status" : "contact_status",
    "list_is_active" : true,
    "vip" : true,
    "campaign_id" : "campaign_id"
  } ],
  "total_items" : 1,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter since: (query) Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<OpenDetailReport>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| since | (query) Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `getReportsIdOpenDetailsIdMembersId(campaignId:subscriberHash:fields:excludeFields:completion:)`

```swift
open class func getReportsIdOpenDetailsIdMembersId(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: OpenActivity?, _ error: Error?) -> Void))
```

Get opened campaign subscriber

- parameter campaignId: (path) The unique id for the campaign.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdOpenDetailsIdMembersIdWithRequestBuilder(campaignId:subscriberHash:fields:excludeFields:)`

```swift
open class func getReportsIdOpenDetailsIdMembersIdWithRequestBuilder(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<OpenActivity>
```

     Get opened campaign subscriber
     - GET /reports/{campaign_id}/open-details/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "email_address" : "email_address",
  "list_id" : "list_id",
  "opens_count" : 0,
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
  "opens" : [ {
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "contact_status" : "contact_status",
  "list_is_active" : true,
  "vip" : true,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<OpenActivity>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdSentTo(campaignId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getReportsIdSentTo(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: SentTo?, _ error: Error?) -> Void))
```

List campaign recipients

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdSentToWithRequestBuilder(campaignId:fields:excludeFields:count:offset:)`

```swift
open class func getReportsIdSentToWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<SentTo>
```

     List campaign recipients
     - GET /reports/{campaign_id}/sent-to

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "sent_to" : [ {
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
    "merge_fields" : {
      "key" : { }
    },
    "open_count" : 0,
    "list_is_active" : true,
    "last_open" : "2000-01-23T04:56:07.000+00:00",
    "email_address" : "email_address",
    "absplit_group" : "absplit_group",
    "gmt_offset" : 6,
    "vip" : true,
    "campaign_id" : "campaign_id",
    "status" : "status"
  }, {
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
    "merge_fields" : {
      "key" : { }
    },
    "open_count" : 0,
    "list_is_active" : true,
    "last_open" : "2000-01-23T04:56:07.000+00:00",
    "email_address" : "email_address",
    "absplit_group" : "absplit_group",
    "gmt_offset" : 6,
    "vip" : true,
    "campaign_id" : "campaign_id",
    "status" : "status"
  } ],
  "total_items" : 1,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<SentTo>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getReportsIdSentToId(campaignId:subscriberHash:fields:excludeFields:completion:)`

```swift
open class func getReportsIdSentToId(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: SentTo?, _ error: Error?) -> Void))
```

Get campaign recipient info

- parameter campaignId: (path) The unique id for the campaign.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdSentToIdWithRequestBuilder(campaignId:subscriberHash:fields:excludeFields:)`

```swift
open class func getReportsIdSentToIdWithRequestBuilder(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<SentTo>
```

     Get campaign recipient info
     - GET /reports/{campaign_id}/sent-to/{subscriber_hash}

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
  "merge_fields" : {
    "key" : { }
  },
  "open_count" : 0,
  "list_is_active" : true,
  "last_open" : "2000-01-23T04:56:07.000+00:00",
  "email_address" : "email_address",
  "absplit_group" : "absplit_group",
  "gmt_offset" : 6,
  "vip" : true,
  "campaign_id" : "campaign_id",
  "status" : "status"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<SentTo>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdSubReportsId(campaignId:fields:excludeFields:completion:)`

```swift
open class func getReportsIdSubReportsId(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: CampaignSubReports?, _ error: Error?) -> Void))
```

List child campaign reports

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdSubReportsIdWithRequestBuilder(campaignId:fields:excludeFields:)`

```swift
open class func getReportsIdSubReportsIdWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<CampaignSubReports>
```

     List child campaign reports
     - GET /reports/{campaign_id}/sub-reports

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "reports" : [ {
    "forwards" : {
      "forwards_count" : 7,
      "forwards_opens" : 9
    },
    "share_report" : {
      "share_url" : "share_url",
      "share_password" : "share_password"
    },
    "preview_text" : "preview_text",
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
    "rss_last_send" : "2000-01-23T04:56:07.000+00:00",
    "list_name" : "list_name",
    "type" : "type",
    "list_is_active" : true,
    "industry_stats" : {
      "unopen_rate" : 9.369310271410669,
      "click_rate" : 5.025004791520295,
      "bounce_rate" : 9.965781217890562,
      "unsub_rate" : 6.683562403749608,
      "type" : "type",
      "abuse_rate" : 8.762042012749001,
      "open_rate" : 4.965218492984954
    },
    "list_stats" : {
      "sub_rate" : 9.018348186070783,
      "click_rate" : 6.965117697638846,
      "unsub_rate" : 6.438423552598547,
      "open_rate" : 3.5571952270680973
    },
    "campaign_title" : "campaign_title",
    "facebook_likes" : {
      "facebook_likes" : 1,
      "unique_likes" : 7,
      "recipient_likes" : 6
    },
    "timeseries" : [ {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    } ],
    "emails_sent" : 0,
    "ecommerce" : {
      "total_spent" : 4.678947989005849,
      "total_revenue" : 7.260521264802104,
      "total_orders" : 1,
      "currency_code" : "USD"
    },
    "id" : "id",
    "bounces" : {
      "hard_bounces" : 5,
      "syntax_errors" : 2,
      "soft_bounces" : 5
    },
    "subject_line" : "subject_line",
    "ab_split" : {
      "a" : {
        "forwards" : 5,
        "unsubs" : 6,
        "opens" : 3,
        "bounces" : 1,
        "recipient_clicks" : 6,
        "forwards_opens" : 6,
        "last_open" : "last_open",
        "abuse_reports" : 2,
        "unique_opens" : 3
      },
      "b" : {
        "forwards" : 0,
        "unsubs" : 7,
        "opens" : 8,
        "bounces" : 7,
        "recipient_clicks" : 6,
        "forwards_opens" : 4,
        "last_open" : "last_open",
        "abuse_reports" : 0,
        "unique_opens" : 7
      }
    },
    "timewarp" : [ {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    }, {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    } ],
    "unsubscribed" : 1,
    "send_time" : "2000-01-23T04:56:07.000+00:00",
    "opens" : {
      "opens_total" : 3,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 2,
      "open_rate" : 4.145608029883936
    },
    "clicks" : {
      "clicks_total" : 7,
      "unique_clicks" : 1,
      "click_rate" : 1.4894159098541704,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "unique_subscriber_clicks" : 1
    },
    "abuse_reports" : 6,
    "delivery_status" : {
      "emails_sent" : 6,
      "can_cancel" : true,
      "emails_canceled" : 3,
      "enabled" : true,
      "status" : "delivering"
    }
  }, {
    "forwards" : {
      "forwards_count" : 7,
      "forwards_opens" : 9
    },
    "share_report" : {
      "share_url" : "share_url",
      "share_password" : "share_password"
    },
    "preview_text" : "preview_text",
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
    "rss_last_send" : "2000-01-23T04:56:07.000+00:00",
    "list_name" : "list_name",
    "type" : "type",
    "list_is_active" : true,
    "industry_stats" : {
      "unopen_rate" : 9.369310271410669,
      "click_rate" : 5.025004791520295,
      "bounce_rate" : 9.965781217890562,
      "unsub_rate" : 6.683562403749608,
      "type" : "type",
      "abuse_rate" : 8.762042012749001,
      "open_rate" : 4.965218492984954
    },
    "list_stats" : {
      "sub_rate" : 9.018348186070783,
      "click_rate" : 6.965117697638846,
      "unsub_rate" : 6.438423552598547,
      "open_rate" : 3.5571952270680973
    },
    "campaign_title" : "campaign_title",
    "facebook_likes" : {
      "facebook_likes" : 1,
      "unique_likes" : 7,
      "recipient_likes" : 6
    },
    "timeseries" : [ {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    }, {
      "emails_sent" : 0,
      "recipients_clicks" : 4,
      "unique_opens" : 6,
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    } ],
    "emails_sent" : 0,
    "ecommerce" : {
      "total_spent" : 4.678947989005849,
      "total_revenue" : 7.260521264802104,
      "total_orders" : 1,
      "currency_code" : "USD"
    },
    "id" : "id",
    "bounces" : {
      "hard_bounces" : 5,
      "syntax_errors" : 2,
      "soft_bounces" : 5
    },
    "subject_line" : "subject_line",
    "ab_split" : {
      "a" : {
        "forwards" : 5,
        "unsubs" : 6,
        "opens" : 3,
        "bounces" : 1,
        "recipient_clicks" : 6,
        "forwards_opens" : 6,
        "last_open" : "last_open",
        "abuse_reports" : 2,
        "unique_opens" : 3
      },
      "b" : {
        "forwards" : 0,
        "unsubs" : 7,
        "opens" : 8,
        "bounces" : 7,
        "recipient_clicks" : 6,
        "forwards_opens" : 4,
        "last_open" : "last_open",
        "abuse_reports" : 0,
        "unique_opens" : 7
      }
    },
    "timewarp" : [ {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    }, {
      "unique_clicks" : 3,
      "opens" : 3,
      "clicks" : 5,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "gmt_offset" : 3,
      "bounces" : 4,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 7
    } ],
    "unsubscribed" : 1,
    "send_time" : "2000-01-23T04:56:07.000+00:00",
    "opens" : {
      "opens_total" : 3,
      "last_open" : "2000-01-23T04:56:07.000+00:00",
      "unique_opens" : 2,
      "open_rate" : 4.145608029883936
    },
    "clicks" : {
      "clicks_total" : 7,
      "unique_clicks" : 1,
      "click_rate" : 1.4894159098541704,
      "last_click" : "2000-01-23T04:56:07.000+00:00",
      "unique_subscriber_clicks" : 1
    },
    "abuse_reports" : 6,
    "delivery_status" : {
      "emails_sent" : 6,
      "can_cancel" : true,
      "emails_canceled" : 3,
      "enabled" : true,
      "status" : "delivering"
    }
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
  "total_items" : 0,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<CampaignSubReports>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getReportsIdUnsubscribed(campaignId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getReportsIdUnsubscribed(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Unsubscribes?, _ error: Error?) -> Void))
```

List unsubscribed members

- parameter campaignId: (path) The unique id for the campaign.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdUnsubscribedWithRequestBuilder(campaignId:fields:excludeFields:count:offset:)`

```swift
open class func getReportsIdUnsubscribedWithRequestBuilder(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Unsubscribes>
```

     List unsubscribed members
     - GET /reports/{campaign_id}/unsubscribed

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "unsubscribes" : [ {
    "email_id" : "email_id",
    "reason" : "reason",
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
    "vip" : true,
    "list_is_active" : true,
    "campaign_id" : "campaign_id",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "email_id" : "email_id",
    "reason" : "reason",
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
    "vip" : true,
    "list_is_active" : true,
    "campaign_id" : "campaign_id",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "_links" : [ null, null ],
  "total_items" : 0,
  "campaign_id" : "campaign_id"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<Unsubscribes>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getReportsIdUnsubscribedId(campaignId:subscriberHash:fields:excludeFields:completion:)`

```swift
open class func getReportsIdUnsubscribedId(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Unsubscribes1?, _ error: Error?) -> Void))
```

Get unsubscribed member

- parameter campaignId: (path) The unique id for the campaign.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getReportsIdUnsubscribedIdWithRequestBuilder(campaignId:subscriberHash:fields:excludeFields:)`

```swift
open class func getReportsIdUnsubscribedIdWithRequestBuilder(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Unsubscribes1>
```

     Get unsubscribed member
     - GET /reports/{campaign_id}/unsubscribed/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "reason" : "reason",
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
  "vip" : true,
  "list_is_active" : true,
  "campaign_id" : "campaign_id",
  "timestamp" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter campaignId: (path) The unique id for the campaign.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<Unsubscribes1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| campaignId | (path) The unique id for the campaign. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |