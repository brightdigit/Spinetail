import Foundation

import PrchModel
/** A collection of Facebook ads. */
public struct GetReportingFacebookAds200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var facebookAds: [GetReportingFacebookAds200ResponseFacebookAdsInnerModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, facebookAds: [GetReportingFacebookAds200ResponseFacebookAdsInnerModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.facebookAds = facebookAds
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case facebookAds = "facebook_ads"
    case totalItems = "total_items"
  }
}
