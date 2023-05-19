# Spinetail

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `Spinetail` namespace and within an optional tag: `Spinetail(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

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

let getUserRequest = Spinetail.User.GetUser.Request(id: 123)
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

Each [Request](#request) also has a `makeRequest` convenience function that uses `Spinetail.default`.

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
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `Spinetail`:

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

- **ABSplitModel**
- **ABSplitStatsModel**
- **ABTestOptions1Model**
- **ABTestOptions2Model**
- **ABTestOptionsModel**
- **ABTestingOptionsModel**
- **APIHealthStatusModel**
- **APIRootModel**
- **AbandonedBrowseAutomationModel**
- **AbandonedCartAutomationModel**
- **AbuseComplaint1Model**
- **AbuseComplaintModel**
- **AbuseComplaints1Model**
- **AbuseComplaintsModel**
- **AccountContactModel**
- **AccountExportsInnerModel**
- **AddListMembers1Model**
- **AddListMembers2Model**
- **AddListMembers3Model**
- **AddListMembersModel**
- **AddWebhookModel**
- **Address1Model**
- **AddressModel**
- **AnOptionForSignupFormStylesModel**
- **AuthorizedApplicationsInnerModel**
- **AutomationCampaignSettings1Model**
- **AutomationCampaignSettingsModel**
- **AutomationDelay1Model**
- **AutomationDelayModel**
- **AutomationEmailsModel**
- **AutomationTrackingOptionsModel**
- **AutomationTrigger1Model**
- **AutomationTriggerModel**
- **AutomationWorkflow1Model**
- **AutomationWorkflowEmailModel**
- **AutomationWorkflowModel**
- **AutomationWorkflowRuntimeSettingsModel**
- **AutomationsModel**
- **BatchAddRemoveListMembersToFromStaticSegmentModel**
- **BatchDeliveryModel**
- **BatchModel**
- **BatchOperationsModel**
- **BatchUpdateListMembersModel**
- **BatchWebhook1Model**
- **BatchWebhook2Model**
- **BatchWebhookModel**
- **BatchWebhooksModel**
- **BillingAddress1Model**
- **BillingAddressModel**
- **BouncesModel**
- **Campaign1Model**
- **Campaign2Model**
- **Campaign3Model**
- **CampaignAModel**
- **CampaignAdviceModel**
- **CampaignAdviceReportModel**
- **CampaignBModel**
- **CampaignContent1Model**
- **CampaignContentModel**
- **CampaignDefaults1Model**
- **CampaignDefaultsModel**
- **CampaignDeliveryStatusModel**
- **CampaignFeedback1Model**
- **CampaignFeedback2Model**
- **CampaignFeedback3Model**
- **CampaignFeedbackModel**
- **CampaignFolder1Model**
- **CampaignFolderModel**
- **CampaignFoldersModel**
- **CampaignModel**
- **CampaignReportModel**
- **CampaignReportSummary1Model**
- **CampaignReportSummary2Model**
- **CampaignReportSummary3Model**
- **CampaignReportSummaryModel**
- **CampaignReports1Model**
- **CampaignReportsModel**
- **CampaignSettings1Model**
- **CampaignSettings2Model**
- **CampaignSettings3Model**
- **CampaignSettings4Model**
- **CampaignSettings5Model**
- **CampaignSettingsModel**
- **CampaignSocialCardModel**
- **CampaignSubReportsModel**
- **CampaignTrackingOptions1Model**
- **CampaignTrackingOptionsModel**
- **CampaignsModel**
- **CapsuleCRMTracking1Model**
- **CapsuleCRMTracking2Model**
- **CapsuleCRMTrackingModel**
- **CartLinesModel**
- **CartsModel**
- **ChimpChatterModel**
- **ClickDetailMemberModel**
- **ClickDetailMembersModel**
- **ClickDetailReportModel**
- **ClickSummaryModel**
- **Clicks1Inner1Model**
- **Clicks1InnerModel**
- **ClicksModel**
- **CollectionAuthorizationModel**
- **CollectionOfContentForListSignupFormsModel**
- **CollectionOfConversationMessagesModel**
- **CollectionOfElementStyleForListSignupFormsModel**
- **CollectionOfEventsModel**
- **CollectionOfMemberActivityEventsModel**
- **CollectionOfMergeFieldsModel**
- **CollectionOfNotesModel**
- **CollectionOfSegmentsModel**
- **CollectionOfTagsModel**
- **CombinationsInnerModel**
- **Conditions1Model**
- **Conditions2Model**
- **ConditionsModel**
- **ConnectedSite1Model**
- **ConnectedSite2Model**
- **ConnectedSiteModel**
- **ConnectedSitesModel**
- **ContactCountsModel**
- **ContactModel**
- **ConversationMessageModel**
- **ConversationModel**
- **CreateAnAccountExportModel**
- **CustomersModel**
- **DailyClicksAndVisitsDataModel**
- **DailyListActivityModel**
- **DailySendingDaysModel**
- **DomainPerformanceModel**
- **ECommerceCart1Model**
- **ECommerceCart2Model**
- **ECommerceCartLineItem1Model**
- **ECommerceCartLineItem2Model**
- **ECommerceCartLineItemModel**
- **ECommerceCartModel**
- **ECommerceCustomer1Model**
- **ECommerceCustomer2Model**
- **ECommerceCustomer3Model**
- **ECommerceCustomer4Model**
- **ECommerceCustomerModel**
- **ECommerceOrder1Model**
- **ECommerceOrder2Model**
- **ECommerceOrderLineItem1Model**
- **ECommerceOrderLineItem2Model**
- **ECommerceOrderLineItemModel**
- **ECommerceOrderModel**
- **ECommerceProduct1Model**
- **ECommerceProduct2Model**
- **ECommerceProductImage1Model**
- **ECommerceProductImage2Model**
- **ECommerceProductImageModel**
- **ECommerceProductModel**
- **ECommerceProductVariant1Model**
- **ECommerceProductVariant2Model**
- **ECommerceProductVariantModel**
- **ECommercePromoCode1Model**
- **ECommercePromoCode2Model**
- **ECommercePromoCodeModel**
- **ECommercePromoRule1Model**
- **ECommercePromoRule2Model**
- **ECommercePromoRuleModel**
- **ECommerceReport1Model**
- **ECommerceReportModel**
- **ECommerceStore1Model**
- **ECommerceStore2Model**
- **ECommerceStoreModel**
- **ECommerceStoresModel**
- **EcommerceProductImagesModel**
- **EcommerceProductVariantsModel**
- **EcommerceStatsModel**
- **EepurlActivityModel**
- **EmailActivityModel**
- **EmailClientModel**
- **EmailClientsModel**
- **EmailDomainModel**
- **ErrorsInner1Model**
- **ErrorsInnerModel**
- **EventModel**
- **Events1Model**
- **Events2Model**
- **EventsModel**
- **ExactMatchesModel**
- **FacebookLikesModel**
- **FileManagerFoldersModel**
- **FileManagerModel**
- **ForwardsModel**
- **GalleryFile1Model**
- **GalleryFile2Model**
- **GalleryFileModel**
- **GalleryFolder1Model**
- **GalleryFolderModel**
- **GetAccountExports200ResponseModel**
- **GetActivityFeedChimpChatter200ResponseModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf1Model**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceEmailSourceModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInnerModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocationsModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInnerModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2FeedbackModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Model**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2SiteModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf3Model**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOfModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerModel**
- **GetAllFacebookAds200ResponseModel**
- **GetAllLandingPages200ResponseModel**
- **GetAuthorizedApps200ResponseModel**
- **GetAutomations200ResponseModel**
- **GetAutomationsIdEmailsIdQueue200ResponseModel**
- **GetCampaigns200ResponseModel**
- **GetFacebookAdsId200ResponseModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInnerModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInnerModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInnerModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAtModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerModel**
- **GetReportingFacebookAds200ResponseModel**
- **GetReportingFacebookAdsId200ResponseModel**
- **GetReportingLandingPages200ResponseModel**
- **GetReportingSurveys200ResponseModel**
- **GetReportingSurveysIdQuestions200ResponseModel**
- **GetReportingSurveysIdQuestionsIdAnswers200ResponseModel**
- **GetReportingSurveysIdResponses200ResponseModel**
- **GetReportsIdEcommerceProductActivity200ResponseModel**
- **GetReportsIdEcommerceProductActivity200ResponseProductsInnerModel**
- **GoalModel**
- **GroupAModel**
- **GroupBModel**
- **GrowthHistoryModel**
- **HoursModel**
- **IndustryStats1Model**
- **IndustryStatsModel**
- **Interest1Model**
- **InterestCategory1Model**
- **InterestCategoryModel**
- **InterestGroupingsModel**
- **InterestModel**
- **InterestsModel**
- **ItemsInnerModel**
- **LandingPage1Model**
- **LandingPage2Model**
- **LandingPageContentModel**
- **LandingPageModel**
- **LandingPageReportEcommerceModel**
- **LandingPageReportModel**
- **LandingPageReportTimeseriesModel**
- **LastMessageModel**
- **List10Model**
- **List1Model**
- **List2Model**
- **List3Model**
- **List4Model**
- **List5Model**
- **List6Model**
- **List7Model**
- **List8Model**
- **List9Model**
- **ListActivityModel**
- **ListContact1Model**
- **ListContact2Model**
- **ListContactModel**
- **ListLocationModel**
- **ListLocationsModel**
- **ListMembers1Model**
- **ListMembers2Model**
- **ListMembersModel**
- **ListModel**
- **ListSignupFormsModel**
- **ListStatsModel**
- **ListWebhooksModel**
- **ListsInnerModel**
- **Location1Model**
- **Location2Model**
- **Location3Model**
- **LocationModel**
- **MarketingPermission1Model**
- **MarketingPermissionModel**
- **MemberActivity1Model**
- **MemberActivity2Model**
- **MemberActivityEvents1Model**
- **MemberActivityEventsModel**
- **MemberActivityModel**
- **MemberNotes1Model**
- **MemberNotesModel**
- **MemberTagModel**
- **MemberTagsModel**
- **MembersModel**
- **MembersToAddRemoveToFromaStaticSegmentModel**
- **MembersToSubscribeUnsubscribeToFromaListInBatchModel**
- **MergeField1Model**
- **MergeField2Model**
- **MergeField3Model**
- **MergeFieldModel**
- **MergeFieldOptions1Model**
- **MergeFieldOptions2Model**
- **MergeFieldOptionsModel**
- **NotesModel**
- **OpenActivityModel**
- **OpenDetailReportModel**
- **OpenLocationsModel**
- **OpensModel**
- **OperationsModel**
- **OptionsInnerModel**
- **OrderLinesModel**
- **Orders1Model**
- **OrdersModel**
- **Outreach1Model**
- **OutreachModel**
- **PartialMatchesModel**
- **PostBatchesRequestModel**
- **PostCampaignsIdActionsScheduleRequestModel**
- **PostCampaignsIdActionsTestRequestModel**
- **PostListsIdSegmentsIdMembersRequestModel**
- **ProblemDetailDocumentModel**
- **ProductsModel**
- **PromoCodesModel**
- **PromoRulesModel**
- **PromosInner1Model**
- **PromosInnerModel**
- **RSSOptions1Model**
- **RSSOptions2Model**
- **RSSOptions3Model**
- **RSSOptionsModel**
- **ReferrerModel**
- **RemovedSubscribersModel**
- **ResourceLinkModel**
- **ResponseModel**
- **ResultsInnerModel**
- **SalesforceCRMTracking1Model**
- **SalesforceCRMTrackingModel**
- **Script1Model**
- **ScriptModel**
- **SegmentMembersModel**
- **SegmentOptions1Model**
- **SegmentOptions2Model**
- **SegmentOptionsModel**
- **SendChecklistModel**
- **SendingSchedule1Model**
- **SendingScheduleModel**
- **SentToModel**
- **ShareReportModel**
- **ShippingAddress1Model**
- **ShippingAddressModel**
- **SignupForm1Model**
- **SignupFormHeaderOptionsModel**
- **SignupFormModel**
- **Sources1Model**
- **SourcesModel**
- **StatisticsModel**
- **SubscriberInAutomationQueue1Model**
- **SubscriberInAutomationQueue2Model**
- **SubscriberInAutomationQueueModel**
- **SubscriberInCustomerJourneysAudienceModel**
- **SubscriberList1Model**
- **SubscriberList2Model**
- **SubscriberListModel**
- **SubscriberListsModel**
- **SubscriberRemovedFromAutomationWorkflowModel**
- **SubscriberStats1Model**
- **SubscriberStatsModel**
- **SurveyQuestionAnswerModel**
- **SurveyQuestionReportModel**
- **SurveyReportModel**
- **SurveyRespondentsModel**
- **SurveyResponseModel**
- **TagModel**
- **TagSearchResultsModel**
- **TagsInner1Model**
- **TagsInner2Model**
- **TagsInnerModel**
- **TemplateContent1Model**
- **TemplateContentModel**
- **TemplateDefaultContentModel**
- **TemplateFolder1Model**
- **TemplateFolderModel**
- **TemplateFoldersModel**
- **TemplateInstance1Model**
- **TemplateInstanceModel**
- **TemplatesModel**
- **TimeseriesInnerModel**
- **TimewarpStatsInnerModel**
- **TrackedConversationsModel**
- **TrackingSettingsModel**
- **TwitterStatsModel**
- **TwitterStatusModel**
- **UniqueVisitsInnerModel**
- **UnsubscribesModel**
- **UpdateInformationAboutaSpecificWorkflowEmailModel**
- **UploadArchiveModel**
- **VariateContentsInner1Model**
- **VariateContentsInnerModel**
- **VerifiedDomains1Model**
- **VerifiedDomains2Model**
- **VerifiedDomainsModel**
- **VerifyaDomainForSendingModel**
- **VisitsInner1Model**
- **VisitsInnerModel**
- **WeeklyClicksAndVisitsDataModel**

## Requests

- **Spinetail.STAccountExport**
	- **GetAccountExportId**: GET `/account-exports/{export_id}`
- **Spinetail.STAccountExports**
	- **GetAccountExports**: GET `/account-exports`
	- **PostAccountExport**: POST `/account-exports`
- **Spinetail.STActivityFeed**
	- **GetActivityFeedChimpChatter**: GET `/activity-feed/chimp-chatter`
- **Spinetail.STAuthorizedApps**
	- **GetAuthorizedApps**: GET `/authorized-apps`
	- **GetAuthorizedAppsId**: GET `/authorized-apps/{app_id}`
- **Spinetail.STAutomations**
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
- **Spinetail.STBatches**
	- **DeleteBatchesId**: DELETE `/batches/{batch_id}`
	- **GetBatches**: GET `/batches`
	- **GetBatchesId**: GET `/batches/{batch_id}`
	- **PostBatches**: POST `/batches`
- **Spinetail.STBatchWebhooks**
	- **DeleteBatchWebhookId**: DELETE `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhook**: GET `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhooks**: GET `/batch-webhooks`
	- **PatchBatchWebhooks**: PATCH `/batch-webhooks/{batch_webhook_id}`
	- **PostBatchWebhooks**: POST `/batch-webhooks`
- **Spinetail.STCampaignFolders**
	- **DeleteCampaignFoldersId**: DELETE `/campaign-folders/{folder_id}`
	- **GetCampaignFolders**: GET `/campaign-folders`
	- **GetCampaignFoldersId**: GET `/campaign-folders/{folder_id}`
	- **PatchCampaignFoldersId**: PATCH `/campaign-folders/{folder_id}`
	- **PostCampaignFolders**: POST `/campaign-folders`
- **Spinetail.STCampaigns**
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
- **Spinetail.STConnectedSites**
	- **DeleteConnectedSitesId**: DELETE `/connected-sites/{connected_site_id}`
	- **GetConnectedSites**: GET `/connected-sites`
	- **GetConnectedSitesId**: GET `/connected-sites/{connected_site_id}`
	- **PostConnectedSites**: POST `/connected-sites`
	- **PostConnectedSitesIdActionsVerifyScriptInstallation**: POST `/connected-sites/{connected_site_id}/actions/verify-script-installation`
- **Spinetail.STConversations**
	- **GetConversations**: GET `/conversations`
	- **GetConversationsId**: GET `/conversations/{conversation_id}`
	- **GetConversationsIdMessages**: GET `/conversations/{conversation_id}/messages`
	- **GetConversationsIdMessagesId**: GET `/conversations/{conversation_id}/messages/{message_id}`
- **Spinetail.STCustomerJourneys**
	- **PostCustomerJourneysJourneysIdStepsIdActionsTrigger**: POST `/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger`
- **Spinetail.STEcommerce**
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
- **Spinetail.STFacebookAds**
	- **GetAllFacebookAds**: GET `/facebook-ads`
	- **GetFacebookAdsId**: GET `/facebook-ads/{outreach_id}`
- **Spinetail.STFileManager**
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
- **Spinetail.STLandingPages**
	- **DeleteLandingPageId**: DELETE `/landing-pages/{page_id}`
	- **GetAllLandingPages**: GET `/landing-pages`
	- **GetLandingPageId**: GET `/landing-pages/{page_id}`
	- **GetLandingPageIdContent**: GET `/landing-pages/{page_id}/content`
	- **PatchLandingPageId**: PATCH `/landing-pages/{page_id}`
	- **PostAllLandingPages**: POST `/landing-pages`
	- **PostLandingPageIdActionsPublish**: POST `/landing-pages/{page_id}/actions/publish`
	- **PostLandingPageIdActionsUnpublish**: POST `/landing-pages/{page_id}/actions/unpublish`
- **Spinetail.STLists**
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
	- **GetListsIdSurveys**: GET `/lists/{list_id}/surveys`
	- **GetListsIdSurveysId**: GET `/lists/{list_id}/surveys/{survey_id}`
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
- **Spinetail.STPing**
	- **GetPing**: GET `/ping`
- **Spinetail.STReporting**
	- **GetReportingFacebookAds**: GET `/reporting/facebook-ads`
	- **GetReportingFacebookAdsId**: GET `/reporting/facebook-ads/{outreach_id}`
	- **GetReportingFacebookAdsIdEcommerceProductActivity**: GET `/reporting/facebook-ads/{outreach_id}/ecommerce-product-activity`
	- **GetReportingLandingPages**: GET `/reporting/landing-pages`
	- **GetReportingLandingPagesId**: GET `/reporting/landing-pages/{outreach_id}`
	- **GetReportingSurveys**: GET `/reporting/surveys`
	- **GetReportingSurveysId**: GET `/reporting/surveys/{outreach_id}`
	- **GetReportingSurveysIdQuestions**: GET `/reporting/surveys/{outreach_id}/questions`
	- **GetReportingSurveysIdQuestionsId**: GET `/reporting/surveys/{outreach_id}/questions/{question_id}`
	- **GetReportingSurveysIdQuestionsIdAnswers**: GET `/reporting/surveys/{outreach_id}/questions/{question_id}/answers`
	- **GetReportingSurveysIdResponses**: GET `/reporting/surveys/{outreach_id}/responses`
	- **GetReportingSurveysIdResponsesId**: GET `/reporting/surveys/{outreach_id}/responses/{response_id}`
- **Spinetail.STReports**
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
- **Spinetail.STRoot**
	- **GetRoot**: GET `/`
- **Spinetail.STSearchCampaigns**
	- **GetSearchCampaigns**: GET `/search-campaigns`
- **Spinetail.STSearchMembers**
	- **GetSearchMembers**: GET `/search-members`
- **Spinetail.STSurveys**
	- **PostListsIdSurveysIdActionsPublish**: POST `/lists/{list_id}/surveys/{survey_id}/actions/publish`
	- **PostListsIdSurveysIdActionsUnpublish**: POST `/lists/{list_id}/surveys/{survey_id}/actions/unpublish`
- **Spinetail.STTemplateFolders**
	- **DeleteTemplateFoldersId**: DELETE `/template-folders/{folder_id}`
	- **GetTemplateFolders**: GET `/template-folders`
	- **GetTemplateFoldersId**: GET `/template-folders/{folder_id}`
	- **PatchTemplateFoldersId**: PATCH `/template-folders/{folder_id}`
	- **PostTemplateFolders**: POST `/template-folders`
- **Spinetail.STTemplates**
	- **DeleteTemplatesId**: DELETE `/templates/{template_id}`
	- **GetTemplates**: GET `/templates`
	- **GetTemplatesId**: GET `/templates/{template_id}`
	- **GetTemplatesIdDefaultContent**: GET `/templates/{template_id}/default-content`
	- **PatchTemplatesId**: PATCH `/templates/{template_id}`
	- **PostTemplates**: POST `/templates`
- **Spinetail.STVerifiedDomains**
	- **CreateVerifiedDomain**: POST `/verified-domains`
	- **DeleteVerifiedDomain**: DELETE `/verified-domains/{domain_name}`
	- **GetVerifiedDomain**: GET `/verified-domains/{domain_name}`
	- **GetVerifiedDomains**: GET `/verified-domains`
	- **VerifyDomain**: POST `/verified-domains/{domain_name}/actions/verify`
