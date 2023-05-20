//import Prch
//import Spinetail
//
//import Foundation
//
//extension Client where APIType == Mailchimp.API {
//  func createTemplate(withName name: String, andHTML html: String) throws -> Templates.PostTemplates.Response.SuccessType {
//    let templateRequest = Templates.PostTemplates.Request(body: .init(html: html, name: name))
//    return try requestSync(templateRequest)
//  }
//
//  func createCampaign(withTemplateID templateID: Int, fromName name: String, replyTo: String, subjectLine: String, toListID listID: String) throws -> Campaigns.PostCampaigns.Response.SuccessType {
//    let settings: Campaigns.PostCampaigns.Request.Body.Settings = .init(fromName: name, replyTo: replyTo, subjectLine: subjectLine, templateId: templateID)
//    let body: Campaigns.PostCampaigns.Request.Body = .init(type: .regular, contentType: .template, recipients: .init(listId: listID), settings: settings)
//    let request = Campaigns.PostCampaigns.Request(body: body)
//    return try requestSync(request)
//  }
//}

import Foundation
import Prch
import Spinetail

class MailchimpService : Service {
  convenience init?(apiKey : String,  session: URLSession = .shared) {
    guard let api = SpinetailAPI(apiKey: apiKey) else {
      return nil
    }
    
    self.init(api: api, session:  session)
  }
  
  internal init(api: SpinetailAPI, session: URLSession = .shared) {
    self.session = session
    self.api = api
  }
  
  
  let session: URLSession
  
  let api: Spinetail.SpinetailAPI
  
  
  typealias SessionType = URLSession
  
  let authorizationManager : any SessionAuthenticationManager = NullAuthorizationManager<URLSession.AuthorizationType>()
  
  typealias ServiceAPI = SpinetailAPI
  
  
}
