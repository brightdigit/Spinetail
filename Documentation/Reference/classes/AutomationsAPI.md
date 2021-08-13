**CLASS**

# `AutomationsAPI`

```swift
open class AutomationsAPI
```

## Methods
### `archiveAutomations(workflowId:completion:)`

```swift
open class func archiveAutomations(workflowId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Archive automation

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| completion | completion handler to receive the data and the error objects |

### `archiveAutomationsWithRequestBuilder(workflowId:)`

```swift
open class func archiveAutomationsWithRequestBuilder(workflowId: String) -> RequestBuilder<Void>
```

Archive automation
- POST /automations/{workflow_id}/actions/archive

- BASIC:
  - type: http
  - name: basicAuth
- parameter workflowId: (path) The unique id for the Automation workflow.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |

### `deleteAutomationsIdEmailsId(workflowId:workflowEmailId:completion:)`

```swift
open class func deleteAutomationsIdEmailsId(workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete workflow email

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `deleteAutomationsIdEmailsIdWithRequestBuilder(workflowId:workflowEmailId:)`

```swift
open class func deleteAutomationsIdEmailsIdWithRequestBuilder(workflowId: String, workflowEmailId: String) -> RequestBuilder<Void>
```

Delete workflow email
- DELETE /automations/{workflow_id}/emails/{workflow_email_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `getAutomations(count:offset:fields:excludeFields:beforeCreateTime:sinceCreateTime:beforeStartTime:sinceStartTime:status:completion:)`

```swift
open class func getAutomations(count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, beforeStartTime: Date? = nil, sinceStartTime: Date? = nil, status: Status_getAutomations? = nil, completion: @escaping ((_ data: InlineResponse2003?, _ error: Error?) -> Void))
```

List automations

- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter beforeCreateTime: (query) Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceCreateTime: (query) Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter beforeStartTime: (query) Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceStartTime: (query) Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter status: (query) Restrict the results to automations with the specified status. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| beforeCreateTime | (query) Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCreateTime | (query) Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeStartTime | (query) Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceStartTime | (query) Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| status | (query) Restrict the results to automations with the specified status. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsWithRequestBuilder(count:offset:fields:excludeFields:beforeCreateTime:sinceCreateTime:beforeStartTime:sinceStartTime:status:)`

```swift
open class func getAutomationsWithRequestBuilder(count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, beforeStartTime: Date? = nil, sinceStartTime: Date? = nil, status: Status_getAutomations? = nil) -> RequestBuilder<InlineResponse2003>
```

     List automations
     - GET /automations

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "automations" : [ {
    "start_time" : "2000-01-23T04:56:07.000+00:00",
    "settings" : {
      "auto_footer" : true,
      "use_conversation" : true,
      "authenticate" : true,
      "reply_to" : "reply_to",
      "to_name" : "to_name",
      "inline_css" : true,
      "title" : "title",
      "from_name" : "from_name"
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
    "recipients" : {
      "segment_opts" : {
        "match" : "any",
        "saved_segment_id" : 6,
        "conditions" : [ { }, { } ]
      },
      "store_id" : "1a2df69xxx",
      "list_id" : "list_id",
      "list_name" : "list_name",
      "list_is_active" : true
    },
    "emails_sent" : 0,
    "trigger_settings" : {
      "runtime" : {
        "hours" : {
          "type" : "send_asap"
        },
        "days" : [ "sunday", "sunday" ]
      },
      "workflow_emails_count" : 1,
      "workflow_type" : "abandonedBrowse",
      "workflow_title" : "workflow_title"
    },
    "id" : "id",
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
    "status" : "save",
    "report_summary" : {
      "subscriber_clicks" : 9,
      "click_rate" : 3.616076749251911,
      "opens" : 5,
      "clicks" : 7,
      "unique_opens" : 5,
      "open_rate" : 2.3021358869347655
    }
  }, {
    "start_time" : "2000-01-23T04:56:07.000+00:00",
    "settings" : {
      "auto_footer" : true,
      "use_conversation" : true,
      "authenticate" : true,
      "reply_to" : "reply_to",
      "to_name" : "to_name",
      "inline_css" : true,
      "title" : "title",
      "from_name" : "from_name"
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
    "recipients" : {
      "segment_opts" : {
        "match" : "any",
        "saved_segment_id" : 6,
        "conditions" : [ { }, { } ]
      },
      "store_id" : "1a2df69xxx",
      "list_id" : "list_id",
      "list_name" : "list_name",
      "list_is_active" : true
    },
    "emails_sent" : 0,
    "trigger_settings" : {
      "runtime" : {
        "hours" : {
          "type" : "send_asap"
        },
        "days" : [ "sunday", "sunday" ]
      },
      "workflow_emails_count" : 1,
      "workflow_type" : "abandonedBrowse",
      "workflow_title" : "workflow_title"
    },
    "id" : "id",
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
    "status" : "save",
    "report_summary" : {
      "subscriber_clicks" : 9,
      "click_rate" : 3.616076749251911,
      "opens" : 5,
      "clicks" : 7,
      "unique_opens" : 5,
      "open_rate" : 2.3021358869347655
    }
  } ],
  "_links" : [ null, null ],
  "total_items" : 2
}}]
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter beforeCreateTime: (query) Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceCreateTime: (query) Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter beforeStartTime: (query) Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceStartTime: (query) Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter status: (query) Restrict the results to automations with the specified status. (optional)

     - returns: RequestBuilder<InlineResponse2003>

#### Parameters

| Name | Description |
| ---- | ----------- |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| beforeCreateTime | (query) Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceCreateTime | (query) Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| beforeStartTime | (query) Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceStartTime | (query) Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| status | (query) Restrict the results to automations with the specified status. (optional) |

### `getAutomationsId(workflowId:fields:excludeFields:completion:)`

```swift
open class func getAutomationsId(workflowId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: AutomationWorkflow1?, _ error: Error?) -> Void))
```

Get automation info

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdWithRequestBuilder(workflowId:fields:excludeFields:)`

```swift
open class func getAutomationsIdWithRequestBuilder(workflowId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<AutomationWorkflow1>
```

     Get automation info
     - GET /automations/{workflow_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "start_time" : "2000-01-23T04:56:07.000+00:00",
  "settings" : {
    "auto_footer" : true,
    "use_conversation" : true,
    "authenticate" : true,
    "reply_to" : "reply_to",
    "to_name" : "to_name",
    "inline_css" : true,
    "title" : "title",
    "from_name" : "from_name"
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
  "recipients" : {
    "segment_opts" : {
      "match" : "any",
      "saved_segment_id" : 6,
      "conditions" : [ { }, { } ]
    },
    "store_id" : "1a2df69xxx",
    "list_id" : "list_id",
    "list_name" : "list_name",
    "list_is_active" : true
  },
  "emails_sent" : 0,
  "trigger_settings" : {
    "runtime" : {
      "hours" : {
        "type" : "send_asap"
      },
      "days" : [ "sunday", "sunday" ]
    },
    "workflow_emails_count" : 1,
    "workflow_type" : "abandonedBrowse",
    "workflow_title" : "workflow_title"
  },
  "id" : "id",
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
  "status" : "save",
  "report_summary" : {
    "subscriber_clicks" : 9,
    "click_rate" : 3.616076749251911,
    "opens" : 5,
    "clicks" : 7,
    "unique_opens" : 5,
    "open_rate" : 2.3021358869347655
  }
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<AutomationWorkflow1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getAutomationsIdEmails(workflowId:completion:)`

```swift
open class func getAutomationsIdEmails(workflowId: String, completion: @escaping ((_ data: AutomationEmails?, _ error: Error?) -> Void))
```

List automated emails

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdEmailsWithRequestBuilder(workflowId:)`

```swift
open class func getAutomationsIdEmailsWithRequestBuilder(workflowId: String) -> RequestBuilder<AutomationEmails>
```

     List automated emails
     - GET /automations/{workflow_id}/emails

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "emails" : [ {
    "archive_url" : "archive_url",
    "settings" : {
      "auto_footer" : true,
      "subject_line" : "subject_line",
      "preview_text" : "preview_text",
      "authenticate" : true,
      "title" : "title",
      "from_name" : "from_name",
      "auto_tweet" : true,
      "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
      "fb_comments" : true,
      "drag_and_drop" : true,
      "reply_to" : "reply_to",
      "inline_css" : true,
      "template_id" : 2
    },
    "workflow_id" : "workflow_id",
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
    "trigger_settings" : {
      "runtime" : {
        "hours" : {
          "type" : "send_asap"
        },
        "days" : [ "sunday", "sunday" ]
      },
      "workflow_emails_count" : 1,
      "workflow_type" : "abandonedBrowse",
      "workflow_title" : "workflow_title"
    },
    "web_id" : 33345484,
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
    "start_time" : "2000-01-23T04:56:07.000+00:00",
    "delay" : {
      "amount" : 6,
      "full_description" : "1 day after subscribers purchase anything from your store",
      "action_description" : "subscribers purchase anything from your store",
      "action" : "previous_campaign_sent",
      "type" : "now",
      "direction" : "before"
    },
    "send_time" : "2000-01-23T04:56:07.000+00:00",
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
      "recipient_count" : 5,
      "list_name" : "list_name",
      "list_is_active" : true
    },
    "emails_sent" : 1,
    "id" : "id",
    "position" : 0,
    "has_logo_merge_tag" : true,
    "status" : "save",
    "report_summary" : {
      "subscriber_clicks" : 4,
      "click_rate" : 7.386281948385884,
      "opens" : 7,
      "clicks" : 2,
      "unique_opens" : 9,
      "open_rate" : 3.616076749251911
    }
  }, {
    "archive_url" : "archive_url",
    "settings" : {
      "auto_footer" : true,
      "subject_line" : "subject_line",
      "preview_text" : "preview_text",
      "authenticate" : true,
      "title" : "title",
      "from_name" : "from_name",
      "auto_tweet" : true,
      "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
      "fb_comments" : true,
      "drag_and_drop" : true,
      "reply_to" : "reply_to",
      "inline_css" : true,
      "template_id" : 2
    },
    "workflow_id" : "workflow_id",
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
    "trigger_settings" : {
      "runtime" : {
        "hours" : {
          "type" : "send_asap"
        },
        "days" : [ "sunday", "sunday" ]
      },
      "workflow_emails_count" : 1,
      "workflow_type" : "abandonedBrowse",
      "workflow_title" : "workflow_title"
    },
    "web_id" : 33345484,
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
    "start_time" : "2000-01-23T04:56:07.000+00:00",
    "delay" : {
      "amount" : 6,
      "full_description" : "1 day after subscribers purchase anything from your store",
      "action_description" : "subscribers purchase anything from your store",
      "action" : "previous_campaign_sent",
      "type" : "now",
      "direction" : "before"
    },
    "send_time" : "2000-01-23T04:56:07.000+00:00",
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
      "recipient_count" : 5,
      "list_name" : "list_name",
      "list_is_active" : true
    },
    "emails_sent" : 1,
    "id" : "id",
    "position" : 0,
    "has_logo_merge_tag" : true,
    "status" : "save",
    "report_summary" : {
      "subscriber_clicks" : 4,
      "click_rate" : 7.386281948385884,
      "opens" : 7,
      "clicks" : 2,
      "unique_opens" : 9,
      "open_rate" : 3.616076749251911
    }
  } ],
  "_links" : [ null, null ],
  "total_items" : 1
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.

     - returns: RequestBuilder<AutomationEmails>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |

### `getAutomationsIdEmailsId(workflowId:workflowEmailId:completion:)`

```swift
open class func getAutomationsIdEmailsId(workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: AutomationWorkflowEmail?, _ error: Error?) -> Void))
```

Get workflow email info

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdEmailsIdWithRequestBuilder(workflowId:workflowEmailId:)`

```swift
open class func getAutomationsIdEmailsIdWithRequestBuilder(workflowId: String, workflowEmailId: String) -> RequestBuilder<AutomationWorkflowEmail>
```

     Get workflow email info
     - GET /automations/{workflow_id}/emails/{workflow_email_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "archive_url" : "archive_url",
  "settings" : {
    "auto_footer" : true,
    "subject_line" : "subject_line",
    "preview_text" : "preview_text",
    "authenticate" : true,
    "title" : "title",
    "from_name" : "from_name",
    "auto_tweet" : true,
    "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
    "fb_comments" : true,
    "drag_and_drop" : true,
    "reply_to" : "reply_to",
    "inline_css" : true,
    "template_id" : 2
  },
  "workflow_id" : "workflow_id",
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
  "trigger_settings" : {
    "runtime" : {
      "hours" : {
        "type" : "send_asap"
      },
      "days" : [ "sunday", "sunday" ]
    },
    "workflow_emails_count" : 1,
    "workflow_type" : "abandonedBrowse",
    "workflow_title" : "workflow_title"
  },
  "web_id" : 33345484,
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
  "start_time" : "2000-01-23T04:56:07.000+00:00",
  "delay" : {
    "amount" : 6,
    "full_description" : "1 day after subscribers purchase anything from your store",
    "action_description" : "subscribers purchase anything from your store",
    "action" : "previous_campaign_sent",
    "type" : "now",
    "direction" : "before"
  },
  "send_time" : "2000-01-23T04:56:07.000+00:00",
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
    "recipient_count" : 5,
    "list_name" : "list_name",
    "list_is_active" : true
  },
  "emails_sent" : 6,
  "id" : "id",
  "position" : 0,
  "has_logo_merge_tag" : true,
  "status" : "save",
  "report_summary" : {
    "subscriber_clicks" : 4,
    "click_rate" : 7.386281948385884,
    "opens" : 7,
    "clicks" : 2,
    "unique_opens" : 9,
    "open_rate" : 3.616076749251911
  }
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter workflowEmailId: (path) The unique id for the Automation workflow email.

     - returns: RequestBuilder<AutomationWorkflowEmail>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `getAutomationsIdEmailsIdQueue(workflowId:workflowEmailId:completion:)`

```swift
open class func getAutomationsIdEmailsIdQueue(workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: InlineResponse2004?, _ error: Error?) -> Void))
```

List automated email subscribers

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdEmailsIdQueueWithRequestBuilder(workflowId:workflowEmailId:)`

```swift
open class func getAutomationsIdEmailsIdQueueWithRequestBuilder(workflowId: String, workflowEmailId: String) -> RequestBuilder<InlineResponse2004>
```

     List automated email subscribers
     - GET /automations/{workflow_id}/emails/{workflow_email_id}/queue

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "workflow_id" : "workflow_id",
  "_links" : [ null, null ],
  "total_items" : 0,
  "queue" : [ {
    "email_id" : "email_id",
    "workflow_id" : "workflow_id",
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
    "next_send" : "2000-01-23T04:56:07.000+00:00",
    "id" : "id"
  }, {
    "email_id" : "email_id",
    "workflow_id" : "workflow_id",
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
    "next_send" : "2000-01-23T04:56:07.000+00:00",
    "id" : "id"
  } ]
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter workflowEmailId: (path) The unique id for the Automation workflow email.

     - returns: RequestBuilder<InlineResponse2004>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `getAutomationsIdEmailsIdQueueId(workflowId:workflowEmailId:subscriberHash:completion:)`

```swift
open class func getAutomationsIdEmailsIdQueueId(workflowId: String, workflowEmailId: String, subscriberHash: String, completion: @escaping ((_ data: SubscriberInAutomationQueue1?, _ error: Error?) -> Void))
```

Get automated email subscriber

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdEmailsIdQueueIdWithRequestBuilder(workflowId:workflowEmailId:subscriberHash:)`

```swift
open class func getAutomationsIdEmailsIdQueueIdWithRequestBuilder(workflowId: String, workflowEmailId: String, subscriberHash: String) -> RequestBuilder<SubscriberInAutomationQueue1>
```

     Get automated email subscriber
     - GET /automations/{workflow_id}/emails/{workflow_email_id}/queue/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "workflow_id" : "workflow_id",
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
  "next_send" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "list_is_active" : true
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter workflowEmailId: (path) The unique id for the Automation workflow email.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

     - returns: RequestBuilder<SubscriberInAutomationQueue1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `getAutomationsIdRemovedSubscribers(workflowId:completion:)`

```swift
open class func getAutomationsIdRemovedSubscribers(workflowId: String, completion: @escaping ((_ data: RemovedSubscribers?, _ error: Error?) -> Void))
```

List subscribers removed from workflow

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdRemovedSubscribersWithRequestBuilder(workflowId:)`

```swift
open class func getAutomationsIdRemovedSubscribersWithRequestBuilder(workflowId: String) -> RequestBuilder<RemovedSubscribers>
```

     List subscribers removed from workflow
     - GET /automations/{workflow_id}/removed-subscribers

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "workflow_id" : "workflow_id",
  "_links" : [ null, null ],
  "subscribers" : [ {
    "workflow_id" : "workflow_id",
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
    "id" : "id"
  }, {
    "workflow_id" : "workflow_id",
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
    "id" : "id"
  } ],
  "total_items" : 0
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.

     - returns: RequestBuilder<RemovedSubscribers>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |

### `getAutomationsIdRemovedSubscribersId(workflowId:subscriberHash:completion:)`

```swift
open class func getAutomationsIdRemovedSubscribersId(workflowId: String, subscriberHash: String, completion: @escaping ((_ data: SubscriberRemovedFromAutomationWorkflow?, _ error: Error?) -> Void))
```

Get subscriber removed from workflow

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |
| completion | completion handler to receive the data and the error objects |

### `getAutomationsIdRemovedSubscribersIdWithRequestBuilder(workflowId:subscriberHash:)`

```swift
open class func getAutomationsIdRemovedSubscribersIdWithRequestBuilder(workflowId: String, subscriberHash: String) -> RequestBuilder<SubscriberRemovedFromAutomationWorkflow>
```

     Get subscriber removed from workflow
     - GET /automations/{workflow_id}/removed-subscribers/{subscriber_hash}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "workflow_id" : "workflow_id",
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
  "id" : "id"
}}]
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter subscriberHash: (path) The MD5 hash of the lowercase version of the list member&#x27;s email address.

     - returns: RequestBuilder<SubscriberRemovedFromAutomationWorkflow>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| subscriberHash | (path) The MD5 hash of the lowercase version of the list member's email address. |

### `patchAutomationEmailWorkflowId(body:workflowId:workflowEmailId:completion:)`

```swift
open class func patchAutomationEmailWorkflowId(body: UpdateInformationAboutASpecificWorkflowEmail, workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: AutomationWorkflowEmail?, _ error: Error?) -> Void))
```

Update workflow email

- parameter body: (body)
- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `patchAutomationEmailWorkflowIdWithRequestBuilder(body:workflowId:workflowEmailId:)`

```swift
open class func patchAutomationEmailWorkflowIdWithRequestBuilder(body: UpdateInformationAboutASpecificWorkflowEmail, workflowId: String, workflowEmailId: String) -> RequestBuilder<AutomationWorkflowEmail>
```

     Update workflow email
     - PATCH /automations/{workflow_id}/emails/{workflow_email_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "archive_url" : "archive_url",
  "settings" : {
    "auto_footer" : true,
    "subject_line" : "subject_line",
    "preview_text" : "preview_text",
    "authenticate" : true,
    "title" : "title",
    "from_name" : "from_name",
    "auto_tweet" : true,
    "auto_fb_post" : [ "auto_fb_post", "auto_fb_post" ],
    "fb_comments" : true,
    "drag_and_drop" : true,
    "reply_to" : "reply_to",
    "inline_css" : true,
    "template_id" : 2
  },
  "workflow_id" : "workflow_id",
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
  "trigger_settings" : {
    "runtime" : {
      "hours" : {
        "type" : "send_asap"
      },
      "days" : [ "sunday", "sunday" ]
    },
    "workflow_emails_count" : 1,
    "workflow_type" : "abandonedBrowse",
    "workflow_title" : "workflow_title"
  },
  "web_id" : 33345484,
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
  "start_time" : "2000-01-23T04:56:07.000+00:00",
  "delay" : {
    "amount" : 6,
    "full_description" : "1 day after subscribers purchase anything from your store",
    "action_description" : "subscribers purchase anything from your store",
    "action" : "previous_campaign_sent",
    "type" : "now",
    "direction" : "before"
  },
  "send_time" : "2000-01-23T04:56:07.000+00:00",
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
    "recipient_count" : 5,
    "list_name" : "list_name",
    "list_is_active" : true
  },
  "emails_sent" : 6,
  "id" : "id",
  "position" : 0,
  "has_logo_merge_tag" : true,
  "status" : "save",
  "report_summary" : {
    "subscriber_clicks" : 4,
    "click_rate" : 7.386281948385884,
    "opens" : 7,
    "clicks" : 2,
    "unique_opens" : 9,
    "open_rate" : 3.616076749251911
  }
}}]
     - parameter body: (body)
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter workflowEmailId: (path) The unique id for the Automation workflow email.

     - returns: RequestBuilder<AutomationWorkflowEmail>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `postAutomations(body:completion:)`

```swift
open class func postAutomations(body: AutomationWorkflow, completion: @escaping ((_ data: AutomationWorkflow1?, _ error: Error?) -> Void))
```

Add automation

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsWithRequestBuilder(body:)`

```swift
open class func postAutomationsWithRequestBuilder(body: AutomationWorkflow) -> RequestBuilder<AutomationWorkflow1>
```

     Add automation
     - POST /automations

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "start_time" : "2000-01-23T04:56:07.000+00:00",
  "settings" : {
    "auto_footer" : true,
    "use_conversation" : true,
    "authenticate" : true,
    "reply_to" : "reply_to",
    "to_name" : "to_name",
    "inline_css" : true,
    "title" : "title",
    "from_name" : "from_name"
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
  "recipients" : {
    "segment_opts" : {
      "match" : "any",
      "saved_segment_id" : 6,
      "conditions" : [ { }, { } ]
    },
    "store_id" : "1a2df69xxx",
    "list_id" : "list_id",
    "list_name" : "list_name",
    "list_is_active" : true
  },
  "emails_sent" : 0,
  "trigger_settings" : {
    "runtime" : {
      "hours" : {
        "type" : "send_asap"
      },
      "days" : [ "sunday", "sunday" ]
    },
    "workflow_emails_count" : 1,
    "workflow_type" : "abandonedBrowse",
    "workflow_title" : "workflow_title"
  },
  "id" : "id",
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
  "status" : "save",
  "report_summary" : {
    "subscriber_clicks" : 9,
    "click_rate" : 3.616076749251911,
    "opens" : 5,
    "clicks" : 7,
    "unique_opens" : 5,
    "open_rate" : 2.3021358869347655
  }
}}]
     - parameter body: (body)

     - returns: RequestBuilder<AutomationWorkflow1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |

### `postAutomationsIdActionsPauseAllEmails(workflowId:completion:)`

```swift
open class func postAutomationsIdActionsPauseAllEmails(workflowId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Pause automation emails

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsIdActionsPauseAllEmailsWithRequestBuilder(workflowId:)`

```swift
open class func postAutomationsIdActionsPauseAllEmailsWithRequestBuilder(workflowId: String) -> RequestBuilder<Void>
```

Pause automation emails
- POST /automations/{workflow_id}/actions/pause-all-emails

- BASIC:
  - type: http
  - name: basicAuth
- parameter workflowId: (path) The unique id for the Automation workflow.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |

### `postAutomationsIdActionsStartAllEmails(workflowId:completion:)`

```swift
open class func postAutomationsIdActionsStartAllEmails(workflowId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Start automation emails

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsIdActionsStartAllEmailsWithRequestBuilder(workflowId:)`

```swift
open class func postAutomationsIdActionsStartAllEmailsWithRequestBuilder(workflowId: String) -> RequestBuilder<Void>
```

Start automation emails
- POST /automations/{workflow_id}/actions/start-all-emails

- BASIC:
  - type: http
  - name: basicAuth
- parameter workflowId: (path) The unique id for the Automation workflow.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |

### `postAutomationsIdEmailsIdActionsPause(workflowId:workflowEmailId:completion:)`

```swift
open class func postAutomationsIdEmailsIdActionsPause(workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Pause automated email

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsIdEmailsIdActionsPauseWithRequestBuilder(workflowId:workflowEmailId:)`

```swift
open class func postAutomationsIdEmailsIdActionsPauseWithRequestBuilder(workflowId: String, workflowEmailId: String) -> RequestBuilder<Void>
```

Pause automated email
- POST /automations/{workflow_id}/emails/{workflow_email_id}/actions/pause

- BASIC:
  - type: http
  - name: basicAuth
- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `postAutomationsIdEmailsIdActionsStart(workflowId:workflowEmailId:completion:)`

```swift
open class func postAutomationsIdEmailsIdActionsStart(workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Start automated email

- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsIdEmailsIdActionsStartWithRequestBuilder(workflowId:workflowEmailId:)`

```swift
open class func postAutomationsIdEmailsIdActionsStartWithRequestBuilder(workflowId: String, workflowEmailId: String) -> RequestBuilder<Void>
```

Start automated email
- POST /automations/{workflow_id}/emails/{workflow_email_id}/actions/start

- BASIC:
  - type: http
  - name: basicAuth
- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `postAutomationsIdEmailsIdQueue(body:workflowId:workflowEmailId:completion:)`

```swift
open class func postAutomationsIdEmailsIdQueue(body: SubscriberInAutomationQueue, workflowId: String, workflowEmailId: String, completion: @escaping ((_ data: SubscriberInAutomationQueue1?, _ error: Error?) -> Void))
```

Add subscriber to workflow email

- parameter body: (body)
- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter workflowEmailId: (path) The unique id for the Automation workflow email.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsIdEmailsIdQueueWithRequestBuilder(body:workflowId:workflowEmailId:)`

```swift
open class func postAutomationsIdEmailsIdQueueWithRequestBuilder(body: SubscriberInAutomationQueue, workflowId: String, workflowEmailId: String) -> RequestBuilder<SubscriberInAutomationQueue1>
```

     Add subscriber to workflow email
     - POST /automations/{workflow_id}/emails/{workflow_email_id}/queue

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "email_id" : "email_id",
  "workflow_id" : "workflow_id",
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
  "next_send" : "2000-01-23T04:56:07.000+00:00",
  "id" : "id",
  "list_is_active" : true
}}]
     - parameter body: (body)
     - parameter workflowId: (path) The unique id for the Automation workflow.
     - parameter workflowEmailId: (path) The unique id for the Automation workflow email.

     - returns: RequestBuilder<SubscriberInAutomationQueue1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| workflowId | (path) The unique id for the Automation workflow. |
| workflowEmailId | (path) The unique id for the Automation workflow email. |

### `postAutomationsIdRemovedSubscribers(body:workflowId:completion:)`

```swift
open class func postAutomationsIdRemovedSubscribers(body: SubscriberInAutomationQueue2, workflowId: String, completion: @escaping ((_ data: SubscriberRemovedFromAutomationWorkflow?, _ error: Error?) -> Void))
```

Remove subscriber from workflow

- parameter body: (body)
- parameter workflowId: (path) The unique id for the Automation workflow.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| workflowId | (path) The unique id for the Automation workflow. |
| completion | completion handler to receive the data and the error objects |

### `postAutomationsIdRemovedSubscribersWithRequestBuilder(body:workflowId:)`

```swift
open class func postAutomationsIdRemovedSubscribersWithRequestBuilder(body: SubscriberInAutomationQueue2, workflowId: String) -> RequestBuilder<SubscriberRemovedFromAutomationWorkflow>
```

     Remove subscriber from workflow
     - POST /automations/{workflow_id}/removed-subscribers

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "workflow_id" : "workflow_id",
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
  "id" : "id"
}}]
     - parameter body: (body)
     - parameter workflowId: (path) The unique id for the Automation workflow.

     - returns: RequestBuilder<SubscriberRemovedFromAutomationWorkflow>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| workflowId | (path) The unique id for the Automation workflow. |