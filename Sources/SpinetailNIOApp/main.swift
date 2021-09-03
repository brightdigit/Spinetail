
import Foundation
import Prch
import Spinetail
import PrchNIO
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
