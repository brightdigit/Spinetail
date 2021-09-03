import Foundation
import Prch

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public struct MailchimpAPI: API {
  public let apiKey: String
  public let dc: String
  public let baseURL: URL
  public let headers: [String: String]

  /// Whether to discard any errors when decoding optional properties
  public static let safeOptionalDecoding = false

  /// Whether to remove invalid elements instead of throwing when decoding arrays
  public static let safeArrayDecoding = false

  /// Used to encode Dates when uses as string params
  public static let dateEncodingFormatter = DateFormatter(formatString: "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
                                                          locale: Locale(identifier: "en_US_POSIX"),
                                                          calendar: Calendar(identifier: .gregorian))
  public let decoder: ResponseDecoder = {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .formatted(Self.dateEncodingFormatter)
    return decoder
  }()

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
