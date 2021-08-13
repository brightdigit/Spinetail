**CLASS**

# `ConversationsAPI`

```swift
open class ConversationsAPI
```

## Methods
### `getConversations(fields:excludeFields:count:offset:hasUnreadMessages:listId:campaignId:completion:)`

```swift
open class func getConversations(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: HasUnreadMessages_getConversations? = nil, listId: String? = nil, campaignId: String? = nil, completion: @escaping ((_ data: TrackedConversations?, _ error: Error?) -> Void))
```

List conversations

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter hasUnreadMessages: (query) Whether the conversation has any unread messages. (optional)
- parameter listId: (query) The unique id for the list. (optional)
- parameter campaignId: (query) The unique id for the campaign. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| hasUnreadMessages | (query) Whether the conversation has any unread messages. (optional) |
| listId | (query) The unique id for the list. (optional) |
| campaignId | (query) The unique id for the campaign. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getConversationsWithRequestBuilder(fields:excludeFields:count:offset:hasUnreadMessages:listId:campaignId:)`

```swift
open class func getConversationsWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: HasUnreadMessages_getConversations? = nil, listId: String? = nil, campaignId: String? = nil) -> RequestBuilder<TrackedConversations>
```

     List conversations
     - GET /conversations

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "conversations" : [ {
    "from_email" : "from_email",
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
    "subject" : "subject",
    "unread_messages" : 6,
    "last_message" : {
      "from_email" : "from_email",
      "read" : true,
      "subject" : "subject",
      "message" : "message",
      "from_label" : "from_label",
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    },
    "id" : "id",
    "message_count" : 0,
    "from_label" : "from_label",
    "campaign_id" : "campaign_id"
  }, {
    "from_email" : "from_email",
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
    "subject" : "subject",
    "unread_messages" : 6,
    "last_message" : {
      "from_email" : "from_email",
      "read" : true,
      "subject" : "subject",
      "message" : "message",
      "from_label" : "from_label",
      "timestamp" : "2000-01-23T04:56:07.000+00:00"
    },
    "id" : "id",
    "message_count" : 0,
    "from_label" : "from_label",
    "campaign_id" : "campaign_id"
  } ],
  "total_items" : 1
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
     - parameter hasUnreadMessages: (query) Whether the conversation has any unread messages. (optional)
     - parameter listId: (query) The unique id for the list. (optional)
     - parameter campaignId: (query) The unique id for the campaign. (optional)

     - returns: RequestBuilder<TrackedConversations>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| hasUnreadMessages | (query) Whether the conversation has any unread messages. (optional) |
| listId | (query) The unique id for the list. (optional) |
| campaignId | (query) The unique id for the campaign. (optional) |

### `getConversationsId(conversationId:fields:excludeFields:completion:)`

```swift
open class func getConversationsId(conversationId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Conversation?, _ error: Error?) -> Void))
```

Get conversation

- parameter conversationId: (path) The unique id for the conversation.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| conversationId | (path) The unique id for the conversation. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getConversationsIdWithRequestBuilder(conversationId:fields:excludeFields:)`

```swift
open class func getConversationsIdWithRequestBuilder(conversationId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Conversation>
```

     Get conversation
     - GET /conversations/{conversation_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "from_email" : "from_email",
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
  "subject" : "subject",
  "unread_messages" : 6,
  "last_message" : {
    "from_email" : "from_email",
    "read" : true,
    "subject" : "subject",
    "message" : "message",
    "from_label" : "from_label",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  },
  "id" : "id",
  "message_count" : 0,
  "from_label" : "from_label",
  "campaign_id" : "campaign_id"
}}]
     - parameter conversationId: (path) The unique id for the conversation.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<Conversation>

#### Parameters

| Name | Description |
| ---- | ----------- |
| conversationId | (path) The unique id for the conversation. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getConversationsIdMessages(conversationId:fields:excludeFields:isRead:beforeTimestamp:sinceTimestamp:completion:)`

```swift
open class func getConversationsIdMessages(conversationId: String, fields: [String]? = nil, excludeFields: [String]? = nil, isRead: IsRead_getConversationsIdMessages? = nil, beforeTimestamp: Date? = nil, sinceTimestamp: Date? = nil, completion: @escaping ((_ data: CollectionOfConversationMessages?, _ error: Error?) -> Void))
```

List messages

- parameter conversationId: (path) The unique id for the conversation.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter isRead: (query) Whether a conversation message has been marked as read. (optional)
- parameter beforeTimestamp: (query) Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter sinceTimestamp: (query) Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| conversationId | (path) The unique id for the conversation. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| isRead | (query) Whether a conversation message has been marked as read. (optional) |
| beforeTimestamp | (query) Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceTimestamp | (query) Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getConversationsIdMessagesWithRequestBuilder(conversationId:fields:excludeFields:isRead:beforeTimestamp:sinceTimestamp:)`

```swift
open class func getConversationsIdMessagesWithRequestBuilder(conversationId: String, fields: [String]? = nil, excludeFields: [String]? = nil, isRead: IsRead_getConversationsIdMessages? = nil, beforeTimestamp: Date? = nil, sinceTimestamp: Date? = nil) -> RequestBuilder<CollectionOfConversationMessages>
```

     List messages
     - GET /conversations/{conversation_id}/messages

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "conversation_messages" : [ {
    "from_email" : "from_email",
    "read" : true,
    "list_id" : 0,
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
    "conversation_id" : "conversation_id",
    "subject" : "subject",
    "id" : "id",
    "message" : "message",
    "from_label" : "from_label",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "from_email" : "from_email",
    "read" : true,
    "list_id" : 0,
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
    "conversation_id" : "conversation_id",
    "subject" : "subject",
    "id" : "id",
    "message" : "message",
    "from_label" : "from_label",
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "_links" : [ null, null ],
  "conversation_id" : "conversation_id",
  "total_items" : 6
}}]
     - parameter conversationId: (path) The unique id for the conversation.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter isRead: (query) Whether a conversation message has been marked as read. (optional)
     - parameter beforeTimestamp: (query) Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
     - parameter sinceTimestamp: (query) Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)

     - returns: RequestBuilder<CollectionOfConversationMessages>

#### Parameters

| Name | Description |
| ---- | ----------- |
| conversationId | (path) The unique id for the conversation. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| isRead | (query) Whether a conversation message has been marked as read. (optional) |
| beforeTimestamp | (query) Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |
| sinceTimestamp | (query) Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional) |

### `getConversationsIdMessagesId(conversationId:messageId:fields:excludeFields:completion:)`

```swift
open class func getConversationsIdMessagesId(conversationId: String, messageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ConversationMessage?, _ error: Error?) -> Void))
```

Get message

- parameter conversationId: (path) The unique id for the conversation.
- parameter messageId: (path) The unique id for the conversation message.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| conversationId | (path) The unique id for the conversation. |
| messageId | (path) The unique id for the conversation message. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getConversationsIdMessagesIdWithRequestBuilder(conversationId:messageId:fields:excludeFields:)`

```swift
open class func getConversationsIdMessagesIdWithRequestBuilder(conversationId: String, messageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ConversationMessage>
```

     Get message
     - GET /conversations/{conversation_id}/messages/{message_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "from_email" : "from_email",
  "read" : true,
  "list_id" : 0,
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
  "conversation_id" : "conversation_id",
  "subject" : "subject",
  "id" : "id",
  "message" : "message",
  "from_label" : "from_label",
  "timestamp" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter conversationId: (path) The unique id for the conversation.
     - parameter messageId: (path) The unique id for the conversation message.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ConversationMessage>

#### Parameters

| Name | Description |
| ---- | ----------- |
| conversationId | (path) The unique id for the conversation. |
| messageId | (path) The unique id for the conversation message. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |