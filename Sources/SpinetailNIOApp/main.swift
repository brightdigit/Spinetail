
import Foundation
import Prch
import Spinetail
import SpinetailNIO
import AsyncHTTPClient

let httpClient = HTTPClient(eventLoopGroupProvider: .createNew)

guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
  fatalError()
}
guard let api = MailchimpAPI(apiKey: apiKey) else {
  fatalError()
}
let client = APIClient(api: api, session: httpClient)

struct MissingValueError : Error {
  
}


let response = try! client.request(
  Templates.PostTemplates.Request(body: .init(html: "Hello World", name: "hello-world"))
).flatMapThrowing { response -> Campaigns.PostCampaigns.Request in
  guard let templateId = response.success?.id else {
    throw MissingValueError()
  }
  return Campaigns.PostCampaigns.Request(body:
    .init(
      type: .regular,
      contentType: .template,
      recipients: .init(
        listId: "6f357ca335"
      ),
      settings: .init(fromName: "Leo", replyTo: "leogdion+mailchimpdev@brightdigit.com", subjectLine: "Hello World", templateId: templateId)
    ))
}.flatMap(client.request).flatMapThrowing { response -> Campaigns.PostCampaignsIdActionsSend.Request in
  guard let campaignId = response.success?.id else {
    throw MissingValueError()
  }
  return Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignId)
}.flatMap(client.request).wait()


dump(response)
//
//{ result in
//  guard let templateId = try? result.get().success?.id else {
//    return
//  }
//  let request = Campaigns.PostCampaigns.Request(body:
//    .init(
//      type: .regular,
//      contentType: .template,
//      recipients: .init(
//        listId: "6f357ca335"
//      ),
//      settings: .init(fromName: "Leo", replyTo: "leogdion+mailchimpdev@brightdigit.com", subjectLine: "Hello World", templateId: templateId)
//    ))
//  client.request(request) { result in
//    switch result {
//    case let .success(.status200(response)):
//      guard let campaignId = response.id else {
//        debugPrint("response: \(response)")
//        break
//      }
//      client.request(Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignId)) { result in
//        switch result {
//        case .success(.status204):
//          debugPrint("campaign sent")
//
//        case let .success(.defaultResponse(statusCode: code, response)):
//          debugPrint("status: \(response)")
//
//        case let .failure(error):
//          debugPrint("error: \(error)")
//        }
//        exp.fulfill()
//      }
//      return
//
//    case let .success(.defaultResponse(statusCode: code, response)):
//      debugPrint("status: \(response)")
//
//    case let .failure(error):
//      debugPrint("error: \(error)")
//    }
//    exp.fulfill()
//  }
//}
