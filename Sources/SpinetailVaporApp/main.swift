import Vapor
import Spinetail
import SpinetailVapor


struct MissingValueError : Error {
  
}
guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
  fatalError()
}
let app = try Application(.detect())
defer { app.shutdown() }
try! app.mailchimp.configure(withAPIKey: apiKey)
app.get("hello") { req -> EventLoopFuture<HTTPStatus> in
  let client = req.mailchimp.client
  
  let subject = req.query["subject"] ?? "Hello World"
  let body = req.query["body"] ?? "Hello World"
  return client.request(
    Templates.PostTemplates.Request(body: .init(html: body, name: "hello-world"))
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
        settings: .init(fromName: "Leo", replyTo: "leogdion+mailchimpdev@brightdigit.com", subjectLine: subject, templateId: templateId)
      ))
  }.flatMap(client.request).flatMapThrowing { response -> Campaigns.PostCampaignsIdActionsSend.Request in
    guard let campaignId = response.success?.id else {
      throw MissingValueError()
    }
    return Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignId)
  }.flatMap(client.request).flatMapThrowing { response in
      .init(statusCode: response.statusCode)
    
    
  }
}

try app.run()
