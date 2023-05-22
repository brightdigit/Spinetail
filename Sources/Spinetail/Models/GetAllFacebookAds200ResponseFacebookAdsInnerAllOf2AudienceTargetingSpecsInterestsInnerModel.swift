import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInnerModel: Codable, Equatable, Content {
  public var name: String?

  public init(name: String? = nil) {
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case name
  }
}
