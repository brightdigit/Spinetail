import Foundation

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public struct MailchimpAPI: API {
  public let apiKey: String
  public let dc: String
  public let baseURL: URL
  public let headers: [String: String]

  public init?(apiKey: String) {
    self.apiKey = apiKey
    let apiKeyComponents = apiKey.components(separatedBy: "-")

    guard let dc = apiKeyComponents.last, apiKeyComponents.count == 2 else {
      return nil
    }

    self.dc = dc

    guard let baseURL = URL(string: "https://\(dc).api.mailchimp.com/3.0") else {
      return nil
    }
    self.baseURL = baseURL

    let authentication = BasicAuthentication(userName: "anystring", password: apiKey)
    headers = [
      "Authorization": "\(BasicAuthentication.name) \(authentication.value)",
      "Content-type": "application/json; charset=utf-8"
    ]
  }
}
