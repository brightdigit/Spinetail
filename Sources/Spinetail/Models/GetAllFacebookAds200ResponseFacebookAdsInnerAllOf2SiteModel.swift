import Foundation

import PrchModel
/** Connected Site */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2SiteModel: Codable, Equatable, Content {
  /** The ID of this connected site. */
  public var id: Int?

  /** The name of the connected site */
  public var name: String?

  /** The URL for this connected site. */
  public var url: String?

  public init(id: Int? = nil, name: String? = nil, url: String? = nil) {
    self.id = id
    self.name = name
    self.url = url
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
    case name
    case url
  }
}
