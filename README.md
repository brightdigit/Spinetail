# MailchimpKit

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `MailchimpKit` namespace and within an optional tag: `MailchimpKit(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are mutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = MailchimpKit.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
        	if let user = apiResponseValue.success {
        		print("GetUser returned user \(user)")
        	} else {
        		print("GetUser returned \(apiResponseValue)")
        	}
        case .error(let apiError):
        	print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `MailchimpKit.shared`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `MailchimpKit`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models


## Requests

- **MailchimpKit.ActivityFeed**
	- **GetActivityFeedChimpChatter**: GET `/activity-feed/chimp-chatter`
- **MailchimpKit.AuthorizedApps**
	- **GetAuthorizedApps**: GET `/authorized-apps`
	- **GetAuthorizedAppsId**: GET `/authorized-apps/{app_id}`
- **MailchimpKit.Automations**
	- **ArchiveAutomations**: POST `/automations/{workflow_id}/actions/archive`
	- **DeleteAutomationsIdEmailsId**: DELETE `/automations/{workflow_id}/emails/{workflow_email_id}`
	- **GetAutomations**: GET `/automations`
	- **GetAutomationsId**: GET `/automations/{workflow_id}`
	- **GetAutomationsIdEmails**: GET `/automations/{workflow_id}/emails`
	- **GetAutomationsIdEmailsId**: GET `/automations/{workflow_id}/emails/{workflow_email_id}`
	- **GetAutomationsIdEmailsIdQueue**: GET `/automations/{workflow_id}/emails/{workflow_email_id}/queue`
	- **GetAutomationsIdEmailsIdQueueId**: GET `/automations/{workflow_id}/emails/{workflow_email_id}/queue/{subscriber_hash}`
	- **GetAutomationsIdRemovedSubscribers**: GET `/automations/{workflow_id}/removed-subscribers`
	- **GetAutomationsIdRemovedSubscribersId**: GET `/automations/{workflow_id}/removed-subscribers/{subscriber_hash}`
	- **PatchAutomationEmailWorkflowId**: PATCH `/automations/{workflow_id}/emails/{workflow_email_id}`
	- **PostAutomations**: POST `/automations`
	- **PostAutomationsIdActionsPauseAllEmails**: POST `/automations/{workflow_id}/actions/pause-all-emails`
	- **PostAutomationsIdActionsStartAllEmails**: POST `/automations/{workflow_id}/actions/start-all-emails`
	- **PostAutomationsIdEmailsIdActionsPause**: POST `/automations/{workflow_id}/emails/{workflow_email_id}/actions/pause`
	- **PostAutomationsIdEmailsIdActionsStart**: POST `/automations/{workflow_id}/emails/{workflow_email_id}/actions/start`
	- **PostAutomationsIdEmailsIdQueue**: POST `/automations/{workflow_id}/emails/{workflow_email_id}/queue`
	- **PostAutomationsIdRemovedSubscribers**: POST `/automations/{workflow_id}/removed-subscribers`
- **MailchimpKit.Batches**
	- **DeleteBatchesId**: DELETE `/batches/{batch_id}`
	- **GetBatches**: GET `/batches`
	- **GetBatchesId**: GET `/batches/{batch_id}`
	- **PostBatches**: POST `/batches`
- **MailchimpKit.BatchWebhooks**
	- **DeleteBatchWebhookId**: DELETE `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhook**: GET `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhooks**: GET `/batch-webhooks`
	- **PatchBatchWebhooks**: PATCH `/batch-webhooks/{batch_webhook_id}`
	- **PostBatchWebhooks**: POST `/batch-webhooks`
- **MailchimpKit.CampaignFolders**
	- **DeleteCampaignFoldersId**: DELETE `/campaign-folders/{folder_id}`
	- **GetCampaignFolders**: GET `/campaign-folders`
	- **GetCampaignFoldersId**: GET `/campaign-folders/{folder_id}`
	- **PatchCampaignFoldersId**: PATCH `/campaign-folders/{folder_id}`
	- **PostCampaignFolders**: POST `/campaign-folders`
- **MailchimpKit.Campaigns**
	- **DeleteCampaignsId**: DELETE `/campaigns/{campaign_id}`
	- **DeleteCampaignsIdFeedbackId**: DELETE `/campaigns/{campaign_id}/feedback/{feedback_id}`
	- **GetCampaigns**: GET `/campaigns`
	- **GetCampaignsId**: GET `/campaigns/{campaign_id}`
	- **GetCampaignsIdContent**: GET `/campaigns/{campaign_id}/content`
	- **GetCampaignsIdFeedback**: GET `/campaigns/{campaign_id}/feedback`
	- **GetCampaignsIdFeedbackId**: GET `/campaigns/{campaign_id}/feedback/{feedback_id}`
	- **GetCampaignsIdSendChecklist**: GET `/campaigns/{campaign_id}/send-checklist`
	- **PatchCampaignsId**: PATCH `/campaigns/{campaign_id}`
	- **PatchCampaignsIdFeedbackId**: PATCH `/campaigns/{campaign_id}/feedback/{feedback_id}`
	- **PostCampaigns**: POST `/campaigns`
	- **PostCampaignsIdActionsCancelSend**: POST `/campaigns/{campaign_id}/actions/cancel-send`
	- **PostCampaignsIdActionsCreateResend**: POST `/campaigns/{campaign_id}/actions/create-resend`
	- **PostCampaignsIdActionsPause**: POST `/campaigns/{campaign_id}/actions/pause`
	- **PostCampaignsIdActionsReplicate**: POST `/campaigns/{campaign_id}/actions/replicate`
	- **PostCampaignsIdActionsResume**: POST `/campaigns/{campaign_id}/actions/resume`
	- **PostCampaignsIdActionsSchedule**: POST `/campaigns/{campaign_id}/actions/schedule`
	- **PostCampaignsIdActionsSend**: POST `/campaigns/{campaign_id}/actions/send`
	- **PostCampaignsIdActionsTest**: POST `/campaigns/{campaign_id}/actions/test`
	- **PostCampaignsIdActionsUnschedule**: POST `/campaigns/{campaign_id}/actions/unschedule`
	- **PostCampaignsIdFeedback**: POST `/campaigns/{campaign_id}/feedback`
	- **PutCampaignsIdContent**: PUT `/campaigns/{campaign_id}/content`
- **MailchimpKit.ConnectedSites**
	- **DeleteConnectedSitesId**: DELETE `/connected-sites/{connected_site_id}`
	- **GetConnectedSites**: GET `/connected-sites`
	- **GetConnectedSitesId**: GET `/connected-sites/{connected_site_id}`
	- **PostConnectedSites**: POST `/connected-sites`
	- **PostConnectedSitesIdActionsVerifyScriptInstallation**: POST `/connected-sites/{connected_site_id}/actions/verify-script-installation`
- **MailchimpKit.Conversations**
	- **GetConversations**: GET `/conversations`
	- **GetConversationsId**: GET `/conversations/{conversation_id}`
	- **GetConversationsIdMessages**: GET `/conversations/{conversation_id}/messages`
	- **GetConversationsIdMessagesId**: GET `/conversations/{conversation_id}/messages/{message_id}`
- **MailchimpKit.CustomerJourneys**
	- **PostCustomerJourneysJourneysIdStepsIdActionsTrigger**: POST `/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger`
- **MailchimpKit.Ecommerce**
	- **DeleteEcommerceStoresId**: DELETE `/ecommerce/stores/{store_id}`
	- **DeleteEcommerceStoresIdCartsId**: DELETE `/ecommerce/stores/{store_id}/carts/{cart_id}`
	- **DeleteEcommerceStoresIdCartsLinesId**: DELETE `/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}`
	- **DeleteEcommerceStoresIdCustomersId**: DELETE `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **DeleteEcommerceStoresIdOrdersId**: DELETE `/ecommerce/stores/{store_id}/orders/{order_id}`
	- **DeleteEcommerceStoresIdOrdersIdLinesId**: DELETE `/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}`
	- **DeleteEcommerceStoresIdProductsId**: DELETE `/ecommerce/stores/{store_id}/products/{product_id}`
	- **DeleteEcommerceStoresIdProductsIdImagesId**: DELETE `/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}`
	- **DeleteEcommerceStoresIdProductsIdVariantsId**: DELETE `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
	- **DeleteEcommerceStoresIdPromocodesId**: DELETE `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}`
	- **DeleteEcommerceStoresIdPromorulesId**: DELETE `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}`
	- **GetEcommerceOrders**: GET `/ecommerce/orders`
	- **GetEcommerceStores**: GET `/ecommerce/stores`
	- **GetEcommerceStoresId**: GET `/ecommerce/stores/{store_id}`
	- **GetEcommerceStoresIdCarts**: GET `/ecommerce/stores/{store_id}/carts`
	- **GetEcommerceStoresIdCartsId**: GET `/ecommerce/stores/{store_id}/carts/{cart_id}`
	- **GetEcommerceStoresIdCartsIdLines**: GET `/ecommerce/stores/{store_id}/carts/{cart_id}/lines`
	- **GetEcommerceStoresIdCartsIdLinesId**: GET `/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}`
	- **GetEcommerceStoresIdCustomers**: GET `/ecommerce/stores/{store_id}/customers`
	- **GetEcommerceStoresIdCustomersId**: GET `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **GetEcommerceStoresIdOrders**: GET `/ecommerce/stores/{store_id}/orders`
	- **GetEcommerceStoresIdOrdersId**: GET `/ecommerce/stores/{store_id}/orders/{order_id}`
	- **GetEcommerceStoresIdOrdersIdLines**: GET `/ecommerce/stores/{store_id}/orders/{order_id}/lines`
	- **GetEcommerceStoresIdOrdersIdLinesId**: GET `/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}`
	- **GetEcommerceStoresIdProducts**: GET `/ecommerce/stores/{store_id}/products`
	- **GetEcommerceStoresIdProductsId**: GET `/ecommerce/stores/{store_id}/products/{product_id}`
	- **GetEcommerceStoresIdProductsIdImages**: GET `/ecommerce/stores/{store_id}/products/{product_id}/images`
	- **GetEcommerceStoresIdProductsIdImagesId**: GET `/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}`
	- **GetEcommerceStoresIdProductsIdVariants**: GET `/ecommerce/stores/{store_id}/products/{product_id}/variants`
	- **GetEcommerceStoresIdProductsIdVariantsId**: GET `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
	- **GetEcommerceStoresIdPromocodes**: GET `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes`
	- **GetEcommerceStoresIdPromocodesId**: GET `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}`
	- **GetEcommerceStoresIdPromorules**: GET `/ecommerce/stores/{store_id}/promo-rules`
	- **GetEcommerceStoresIdPromorulesId**: GET `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}`
	- **PatchEcommerceStoresId**: PATCH `/ecommerce/stores/{store_id}`
	- **PatchEcommerceStoresIdCartsId**: PATCH `/ecommerce/stores/{store_id}/carts/{cart_id}`
	- **PatchEcommerceStoresIdCartsIdLinesId**: PATCH `/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}`
	- **PatchEcommerceStoresIdCustomersId**: PATCH `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **PatchEcommerceStoresIdOrdersId**: PATCH `/ecommerce/stores/{store_id}/orders/{order_id}`
	- **PatchEcommerceStoresIdOrdersIdLinesId**: PATCH `/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}`
	- **PatchEcommerceStoresIdProductsId**: PATCH `/ecommerce/stores/{store_id}/products/{product_id}`
	- **PatchEcommerceStoresIdProductsIdImagesId**: PATCH `/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}`
	- **PatchEcommerceStoresIdProductsIdVariantsId**: PATCH `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
	- **PatchEcommerceStoresIdPromocodesId**: PATCH `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}`
	- **PatchEcommerceStoresIdPromorulesId**: PATCH `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}`
	- **PostEcommerceStores**: POST `/ecommerce/stores`
	- **PostEcommerceStoresIdCarts**: POST `/ecommerce/stores/{store_id}/carts`
	- **PostEcommerceStoresIdCartsIdLines**: POST `/ecommerce/stores/{store_id}/carts/{cart_id}/lines`
	- **PostEcommerceStoresIdCustomers**: POST `/ecommerce/stores/{store_id}/customers`
	- **PostEcommerceStoresIdOrders**: POST `/ecommerce/stores/{store_id}/orders`
	- **PostEcommerceStoresIdOrdersIdLines**: POST `/ecommerce/stores/{store_id}/orders/{order_id}/lines`
	- **PostEcommerceStoresIdProducts**: POST `/ecommerce/stores/{store_id}/products`
	- **PostEcommerceStoresIdProductsIdImages**: POST `/ecommerce/stores/{store_id}/products/{product_id}/images`
	- **PostEcommerceStoresIdProductsIdVariants**: POST `/ecommerce/stores/{store_id}/products/{product_id}/variants`
	- **PostEcommerceStoresIdPromocodes**: POST `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes`
	- **PostEcommerceStoresIdPromorules**: POST `/ecommerce/stores/{store_id}/promo-rules`
	- **PutEcommerceStoresIdCustomersId**: PUT `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **PutEcommerceStoresIdProductsIdVariantsId**: PUT `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
- **MailchimpKit.FacebookAds**
	- **GetAllFacebookAds**: GET `/facebook-ads`
	- **GetFacebookAdsId**: GET `/facebook-ads/{outreach_id}`
- **MailchimpKit.FileManager**
	- **DeleteFileManagerFilesId**: DELETE `/file-manager/files/{file_id}`
	- **DeleteFileManagerFoldersId**: DELETE `/file-manager/folders/{folder_id}`
	- **GetFileManagerFiles**: GET `/file-manager/files`
	- **GetFileManagerFilesId**: GET `/file-manager/files/{file_id}`
	- **GetFileManagerFolders**: GET `/file-manager/folders`
	- **GetFileManagerFoldersId**: GET `/file-manager/folders/{folder_id}`
	- **PatchFileManagerFilesId**: PATCH `/file-manager/files/{file_id}`
	- **PatchFileManagerFoldersId**: PATCH `/file-manager/folders/{folder_id}`
	- **PostFileManagerFiles**: POST `/file-manager/files`
	- **PostFileManagerFolders**: POST `/file-manager/folders`
- **MailchimpKit.LandingPages**
	- **DeleteLandingPageId**: DELETE `/landing-pages/{page_id}`
	- **GetAllLandingPages**: GET `/landing-pages`
	- **GetLandingPageId**: GET `/landing-pages/{page_id}`
	- **GetLandingPageIdContent**: GET `/landing-pages/{page_id}/content`
	- **PatchLandingPageId**: PATCH `/landing-pages/{page_id}`
	- **PostAllLandingPages**: POST `/landing-pages`
	- **PostLandingPageIdActionsPublish**: POST `/landing-pages/{page_id}/actions/publish`
	- **PostLandingPageIdActionsUnpublish**: POST `/landing-pages/{page_id}/actions/unpublish`
- **MailchimpKit.Lists**
	- **DeleteListsId**: DELETE `/lists/{list_id}`
	- **DeleteListsIdInterestCategoriesId**: DELETE `/lists/{list_id}/interest-categories/{interest_category_id}`
	- **DeleteListsIdInterestCategoriesIdInterestsId**: DELETE `/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}`
	- **DeleteListsIdMembersId**: DELETE `/lists/{list_id}/members/{subscriber_hash}`
	- **DeleteListsIdMembersIdNotesId**: DELETE `/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}`
	- **DeleteListsIdMergeFieldsId**: DELETE `/lists/{list_id}/merge-fields/{merge_id}`
	- **DeleteListsIdSegmentsId**: DELETE `/lists/{list_id}/segments/{segment_id}`
	- **DeleteListsIdSegmentsIdMembersId**: DELETE `/lists/{list_id}/segments/{segment_id}/members/{subscriber_hash}`
	- **DeleteListsIdWebhooksId**: DELETE `/lists/{list_id}/webhooks/{webhook_id}`
	- **GetListMemberTags**: GET `/lists/{list_id}/members/{subscriber_hash}/tags`
	- **GetLists**: GET `/lists`
	- **GetListsId**: GET `/lists/{list_id}`
	- **GetListsIdAbuseReports**: GET `/lists/{list_id}/abuse-reports`
	- **GetListsIdAbuseReportsId**: GET `/lists/{list_id}/abuse-reports/{report_id}`
	- **GetListsIdActivity**: GET `/lists/{list_id}/activity`
	- **GetListsIdClients**: GET `/lists/{list_id}/clients`
	- **GetListsIdGrowthHistory**: GET `/lists/{list_id}/growth-history`
	- **GetListsIdGrowthHistoryId**: GET `/lists/{list_id}/growth-history/{month}`
	- **GetListsIdInterestCategories**: GET `/lists/{list_id}/interest-categories`
	- **GetListsIdInterestCategoriesId**: GET `/lists/{list_id}/interest-categories/{interest_category_id}`
	- **GetListsIdInterestCategoriesIdInterests**: GET `/lists/{list_id}/interest-categories/{interest_category_id}/interests`
	- **GetListsIdInterestCategoriesIdInterestsId**: GET `/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}`
	- **GetListsIdLocations**: GET `/lists/{list_id}/locations`
	- **GetListsIdMembers**: GET `/lists/{list_id}/members`
	- **GetListsIdMembersId**: GET `/lists/{list_id}/members/{subscriber_hash}`
	- **GetListsIdMembersIdActivity**: GET `/lists/{list_id}/members/{subscriber_hash}/activity`
	- **GetListsIdMembersIdActivityFeed**: GET `/lists/{list_id}/members/{subscriber_hash}/activity-feed`
	- **GetListsIdMembersIdEvents**: GET `/lists/{list_id}/members/{subscriber_hash}/events`
	- **GetListsIdMembersIdGoals**: GET `/lists/{list_id}/members/{subscriber_hash}/goals`
	- **GetListsIdMembersIdNotes**: GET `/lists/{list_id}/members/{subscriber_hash}/notes`
	- **GetListsIdMembersIdNotesId**: GET `/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}`
	- **GetListsIdMergeFields**: GET `/lists/{list_id}/merge-fields`
	- **GetListsIdMergeFieldsId**: GET `/lists/{list_id}/merge-fields/{merge_id}`
	- **GetListsIdSegmentsId**: GET `/lists/{list_id}/segments/{segment_id}`
	- **GetListsIdSegmentsIdMembers**: GET `/lists/{list_id}/segments/{segment_id}/members`
	- **GetListsIdSignupForms**: GET `/lists/{list_id}/signup-forms`
	- **GetListsIdWebhooks**: GET `/lists/{list_id}/webhooks`
	- **GetListsIdWebhooksId**: GET `/lists/{list_id}/webhooks/{webhook_id}`
	- **PatchListsId**: PATCH `/lists/{list_id}`
	- **PatchListsIdInterestCategoriesId**: PATCH `/lists/{list_id}/interest-categories/{interest_category_id}`
	- **PatchListsIdInterestCategoriesIdInterestsId**: PATCH `/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}`
	- **PatchListsIdMembersId**: PATCH `/lists/{list_id}/members/{subscriber_hash}`
	- **PatchListsIdMembersIdNotesId**: PATCH `/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}`
	- **PatchListsIdMergeFieldsId**: PATCH `/lists/{list_id}/merge-fields/{merge_id}`
	- **PatchListsIdSegmentsId**: PATCH `/lists/{list_id}/segments/{segment_id}`
	- **PatchListsIdWebhooksId**: PATCH `/lists/{list_id}/webhooks/{webhook_id}`
	- **PostListMemberEvents**: POST `/lists/{list_id}/members/{subscriber_hash}/events`
	- **PostListMemberTags**: POST `/lists/{list_id}/members/{subscriber_hash}/tags`
	- **PostLists**: POST `/lists`
	- **PostListsId**: POST `/lists/{list_id}`
	- **PostListsIdInterestCategories**: POST `/lists/{list_id}/interest-categories`
	- **PostListsIdInterestCategoriesIdInterests**: POST `/lists/{list_id}/interest-categories/{interest_category_id}/interests`
	- **PostListsIdMembers**: POST `/lists/{list_id}/members`
	- **PostListsIdMembersHashActionsDeletePermanent**: POST `/lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent`
	- **PostListsIdMembersIdNotes**: POST `/lists/{list_id}/members/{subscriber_hash}/notes`
	- **PostListsIdMergeFields**: POST `/lists/{list_id}/merge-fields`
	- **PostListsIdSegments**: POST `/lists/{list_id}/segments`
	- **PostListsIdSegmentsId**: POST `/lists/{list_id}/segments/{segment_id}`
	- **PostListsIdSegmentsIdMembers**: POST `/lists/{list_id}/segments/{segment_id}/members`
	- **PostListsIdSignupForms**: POST `/lists/{list_id}/signup-forms`
	- **PostListsIdWebhooks**: POST `/lists/{list_id}/webhooks`
	- **PreviewASegment**: GET `/lists/{list_id}/segments`
	- **PutListsIdMembersId**: PUT `/lists/{list_id}/members/{subscriber_hash}`
	- **SearchTagsByName**: GET `/lists/{list_id}/tag-search`
- **MailchimpKit.Ping**
	- **GetPing**: GET `/ping`
- **MailchimpKit.Reporting**
	- **GetReportingFacebookAds**: GET `/reporting/facebook-ads`
	- **GetReportingFacebookAdsId**: GET `/reporting/facebook-ads/{outreach_id}`
	- **GetReportingFacebookAdsIdEcommerceProductActivity**: GET `/reporting/facebook-ads/{outreach_id}/ecommerce-product-activity`
	- **GetReportingLandingPages**: GET `/reporting/landing-pages`
	- **GetReportingLandingPagesId**: GET `/reporting/landing-pages/{outreach_id}`
- **MailchimpKit.Reports**
	- **GetReports**: GET `/reports`
	- **GetReportsId**: GET `/reports/{campaign_id}`
	- **GetReportsIdAbuseReportsId**: GET `/reports/{campaign_id}/abuse-reports`
	- **GetReportsIdAbuseReportsIdId**: GET `/reports/{campaign_id}/abuse-reports/{report_id}`
	- **GetReportsIdAdvice**: GET `/reports/{campaign_id}/advice`
	- **GetReportsIdClickDetails**: GET `/reports/{campaign_id}/click-details`
	- **GetReportsIdClickDetailsId**: GET `/reports/{campaign_id}/click-details/{link_id}`
	- **GetReportsIdClickDetailsIdMembers**: GET `/reports/{campaign_id}/click-details/{link_id}/members`
	- **GetReportsIdClickDetailsIdMembersId**: GET `/reports/{campaign_id}/click-details/{link_id}/members/{subscriber_hash}`
	- **GetReportsIdDomainPerformance**: GET `/reports/{campaign_id}/domain-performance`
	- **GetReportsIdEcommerceProductActivity**: GET `/reports/{campaign_id}/ecommerce-product-activity`
	- **GetReportsIdEepurl**: GET `/reports/{campaign_id}/eepurl`
	- **GetReportsIdEmailActivity**: GET `/reports/{campaign_id}/email-activity`
	- **GetReportsIdEmailActivityId**: GET `/reports/{campaign_id}/email-activity/{subscriber_hash}`
	- **GetReportsIdLocations**: GET `/reports/{campaign_id}/locations`
	- **GetReportsIdOpenDetails**: GET `/reports/{campaign_id}/open-details`
	- **GetReportsIdOpenDetailsIdMembersId**: GET `/reports/{campaign_id}/open-details/{subscriber_hash}`
	- **GetReportsIdSentTo**: GET `/reports/{campaign_id}/sent-to`
	- **GetReportsIdSentToId**: GET `/reports/{campaign_id}/sent-to/{subscriber_hash}`
	- **GetReportsIdSubReportsId**: GET `/reports/{campaign_id}/sub-reports`
	- **GetReportsIdUnsubscribed**: GET `/reports/{campaign_id}/unsubscribed`
	- **GetReportsIdUnsubscribedId**: GET `/reports/{campaign_id}/unsubscribed/{subscriber_hash}`
- **MailchimpKit.Root**
	- **GetRoot**: GET `/`
- **MailchimpKit.SearchCampaigns**
	- **GetSearchCampaigns**: GET `/search-campaigns`
- **MailchimpKit.SearchMembers**
	- **GetSearchMembers**: GET `/search-members`
- **MailchimpKit.TemplateFolders**
	- **DeleteTemplateFoldersId**: DELETE `/template-folders/{folder_id}`
	- **GetTemplateFolders**: GET `/template-folders`
	- **GetTemplateFoldersId**: GET `/template-folders/{folder_id}`
	- **PatchTemplateFoldersId**: PATCH `/template-folders/{folder_id}`
	- **PostTemplateFolders**: POST `/template-folders`
- **MailchimpKit.Templates**
	- **DeleteTemplatesId**: DELETE `/templates/{template_id}`
	- **GetTemplates**: GET `/templates`
	- **GetTemplatesId**: GET `/templates/{template_id}`
	- **GetTemplatesIdDefaultContent**: GET `/templates/{template_id}/default-content`
	- **PatchTemplatesId**: PATCH `/templates/{template_id}`
	- **PostTemplates**: POST `/templates`
- **MailchimpKit.VerifiedDomains**
	- **CreateVerifiedDomain**: POST `/verified-domains`
	- **DeleteVerifiedDomain**: DELETE `/verified-domains/{domain_name}`
	- **GetVerifiedDomain**: GET `/verified-domains/{domain_name}`
	- **GetVerifiedDomains**: GET `/verified-domains`
	- **VerifyDomain**: POST `/verified-domains/{domain_name}/actions/verify`

# MailchimpSDK-iOS

##### Table of Contents  
[Getting Started](#getting-started)  
[Installation](#installation)  
[Initializing the SDK](#initializing-the-sdk)  
[Collecting contact information](#collecting-contact-information)  
[Contact Schema](#contact-schema)  
[Collecting contact events](#collecting-contact-events)  
[Event Schema](#event-schema)

## Getting Started

### Requirements

* Deployment target iOS 12.0 or above
* Xcode version 11 or above
* Ruby 2.4 or above (for fastlane)

### Retrieving SDK Key

* See the [Mailchimp SDK documentation](https://mailchimp.com/developer/guides/mobile-sdk-ios/#Step_1._Retrieve_the_SDK_Key) for details on retrieving the key.

## Installation
### Option 1: Cocoapods
For the latest version of our SDK, add the following to your project's Podfile:
```
pod 'MailchimpSDK'
```

### Option 2: Manual
1. Clone this repository
2. Run `bundle exec fastlane create_binary_framework` to build the Swift binary framework for iOS and iOS Simulator.
3. Add the XCFramework:

  Click on the Project navigator, select your app’s target, go to the General tab, scroll down to Frameworks, Libraries, and Embedded Content. Drag the Mailchimp.xcframework from this repo into this section.

  ![Drag the framework into Frameworks, Libraries, and Embedded Content](https://user-images.githubusercontent.com/42216769/69161161-8f641480-0a9f-11ea-93ec-5599aac85423.gif)
  
  ### Option 3: Swift Package Manager
  To use Swift Package Manager, in Xcode, click File -> Swift Packages -> Add Package Dependency, enter MailchimpSDK repo's URL or you can log into Xcode with your GitHub account and just type MailchimpSDK to search.


## Initializing the SDK

The initialize method has three different fields.

* SDK Key (Required): The SDK key gives you access to your audience.
* Debug Mode (Optional): Debug Mode enables additional debug only functionality such as extra logging. This is off by default.
* Auto Tagging (Optional): Auto Tagging automatically tags contacts with information such as Device Type and Platform. This is on by default.

```swift
Mailchimp.initialize(token: sdkKey)
```

## Collecting contact information

### Adding A Contact

To add a contact to your Mailchimp audience, first instantiate a new Contact struct. Then pass the contact into the `createOrUpdate()` method. This will add the contact to your Mailchimp audience with applied merge fields and/or tags. If the contact already exists, their information will be updated with the values that were passed in.

```swift
var contact: Contact = Contact(emailAddress: "example@email.com")
let mergeFields = ["FNAME": MergeFieldValue.string("Example"),
                   "LNAME": MergeFieldValue.string("User")]
contact.status = .subscribed
contact.mergeFields = mergeFields
contact.tags = [Contact.Tag(name: "mobile-signup", status: .active)]
Mailchimp.createOrUpdate(contact: contact) { result in
    switch result {
    case .success:
        print("Successfully added or updated contact")
    case .failure(let error):
        print("Error: \(error.localizedDescription)")
    }
}
```

### Updating a Contact

You may update a contact by using the same `createOrUpdate()` method described in the Adding a Contact section.

In addition to updating a whole contact, we provide a number of methods to update a single fields on a contact. These are executed as separate network requests. To update multiple fields at once, use the `createOrUpdate()` method.

Single field update methods include

* `addTag()`: Adds a tag to the given user.
* `addTags()`: Adds multiple tags to the given user.
* `removeTag()`: Removes a tag from the given user.
* `removeTags()`: Removes multiple tags from the given user.
* `setMergeField()`: Sets or updates the merge field for a given user.

### Add/Remove Tags

```swift
Mailchimp.addTag(name: tagName,
                   emailAddress: "example@email.com") { result in
                   switch result {
                   case .success:
                       print("Successfully added tag: \(tagName)")
                   case .failure(let error):
                       print("Error: \(error.localizedDescription)")
                   }
               }

Mailchimp.removeTag(name: tagName,
                      emailAddress: "example@email.com") { result in
                      switch result {
                      case .success:
                         print("Successfully removed tag: \(tagName)")
                      case .failure(let error):
                         print("Error: \(error.localizedDescription)")
                      }
               }
```

### Set Merge Fields

```swift
Mailchimp.setMergeField(emailAddress: "example@email.com",
                          name: fieldName,
                          value: fieldValue) { result in
                          switch result {
                          case .success:
                               print("Successfully added merge field: \(fieldName), \(fieldValue)")
                          case .failure(let error):
                               print("Error: \(error.localizedDescription)")
                          }
               }
```
## Contact Schema

### Email

The Email Address is the unique identifier for each contact in an audience. An email address is required for every interaction with the SDK.

### Tags

Users can add or remove tags from their contact information. Each tag is identified using a String. If a tag has not been previously used on your account, it will be created.

#### Autotagging

If autotagging is enabled, all created or updated contacts will be automatically tagged with `iOS` and either `Phone` or `Tablet`.

### Merge Fields

Merge fields are key value pairs that can be set on each contact. They can be customized for each audience. Common examples of merge fields are first name, last name, and phone number.
The value of a merge field can be set and updated from the SDK. Merge fields are keyed off of a capitalized string. The Key does not include vertical bars on either end (ex. FNAME and not |FNAME|).

While Merge Fields can be marked as required on the audience settings, those requirements will not be enforced when using the Mailchimp SDK.

#### String Merge Fields
The majority of merge field types are represented as a String. This includes Text, Number, Radio Buttons, Drop Downs, Dates, Birthday, Phone Numbers, and Websites.

#### Address Merge Fields

Merge Fields of type address are represented as an Address struct. Addresses have three required fields, Address Line One, City, and Zip.
In addition there are three optional fields, Address Line Two, State, and Country. Below is an example of an Address object.

```swift
let address = Address(addressLineOne: "123 Chimp St.",
                      addressLineTwo: "Suite 456",
                      city: "Atlanta",
                      state: "GA",
                      zipCode: "30308",
                      country: CountryCode.USA)
```

### Contact Status

The Contact Status represents what type of communication the user has consented to. This can either be Subscribed (will receive general marketing campaigns) or Transactional (will only receive transactional emails).
This value can only be set when the contact is created. If this is set at any other time, the new value will be ignored. By default all users will be marked as transactional if this value is not set at creation.

You can subscribe a new contact to general marketing campaigns by setting `status`.

```swift
contact.status = .subscribed
```

### Marketing Permissions

Appropriate marketing permissions need to be set to communicate with any contact/s added to an audience with GDPR enabled fields. These fields specify how a contact would like their information to be used (ex: for direct mail or for customized online advertising).

Marketing permissions are set by instantiating a MarketingPermission struct with the corresponding `marketingPermissionsId` and setting `enabled` if the user granted permission for that permission ID.

```swift
let permission1 = Contact.MarketingPermission(marketingPermissionId: "permission1", enabled: true)
```

## Collecting contact events

### Adding an event

To add an event associated with a contact, first instantiate a new Event struct. Then pass the event into the `trackEventWithAttributes()` method. This will add the event to the specified contact.

```swift
let event: Event = try! Event(emailAddress: "example@email.com", name: "signup", properties: ["source": "iOS"])
Mailchimp.trackEventWithAttributes(event: event) { result in
    switch result {
    case .success:
        print("Successfully tracked an event")
    case .failure(let error):
        print("Error: \(error.localizedDescription)")
    }
}
```

## Event Schema

### Email

The Email Address is the unique identifier for each contact in an audience. An email address is required for every interaction with the SDK.

### Name

Each event is identified using a String. The maximum length of an event name is 30 characters.

### Properties

Any event can have properties associated with it. These properties have a String key and String value. Property names are limited to A-z and underscores.

## FAQ

Do you have an Android version?
>Yes! You can find it [here](https://github.com/mailchimp/Mailchimp-SDK-Android)

Why is the SDK throwing an error when I try to create a contact?
>Check that you are initializing the SDK with the correct token format. The token includes the `-us` suffix.

Why do calls silently fail?
>For security, our SDK is write-only. Contact data cannot be retrieved via the SDK. Calls fail silently so that contact data cannot be deduced from error messages. (e.g. If adding a contact failed loudly, one could deduce that the contact exists on your list.)

How do I use the SDK in my Objective-C project?
>The best way to interact with an Objective-C project is to create a Swift wrapper object that can initialize the SDK and create a contact for you.

Does the Mailchimp mobile SDK track my users?
>The Mailchimp mobile SDK does not track your users. The Mailchimp mobile SDK automatically adds your mobile application users to your Mailchimp audience so that you can send them marketing communications. Mailchimp does not provide information about your app’s users to data brokers. The mobile SDK does not combine user data from your app with information from other apps in order to place targeted advertisements. For more information regarding Mailchimp’s mobile SDK, please click [here](https://mailchimp.com/help/mobile-sdk/).