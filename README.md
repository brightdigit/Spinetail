<p align="center">
	<img alt="Spinetail" title="Spinetail" src="Assets/logo.svg" height="200">
</p>

<h1 align="center"> Spinetail </h1>

A Swift pacakge for interfacing with your Mailchimp account, audiences, campaigns, and more. 

[![SwiftPM](https://img.shields.io/badge/SPM-Linux%20%7C%20iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-success?logo=swift)](https://swift.org)
[![Twitter](https://img.shields.io/badge/twitter-@brightdigit-blue.svg?style=flat)](http://twitter.com/brightdigit)
![GitHub](https://img.shields.io/github/license/brightdigit/Spinetail)
![GitHub issues](https://img.shields.io/github/issues/brightdigit/Spinetail)

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/brightdigit/Spinetail/Spinetail?label=Actions&logo=github)
[![Bitrise](https://img.shields.io/bitrise/b2595eab70c25d1b?logo=bitrise&?label=bitrise&token=rHUhEUFkU2RUL-KGmrKX1Q)](https://app.bitrise.io/app/b2595eab70c25d1b)
[![CircleCI](https://img.shields.io/circleci/build/github/brightdigit/Spinetail?logo=circleci&?label=circle-ci&token=45c9ff6a86f9ac6c1ec8c85c3bc02f4d8859aa6b)](https://app.circleci.com/pipelines/github/brightdigit/Spinetail)

<!--
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbrightdigit%2FSpinetail%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/brightdigit/Spinetail)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbrightdigit%2FSpinetail%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/brightdigit/Spinetail)

[![Codecov](https://img.shields.io/codecov/c/github/brightdigit/Spinetail)](https://codecov.io/gh/brightdigit/Spinetail)
[![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/brightdigit/Spinetail)](https://www.codefactor.io/repository/github/brightdigit/Spinetail)
[![codebeat badge](https://codebeat.co/badges/c47b7e58-867c-410b-80c5-57e10140ba0f)](https://codebeat.co/projects/github-com-brightdigit-Spinetail-main)
[![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/brightdigit/Spinetail)](https://codeclimate.com/github/brightdigit/Spinetail)
[![Code Climate technical debt](https://img.shields.io/codeclimate/tech-debt/brightdigit/Spinetail?label=debt)](https://codeclimate.com/github/brightdigit/Spinetail)
[![Code Climate issues](https://img.shields.io/codeclimate/issues/brightdigit/Spinetail)](https://codeclimate.com/github/brightdigit/Spinetail)


[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)
-->

![Demonstration of Spinetail](Assets/SpinetailDemo.gif)

# Table of Contents

   * [**Introduction**](#introduction)
   * [**Features**](#features)
   * [**Installation**](#installation)
   * [**Usage**](#usage)
	  * [Composing Web Service Requests](#composing-web-service-requests)
		* [Setting Up Authenticated Requests](#setting-up-authenticated-requests)
		* [CloudKit and Vapor](#cloudkit-and-vapor)
	  * [Fetching Records Using a Query (records/query)](#fetching-records-using-a-query-recordsquery)
	  * [Fetching Records by Record Name (records/lookup)](#fetching-records-by-record-name-recordslookup)
	  * [Fetching Current User Identity (users/caller)](#fetching-current-user-identity-userscaller)
	  * [Modifying Records (records/modify)](#modifying-records-recordsmodify)
	  * [Using SwiftNIO](#using-swiftnio)
		 * [Using EventLoops](#using-eventloops)
		 * [Choosing an HTTP Client](#choosing-an-http-client)
	  * [Examples](#examples)
	  * [Further Code Documentation](#further-code-documentation)
   * [**Roadmap**](#roadmap)
	  * [0.2.0](#020)
	  * [**0.4.0**](#040)
	  * [0.6.0](#060)
	  * [0.8.0](#080)
	  * [0.9.0](#090)
	  * [v1.0.0](#v100)
   * [**License**](#license)



# Introduction

Spinetail is a Swift pacakge for interfacing with your Mailchimp account, audiences, campaigns, and more. 

### Demo Example

```swift
// TODO: Sample Code
```

# Installation

To integrate **Spinetail** into your project using SPM, specify it in your Package.swift file:

```swift    
let package = Package(
  ...
  dependencies: [
	.package(url: "https://github.com/brightdigit/Spinetail", from: "0.1.1")
  ],
  targets: [
	  .target(
		  name: "YourTarget",
		  dependencies: ["Spinetail", ...]),
	  ...
  ]
)
```

Spinetail uses `URLSession` for network communication via [Prch](https://github.com/brightdigit/Prch).

However if you are building a server-side application in Swift and wish to take advantage of SwiftNIO, then you'll want import [PrchNIO](https://github.com/brightdigit/PrchNIO) package as well:

```swift    
let package = Package(
  ...
  dependencies: [
	.package(url: "https://github.com/brightdigit/Spinetail", from: "0.1.1"),
	.package(url: "https://github.com/brightdigit/PrchNIO", from: "0.1.1")
  ],
  targets: [
	  .target(
		  name: "YourTarget",
		  dependencies: ["Spinetail", "PrchNIO", ...]),
	  ...
  ]
)
```

[PrchNIO](https://github.com/brightdigit/PrchNIO) adds support for `EventLoopFuture` and using the networking infrastructure already supplied by SwiftNIO.

If you are using Vapor, then you may also want to consider using SpinetailVapor package:

```swift    
let package = Package(
  ...
  dependencies: [
	.package(url: "https://github.com/brightdigit/Spinetail", from: "0.1.1"),
	.package(url: "https://github.com/brightdigit/SpinetailVapor", from: "0.1.1")
  ],
  targets: [
	  .target(
		  name: "YourTarget",
		  dependencies: ["Spinetail", "SpinetailVapor", ...]),
	  ...
  ]
)
```

The SpinetailVapor package adds helper properties and methods to help with setting up and accessing the APIClient.

# Usage 

## Search for Audience Members

## Adding new Audience Members

## Updating Existing Audience Members

## Pulling List of Campaigns

## Get Newsletter Content

## Examples

There are two examples on how to do basic CRUD methods in CloudKit via MistKit: 
* As a command line tool using Swift Argument Parser checkout [the `mistdemoc` Swift package executable here](https://github.com/brightdigit/MistKit/tree/main/Sources/mistdemoc)
* And a server-side Vapor application [`mistdemod` here](https://github.com/brightdigit/MistKit/tree/main/Sources/mistdemoc)

## Further Code Documentation

[Documentation Here](/Documentation/Reference/README.md)

## Operation

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

let getUserRequest = User.GetUser.Request(id: 123)
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

Each [Request](#request) also has a `makeRequest` convenience function that uses `shared`.

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

- **ActivityFeed**
	- **GetActivityFeedChimpChatter**: GET `/activity-feed/chimp-chatter`
- **AuthorizedApps**
	- **GetAuthorizedApps**: GET `/authorized-apps`
	- **GetAuthorizedAppsId**: GET `/authorized-apps/{app_id}`
- **Automations**
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
- **Batches**
	- **DeleteBatchesId**: DELETE `/batches/{batch_id}`
	- **GetBatches**: GET `/batches`
	- **GetBatchesId**: GET `/batches/{batch_id}`
	- **PostBatches**: POST `/batches`
- **BatchWebhooks**
	- **DeleteBatchWebhookId**: DELETE `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhook**: GET `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhooks**: GET `/batch-webhooks`
	- **PatchBatchWebhooks**: PATCH `/batch-webhooks/{batch_webhook_id}`
	- **PostBatchWebhooks**: POST `/batch-webhooks`
- **CampaignFolders**
	- **DeleteCampaignFoldersId**: DELETE `/campaign-folders/{folder_id}`
	- **GetCampaignFolders**: GET `/campaign-folders`
	- **GetCampaignFoldersId**: GET `/campaign-folders/{folder_id}`
	- **PatchCampaignFoldersId**: PATCH `/campaign-folders/{folder_id}`
	- **PostCampaignFolders**: POST `/campaign-folders`
- **Campaigns**
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
- **ConnectedSites**
	- **DeleteConnectedSitesId**: DELETE `/connected-sites/{connected_site_id}`
	- **GetConnectedSites**: GET `/connected-sites`
	- **GetConnectedSitesId**: GET `/connected-sites/{connected_site_id}`
	- **PostConnectedSites**: POST `/connected-sites`
	- **PostConnectedSitesIdActionsVerifyScriptInstallation**: POST `/connected-sites/{connected_site_id}/actions/verify-script-installation`
- **Conversations**
	- **GetConversations**: GET `/conversations`
	- **GetConversationsId**: GET `/conversations/{conversation_id}`
	- **GetConversationsIdMessages**: GET `/conversations/{conversation_id}/messages`
	- **GetConversationsIdMessagesId**: GET `/conversations/{conversation_id}/messages/{message_id}`
- **CustomerJourneys**
	- **PostCustomerJourneysJourneysIdStepsIdActionsTrigger**: POST `/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger`
- **Ecommerce**
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
- **FacebookAds**
	- **GetAllFacebookAds**: GET `/facebook-ads`
	- **GetFacebookAdsId**: GET `/facebook-ads/{outreach_id}`
- **FileManager**
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
- **LandingPages**
	- **DeleteLandingPageId**: DELETE `/landing-pages/{page_id}`
	- **GetAllLandingPages**: GET `/landing-pages`
	- **GetLandingPageId**: GET `/landing-pages/{page_id}`
	- **GetLandingPageIdContent**: GET `/landing-pages/{page_id}/content`
	- **PatchLandingPageId**: PATCH `/landing-pages/{page_id}`
	- **PostAllLandingPages**: POST `/landing-pages`
	- **PostLandingPageIdActionsPublish**: POST `/landing-pages/{page_id}/actions/publish`
	- **PostLandingPageIdActionsUnpublish**: POST `/landing-pages/{page_id}/actions/unpublish`
- **Lists**
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
- **Ping**
	- **GetPing**: GET `/ping`
- **Reporting**
	- **GetReportingFacebookAds**: GET `/reporting/facebook-ads`
	- **GetReportingFacebookAdsId**: GET `/reporting/facebook-ads/{outreach_id}`
	- **GetReportingFacebookAdsIdEcommerceProductActivity**: GET `/reporting/facebook-ads/{outreach_id}/ecommerce-product-activity`
	- **GetReportingLandingPages**: GET `/reporting/landing-pages`
	- **GetReportingLandingPagesId**: GET `/reporting/landing-pages/{outreach_id}`
- **Reports**
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
- **Root**
	- **GetRoot**: GET `/`
- **SearchCampaigns**
	- **GetSearchCampaigns**: GET `/search-campaigns`
- **SearchMembers**
	- **GetSearchMembers**: GET `/search-members`
- **TemplateFolders**
	- **DeleteTemplateFoldersId**: DELETE `/template-folders/{folder_id}`
	- **GetTemplateFolders**: GET `/template-folders`
	- **GetTemplateFoldersId**: GET `/template-folders/{folder_id}`
	- **PatchTemplateFoldersId**: PATCH `/template-folders/{folder_id}`
	- **PostTemplateFolders**: POST `/template-folders`
- **Templates**
	- **DeleteTemplatesId**: DELETE `/templates/{template_id}`
	- **GetTemplates**: GET `/templates`
	- **GetTemplatesId**: GET `/templates/{template_id}`
	- **GetTemplatesIdDefaultContent**: GET `/templates/{template_id}/default-content`
	- **PatchTemplatesId**: PATCH `/templates/{template_id}`
	- **PostTemplates**: POST `/templates`
- **VerifiedDomains**
	- **CreateVerifiedDomain**: POST `/verified-domains`
	- **DeleteVerifiedDomain**: DELETE `/verified-domains/{domain_name}`
	- **GetVerifiedDomain**: GET `/verified-domains/{domain_name}`
	- **GetVerifiedDomains**: GET `/verified-domains`
	- **VerifyDomain**: POST `/verified-domains/{domain_name}/actions/verify`


# License 

This code is distributed under the MIT license. See the [LICENSE](LICENSE) file for more info.
