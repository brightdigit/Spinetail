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

![Demonstration of Spinetail](Assets/SpinetailDemo.mp4)

<!--ts-->
# Table of Contents

* [Introduction](#introduction)
* [Features](#features)
* [Installation](#installation)
* [Setting Up Your Mailchimp Client with Prch](#setting-up-your-mailchimp-client-with-prch)
* [Usage](#usage)
   * [Audience List Members](#audience-list-members)
	  * [Getting an Audience List Member](#getting-an-audience-list-member)
		 * [Closure-based Completion](#closure-based-completion)
		 * [Async/Await](#asyncawait)
		 * [Synchronous](#synchronous)
	  * [Adding new Audience List Members](#adding-new-audience-list-members)
	  * [Updating Existing Audience List Members](#updating-existing-audience-list-members)
	  * [Putting it together in Vapor](#putting-it-together-in-vapor)
   * [Templates and Campaigns](#templates-and-campaigns)
	  * [Pulling List of Campaigns](#pulling-list-of-campaigns)
	  * [Get Newsletter Content](#get-newsletter-content)
	  * [Creating a Template](#creating-a-template)
	  * [Send an Campaign Email to Our Audience List](#send-an-campaign-email-to-our-audience-list)
* [Requests](#requests)
   * [Fully Supported](#fully-supported)
	  * [Campaigns](#campaigns)
	  * [Lists](#lists)
	  * [Templates](#templates)
   * [Testing Pending](#testing-pending)
	  * [Template Folders](#template-folders)
	  * [Search Campaigns](#search-campaigns)
	  * [Search Members](#search-members)
	  * [Reports](#reports)
	  * [Root](#root)
   * [Pending Next Support](#pending-next-support)
	  * [File Manager](#file-manager)
	  * [Batches](#batches)
	  * [Automations](#automations)
   * [Remaining Requests](#remaining-requests)
	  * [Activity Feed](#activity-feed)
	  * [Authorized Apps](#authorized-apps)
	  * [Connected Sites](#connected-sites)
	  * [Conversations](#conversations)
	  * [Customer Journeys](#customer-journeys)
	  * [Ecommerce Stores](#ecommerce-stores)
	  * [Facebook Ads](#facebook-ads)
	  * [Landing Pages](#landing-pages)
	  * [Verified Domains](#verified-domains)
* [License](#license)


<!--te-->

# Introduction

Spinetail is a Swift package for interfacing with your Mailchimp account, audiences, campaigns, and more. 

### Demo Example



# Features 

Here's what's currently implemented with this library:

- [x] Pulling Your Current List of Newsletters and Campaigns
- [x] Get Your Audience List
- [x] Add to Your Audience List
- [x] Updating Subscriber Tags

... and more

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

# Setting Up Your Mailchimp Client with Prch

In order to get started with the Mailchimp API, [make sure you have created an API key](https://mailchimp.com/developer/marketing/guides/quick-start/#generate-your-api-key). Typically the API key looks something like this:

```
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-us00
```

Once you have that, decide what you'll be using for your session depending on your platform:

* `URLSession` - iOS, tvOS, watchOS, macOS
* `AsyncHTTPClient` via `PrchNIO` - Linux Server
* `Vapor.Client` via `PrchVapor` - Vapor

Here's an example for setting up a client for Mailchimp on a standard Apple platform app:
 
```swift
let api = MailchimpAPI(apiKey: "")
let client = Client(api: api, session: URLSession.shared)
```

Now that we have setup the client, we'll be using let's begin to access the Mailchimp API.

# Usage 

To make a request via `Prch`, we have three options using our `client`:

* closure-based completion calls
* async/await 
* synchronous calls

Let's start with an example using audience member lists.

## Audience List Members

### Getting an Audience List Member

According to [the documentation for the Mailchimp API](https://mailchimp.com/developer/marketing/api/list-members/get-member-info/), we can get a member of our audience list based on their _subscriber_hash_.
This is described as:

> The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.

The means we can use:
* MD5 hash of the lowercase version of the list member's email address _but also_
* email address or
* `contact_id`

In our case, we'll be using an email address to see if we have someone subscribed. 
Additionally we need our audience's `listID` which is found on the audience settings page.

![ListID at the Mailchimp Admin Page](Assets/Mailchimp-listID.png)

With that email address, we can create a `Request`:

```swift
import Spinetail 

let api = MailchimpAPI(apiKey: "")
let client = Client(api: api, session: URLSession.shared)
let request = Lists.GetListsIdMembersId.Request(listId: listId, subscriberHash: emailAddress)
```

As previously noted there are three ways to execute a call:

#### Closure-based Completion

```swift
client.request(request) { result in
  switch result {
  case let .success(member):
  	// Successful Retrieval
	break
  case let .defaultResponse(statusCode, response):
  	// Non-2xx Response (ex. 404 member not found)
	break
  case let .failure(error):
  	// Other Errors (ex. networking, decoding or encoding JSON...)
	break
  }
}
```


#### Async/Await 

```swift
do {
  // Successful Retrieval
  let member = try await client.request(request)
} catch let error as ClientResponseResult<Lists.GetListsIdMembersId.Response>.FailedResponseError {
  // Non-2xx Response (ex. 404 member not found)
} catch  {
  // Other Errors (ex. networking, decoding or encoding JSON...)
}
```

#### Synchronous

```swift
do {
  // Successful Retrieval
  let member = try client.requestSync(request)
} catch let error as ClientResponseResult<Lists.GetListsIdMembersId.Response>.FailedResponseError {
  // Non-2xx Response (ex. 404 member not found)
} catch  {
  // Other Errors (ex. networking, decoding or encoding JSON...)
}
```

In each case there are possible results:

* The call was successful
* The call failed but the response was valid such as a 4xx status code
* The call failed due to an internal error (ex. decoding, encoding, networking, etc...)

An example of where we'd want to handle a 404 for instance is when we want to add or update a subscriber 
when someone signs up for a service. If the member is not found, we want go ahead and add that subscriber.

### Adding new Audience List Members

To [add a new audience member](https://mailchimp.com/developer/marketing/api/list-members/add-member-to-list/) we need to create a `Lists.PostListsIdMembers.Request`:

```swift
let request = Lists.PostListsIdMembers.Request(
  listId: listID, 
  body: .init(
    emailAddress: emailAddress, 
	status: .subscribed, 
	timestampOpt: .init(), 
	timestampSignup: .init()
  )
)
```

Now that we have a request let's use the completion handler call for adding a new member:

```swift
client.request(request) { result in
  switch result {
  case let .success(newMember):
	  // Successful Adding
	break
  case let .defaultResponse(statusCode, response):
	  // Non-2xx Response
	break
  case let .failure(error):
	  // Other Errors (ex. networking, decoding or encoding JSON...)
	break
  }
}
```

### Updating Existing Audience List Members

Let's say our attempt to find an existing subscriber member succeeds but we need to [update the member's interests](https://mailchimp.com/developer/marketing/api/list-members/update-list-member/). 
We can get `subscriberHash` from our found member and the [`interestID` can be queried](https://mailchimp.com/developer/marketing/api/interests/list-interests-in-category/). 

```swift
// get the subscriber hash id
let subscriberHash = member.id
let patch = Lists.PatchListsIdMembersId.Request(
  body: .init(
    emailAddress: emailAddress,
	emailType: nil, 
	interests: [interestID: true] 
  ), 
  options: .init(
    listId: Self.listID, 
	subscriberHash: subscriberHash
  )
)
```

### Putting it together in Vapor

Here's an example in Vapor using Fluent Middleware

```swift
import Fluent
import Prch
import PrchVapor
import Spinetail
import Vapor

struct MailchimpMiddleware: ModelMiddleware {
  // our client created during server initialization
  let client: Prch.Client<PrchVapor.SessionClient, Spinetail.Mailchimp.API>
  
  // the list id
  let listID: String
  
  // the interest id 
  let interestID : String

  func upsertSubscriptionForUser(_ user: User, withEventLoop eventLoop: EventLoop) -> EventLoopFuture<Void> {
	let memberRequest = Lists.GetListsIdMembersId.Request(listId: listID, subscriberHash: user.email)
	// find the subscription member
	return client.request(memberRequest).flatMapThrowing { response -> in
	  switch response {
	  case .defaultResponse(statusCode: 404, _):
		return nil
	  case let .status200(member):
		return member
	  default:
		throw ClientError.invalidResponse
	  }

	}.flatMap { member in
	  // if the subscriber already exists and has the interest id, don't do anything
	  if member?.interests?[self.interestID] == true {
		return eventLoop.future()
	  // if the subscriber already exists but doesn't have the interest id
	  } else if let subscriberHash = member?.id {
	  	// update the subscriber
		let patch = Lists.PatchListsIdMembersId.Request(body: .init(emailAddress: user.email, emailType: nil, interests: [self.interestID: true]), options: Lists.PatchListsIdMembersId.Request.Options(listId: self.listID, subscriberHash: subscriberHash))
		// transform to `Void` on success
		return client.request(patch).success()
	  // if the subscriber doesn't already exists
	  } else {
	  	// update the subscriber add them
		let post = Lists.PostListsIdMembers.Request(listId: self.listID, body: .init(emailAddress: user.email, status: Lists.PostListsIdMembers.Request.Body.Status.subscribed, interests: [self.interestID: true], timestampOpt: .init(), timestampSignup: .init()))
		// transform to `Void` on success
		return client.request(post).success()
	  }
	}
  }

  // after adding the row to the db, add the user to our subscription list with the interest id
  func create(model: User, on db: Database, next: AnyModelResponder) -> EventLoopFuture<Void> {
	next.create(model, on: db).transform(to: model).flatMap { user in
	  self.upsertSubscriptionForUser(user, withEventLoop: db.eventLoop)
	}
  }
}
```

Now that we have an example dealing with managing members, let's look at how to get a list of campaigns and email our subscribers in Swift.

## Templates and Campaigns

With newsletters there are [campaigns](https://mailchimp.com/developer/marketing/api/campaigns/) and [templates](https://mailchimp.com/developer/marketing/api/templates/). 
_Campaigns_ are how you send emails to your Mailchimp list. A _template_ is an HTML file used to create the layout and basic design for a campaign.
Before creating our own campaign and template, let's look at how to pull a list of campaigns.

### Pulling List of Campaigns

On the BrightDigit web site, I want to link to each newsletter that's sent out. To do this you just need the `listID` again.
We'll be pulling up to 1000 sent campaigns sorted from last sent to first sent:

```swift
let request = Campaigns.GetCampaigns.Request(
  count: 1000, 
  status: .sent, 
  listId: listID, 
  sortField: .sendTime, 
  sortDir: .desc
)
let response = try self.requestSync(request)
let campaigns = response.campaigns ?? []
```

To get the content we to grab it based on each campaign's `campaignID`.

### Get Newsletter Content

Before grabbing the content, we need to grab the `campaignID` from the campaign:

```swift
let campaign : Campaigns.GetCampaigns.Response.Status200.Campaigns
let html: String

guard let campaignID = campaign.id else {
  return
}

html = try self.htmlFromCampaign(withID: campaignProperties.campaignID)
```

### Creating a Template

To actually send we need to create an [template](https://mailchimp.com/developer/marketing/api/templates/) using [the
`POST` request](https://mailchimp.com/developer/marketing/api/templates/add-template/). Here's an example with async and await:

```swift
let templateName = "Example Email"
let templateHTML = "<strong>Hello World</strong>"
let templateRequest = Templates.PostTemplates.Request(body: .init(html: templateHTML, name: templateName))
let template = try await client.request(templateRequest)
```

Let's use the template to create a campaign and send it.


### Send an Campaign Email to Our Audience List

```swift
// make sure to get the templateID
guard let templateID = template.id else {
  return
}

// set the email settings
let settings: Campaigns.PostCampaigns.Request.Body.Settings = .init(
  fromName: "Leo", 
  replyTo: "leo@brightdigit.com", 
  subjectLine: "Hello World - Test Email", 
  templateId: templateID
)
// set the type and list you're sending to
let body: Campaigns.PostCampaigns.Request.Body = .init(
  type: .regular, 
  contentType: .template, 
  recipients: .init(listId: listID), 
  settings: settings
)
let request = Campaigns.PostCampaigns.Request(body: body)
await client.request(request)
```

# Requests

## Fully Supported

### Campaigns

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteCampaignsId                                   |        |            | ✅       |
| DeleteCampaignsIdFeedbackId                         |        |            | ✅       |
| GetCampaigns                                        |        |            | ✅       |
| GetCampaignsId                                      |        |            | ✅       |
| GetCampaignsIdContent                               |        | ✅          | ✅       |
| GetCampaignsIdFeedback                              |        |            | ✅       |
| GetCampaignsIdFeedbackId                            |        |            | ✅       |
| GetCampaignsIdSendChecklist                         |        |            | ✅       |
| PatchCampaignsId                                    |        |            | ✅       |
| PatchCampaignsIdFeedbackId                          |        |            | ✅       |
| PostCampaigns                                       | ✅      | ✅          | ✅       |
| PostCampaignsIdActionsCancelSend                    |        |            | ✅       |
| PostCampaignsIdActionsCreateResend                  |        |            | ✅       |
| PostCampaignsIdActionsPause                         |        |            | ✅       |
| PostCampaignsIdActionsReplicate                     |        |            | ✅       |
| PostCampaignsIdActionsResume                        |        |            | ✅       |
| PostCampaignsIdActionsSchedule                      |        |            | ✅       |
| PostCampaignsIdActionsSend                          |        |            | ✅       |
| PostCampaignsIdActionsTest                          |        |            | ✅       |
| PostCampaignsIdActionsUnschedule                    |        |            | ✅       |
| PostCampaignsIdFeedback                             |        |            | ✅       |
| PutCampaignsIdContent                               |        |            | ✅       |

### Lists


| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteListsId                                       |        |            | ✅       |
| DeleteListsIdInterestCategoriesId                   |        |            | ✅       |
| DeleteListsIdInterestCategoriesIdInterestsId        |        |            | ✅       |
| DeleteListsIdMembersId                              |        |            | ✅       |
| DeleteListsIdMembersIdNotesId                       |        |            | ✅       |
| DeleteListsIdMergeFieldsId                          |        |            | ✅       |
| DeleteListsIdSegmentsId                             |        |            | ✅       |
| DeleteListsIdSegmentsIdMembersId                    |        |            | ✅       |
| DeleteListsIdWebhooksId                             |        |            | ✅       |
| GetListMemberTags                                   |        |            | ✅       |
| GetLists                                            |        |            | ✅       |
| GetListsId                                          |        |            | ✅       |
| GetListsIdAbuseReports                              |        |            | ✅       |
| GetListsIdAbuseReportsId                            |        |            | ✅       |
| GetListsIdActivity                                  |        |            | ✅       |
| GetListsIdClients                                   |        |            | ✅       |
| GetListsIdGrowthHistory                             |        |            | ✅       |
| GetListsIdGrowthHistoryId                           |        |            | ✅       |
| GetListsIdInterestCategories                        |        |            | ✅       |
| GetListsIdInterestCategoriesId                      |        |            | ✅       |
| GetListsIdInterestCategoriesIdInterests             |        |            | ✅       |
| GetListsIdInterestCategoriesIdInterestsId           |        |            | ✅       |
| GetListsIdLocations                                 |        |            | ✅       |
| GetListsIdMembers                                   |        |            | ✅       |
| GetListsIdMembersId                                 | ✅      | ✅          | ✅       |
| GetListsIdMembersIdActivity                         |        |            | ✅       |
| GetListsIdMembersIdActivityFeed                     |        |            | ✅       |
| GetListsIdMembersIdEvents                           |        |            | ✅       |
| GetListsIdMembersIdGoals                            |        |            | ✅       |
| GetListsIdMembersIdNotes                            |        |            | ✅       |
| GetListsIdMembersIdNotesId                          |        |            | ✅       |
| GetListsIdMergeFields                               |        |            | ✅       |
| GetListsIdMergeFieldsId                             |        |            | ✅       |
| GetListsIdSegmentsId                                |        |            | ✅       |
| GetListsIdSegmentsIdMembers                         |        |            | ✅       |
| GetListsIdSignupForms                               |        |            | ✅       |
| GetListsIdWebhooks                                  |        |            | ✅       |
| GetListsIdWebhooksId                                |        |            | ✅       |
| PatchListsId                                        |        |            | ✅       |
| PatchListsIdInterestCategoriesId                    |        |            | ✅       |
| PatchListsIdInterestCategoriesIdInterestsId         |        |            | ✅       |
| PatchListsIdMembersId                               | ✅      | ✅          | ✅       |
| PatchListsIdMembersIdNotesId                        |        |            | ✅       |
| PatchListsIdMergeFieldsId                           |        |            | ✅       |
| PatchListsIdSegmentsId                              |        |            | ✅       |
| PatchListsIdWebhooksId                              |        |            | ✅       |
| PostListMemberEvents                                |        |            | ✅       |
| PostListMemberTags                                  |        |            | ✅       |
| PostLists                                           |        |            | ✅       |
| PostListsId                                         |        |            | ✅       |
| PostListsIdInterestCategories                       |        |            | ✅       |
| PostListsIdInterestCategoriesIdInterests            |        |            | ✅       |
| PostListsIdMembers                                  | ✅      | ✅          | ✅       |
| PostListsIdMembersHashActionsDeletePermanent        |        |            | ✅       |
| PostListsIdMembersIdNotes                           |        |            | ✅       |
| PostListsIdMergeFields                              |        |            | ✅       |
| PostListsIdSegments                                 |        |            | ✅       |
| PostListsIdSegmentsId                               |        |            | ✅       |
| PostListsIdSegmentsIdMembers                        |        |            | ✅       |
| PostListsIdSignupForms                              |        |            | ✅       |
| PostListsIdWebhooks                                 |        |            | ✅       |
| PreviewASegment                                     |        |            | ✅       |
| PutListsIdMembersId                                 |        |            | ✅       |
| SearchTagsByName                                    |        |            | ✅       |

### Templates

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetTemplates                                        |        |            | ✅       |
| GetTemplatesId                                      |        |            | ✅       |
| GetTemplatesIdDefaultContent                        |        |            | ✅       |
| PatchTemplatesId                                    |        |            | ✅       |
| PostTemplates                                       | ✅      | ✅          | ✅       |

## Testing Pending


| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteCampaignFoldersId                             |        |            | ✅      |
| GetCampaignFolders                                  |        |            | ✅      |
| GetCampaignFoldersId                                |        |            | ✅      |
| PatchCampaignFoldersId                              |        |            | ✅      |
| PostCampaignFolders                                 |        |            | ✅      |

### Template Folders

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteTemplateFoldersId                             |        |            | ✅       |
| GetTemplateFolders                                  |        |            | ✅       |
| GetTemplateFoldersId                                |        |            | ✅       |
| PatchTemplateFoldersId                              |        |            | ✅       |
| PostTemplateFolders                                 |        |            | ✅       |
| DeleteTemplatesId                                   |        |            | ✅       |

### Search Campaigns

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetSearchCampaigns                                  |        |            | ✅       |

### Search Members

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetSearchMembers                                    |        |            | ✅       |

### Reports

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetReports                                          |        |            | ✅       |
| GetReportsId                                        |        |            | ✅       |
| GetReportsIdAbuseReportsId                          |        |            | ✅       |
| GetReportsIdAbuseReportsIdId                        |        |            | ✅       |
| GetReportsIdAdvice                                  |        |            | ✅       |
| GetReportsIdClickDetails                            |        |            | ✅       |
| GetReportsIdClickDetailsId                          |        |            | ✅       |
| GetReportsIdClickDetailsIdMembers                   |        |            | ✅       |
| GetReportsIdClickDetailsIdMembersId                 |        |            | ✅       |
| GetReportsIdDomainPerformance                       |        |            | ✅       |
| GetReportsIdEcommerceProductActivity                |        |            | ✅       |
| GetReportsIdEepurl                                  |        |            | ✅       |
| GetReportsIdEmailActivity                           |        |            | ✅       |
| GetReportsIdEmailActivityId                         |        |            | ✅       |
| GetReportsIdLocations                               |        |            | ✅       |
| GetReportsIdOpenDetails                             |        |            | ✅       |
| GetReportsIdOpenDetailsIdMembersId                  |        |            | ✅       |
| GetReportsIdSentTo                                  |        |            | ✅       |
| GetReportsIdSentToId                                |        |            | ✅       |
| GetReportsIdSubReportsId                            |        |            | ✅       |
| GetReportsIdUnsubscribed                            |        |            | ✅       |
| GetReportsIdUnsubscribedId                          |        |            | ✅       |

### Root

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetRoot                                             |        |            | ✅       |

## Pending Next Support

### File Manager

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteFileManagerFilesId                            |        |            |         |
| DeleteFileManagerFoldersId                          |        |            |         |
| GetFileManagerFiles                                 |        |            |         |
| GetFileManagerFilesId                               |        |            |         |
| GetFileManagerFolders                               |        |            |         |
| GetFileManagerFoldersId                             |        |            |         |
| PatchFileManagerFilesId                             |        |            |         |
| PatchFileManagerFoldersId                           |        |            |         |
| PostFileManagerFiles                                |        |            |         |
| PostFileManagerFolders                              |        |            |         |

### Batches

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteBatchesId                                     |        |            |         |
| GetBatches                                          |        |            |         |
| GetBatchesId                                        |        |            |         |
| PostBatches                                         |        |            |         |
| DeleteBatchWebhookId                                |        |            |         |
| GetBatchWebhook                                     |        |            |         |
| GetBatchWebhooks                                    |        |            |         |
| PatchBatchWebhooks                                  |        |            |         |
| PostBatchWebhooks                                   |        |            |         |

### Automations

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| ArchiveAutomations                                  |        |            |         |
| DeleteAutomationsIdEmailsId                         |        |            |         |
| GetAutomations                                      |        |            |         |
| GetAutomationsId                                    |        |            |         |
| GetAutomationsIdEmails                              |        |            |         |
| GetAutomationsIdEmailsId                            |        |            |         |
| GetAutomationsIdEmailsIdQueue                       |        |            |         |
| GetAutomationsIdEmailsIdQueueId                     |        |            |         |
| GetAutomationsIdRemovedSubscribers                  |        |            |         |
| GetAutomationsIdRemovedSubscribersId                |        |            |         |
| PatchAutomationEmailWorkflowId                      |        |            |         |
| PostAutomations                                     |        |            |         |
| PostAutomationsIdActionsPauseAllEmails              |        |            |         |
| PostAutomationsIdActionsStartAllEmails              |        |            |         |
| PostAutomationsIdEmailsIdActionsPause               |        |            |         |
| PostAutomationsIdEmailsIdActionsStart               |        |            |         |
| PostAutomationsIdEmailsIdQueue                      |        |            |         |
| PostAutomationsIdRemovedSubscribers                 |        |            |         |

## Remaining Requests

### Activity Feed

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetActivityFeedChimpChatter                         |        |            |         |

### Authorized Apps

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetAuthorizedApps                                   |        |            |         |
| GetAuthorizedAppsId                                 |        |            |         |

### Connected Sites

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteConnectedSitesId                              |        |            |         |
| GetConnectedSites                                   |        |            |         |
| GetConnectedSitesId                                 |        |            |         |
| PostConnectedSites                                  |        |            |         |
| PostConnectedSitesIdActionsVerifyScriptInstallation |        |            |         |

### Conversations

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetConversations                                    |        |            |         |
| GetConversationsId                                  |        |            |         |
| GetConversationsIdMessages                          |        |            |         |
| GetConversationsIdMessagesId                        |        |            |         |

### Customer Journeys

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| PostCustomerJourneysJourneysIdStepsIdActionsTrigger |        |            |         |

### Ecommerce Stores

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteEcommerceStoresId                             |        |            |         |
| DeleteEcommerceStoresIdCartsId                      |        |            |         |
| DeleteEcommerceStoresIdCartsLinesId                 |        |            |         |
| DeleteEcommerceStoresIdCustomersId                  |        |            |         |
| DeleteEcommerceStoresIdOrdersId                     |        |            |         |
| DeleteEcommerceStoresIdOrdersIdLinesId              |        |            |         |
| DeleteEcommerceStoresIdProductsId                   |        |            |         |
| DeleteEcommerceStoresIdProductsIdImagesId           |        |            |         |
| DeleteEcommerceStoresIdProductsIdVariantsId         |        |            |         |
| DeleteEcommerceStoresIdPromocodesId                 |        |            |         |
| DeleteEcommerceStoresIdPromorulesId                 |        |            |         |
| GetEcommerceOrders                                  |        |            |         |
| GetEcommerceStores                                  |        |            |         |
| GetEcommerceStoresId                                |        |            |         |
| GetEcommerceStoresIdCarts                           |        |            |         |
| GetEcommerceStoresIdCartsId                         |        |            |         |
| GetEcommerceStoresIdCartsIdLines                    |        |            |         |
| GetEcommerceStoresIdCartsIdLinesId                  |        |            |         |
| GetEcommerceStoresIdCustomers                       |        |            |         |
| GetEcommerceStoresIdCustomersId                     |        |            |         |
| GetEcommerceStoresIdOrders                          |        |            |         |
| GetEcommerceStoresIdOrdersId                        |        |            |         |
| GetEcommerceStoresIdOrdersIdLines                   |        |            |         |
| GetEcommerceStoresIdOrdersIdLinesId                 |        |            |         |
| GetEcommerceStoresIdProducts                        |        |            |         |
| GetEcommerceStoresIdProductsId                      |        |            |         |
| GetEcommerceStoresIdProductsIdImages                |        |            |         |
| GetEcommerceStoresIdProductsIdImagesId              |        |            |         |
| GetEcommerceStoresIdProductsIdVariants              |        |            |         |
| GetEcommerceStoresIdProductsIdVariantsId            |        |            |         |
| GetEcommerceStoresIdPromocodes                      |        |            |         |
| GetEcommerceStoresIdPromocodesId                    |        |            |         |
| GetEcommerceStoresIdPromorules                      |        |            |         |
| GetEcommerceStoresIdPromorulesId                    |        |            |         |
| PatchEcommerceStoresId                              |        |            |         |
| PatchEcommerceStoresIdCartsId                       |        |            |         |
| PatchEcommerceStoresIdCartsIdLinesId                |        |            |         |
| PatchEcommerceStoresIdCustomersId                   |        |            |         |
| PatchEcommerceStoresIdOrdersId                      |        |            |         |
| PatchEcommerceStoresIdOrdersIdLinesId               |        |            |         |
| PatchEcommerceStoresIdProductsId                    |        |            |         |
| PatchEcommerceStoresIdProductsIdImagesId            |        |            |         |
| PatchEcommerceStoresIdProductsIdVariantsId          |        |            |         |
| PatchEcommerceStoresIdPromocodesId                  |        |            |         |
| PatchEcommerceStoresIdPromorulesId                  |        |            |         |
| PostEcommerceStores                                 |        |            |         |
| PostEcommerceStoresIdCarts                          |        |            |         |
| PostEcommerceStoresIdCartsIdLines                   |        |            |         |
| PostEcommerceStoresIdCustomers                      |        |            |         |
| PostEcommerceStoresIdOrders                         |        |            |         |
| PostEcommerceStoresIdOrdersIdLines                  |        |            |         |
| PostEcommerceStoresIdProducts                       |        |            |         |
| PostEcommerceStoresIdProductsIdImages               |        |            |         |
| PostEcommerceStoresIdProductsIdVariants             |        |            |         |
| PostEcommerceStoresIdPromocodes                     |        |            |         |
| PostEcommerceStoresIdPromorules                     |        |            |         |
| PutEcommerceStoresIdCustomersId                     |        |            |         |
| PutEcommerceStoresIdProductsIdVariantsId            |        |            |         |

### Facebook Ads

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| GetAllFacebookAds                                   |        |            |         |
| GetFacebookAdsId                                    |        |            |         |

### Landing Pages

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| DeleteLandingPageId                                 |        |            |         |
| GetAllLandingPages                                  |        |            |         |
| GetLandingPageId                                    |        |            |         |
| GetLandingPageIdContent                             |        |            |         |
| PatchLandingPageId                                  |        |            |         |
| PostAllLandingPages                                 |        |            |         |
| PostLandingPageIdActionsPublish                     |        |            |         |
| PostLandingPageIdActionsUnpublish                   |        |            |         |

### Verified Domains

| Request                                             | Tested | Documented | watchOS |
| --------------------------------------------------- | ------ | ---------- | ------- |
| CreateVerifiedDomain                                |        |            |         |
| DeleteVerifiedDomain                                |        |            |         |
| GetVerifiedDomain                                   |        |            |         |
| GetVerifiedDomains                                  |        |            |         |
| VerifyDomain                                        |        |		   |         |

# License 

This code is distributed under the MIT license. See the [LICENSE](LICENSE) file for more info.
