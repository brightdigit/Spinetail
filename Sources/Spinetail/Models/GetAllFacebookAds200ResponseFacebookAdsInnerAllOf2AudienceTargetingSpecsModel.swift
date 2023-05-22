import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsModel: Codable, Equatable, Content {
  public var gender: Int?

  public var interests: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInnerModel]?

  public var locations: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocationsModel?

  public var maxAge: Int?

  public var minAge: Int?

  public init(gender: Int? = nil, interests: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInnerModel]? = nil, locations: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocationsModel? = nil, maxAge: Int? = nil, minAge: Int? = nil) {
    self.gender = gender
    self.interests = interests
    self.locations = locations
    self.maxAge = maxAge
    self.minAge = minAge
  }

  public enum CodingKeys: String, CodingKey {
    case gender
    case interests
    case locations
    case maxAge = "max_age"
    case minAge = "min_age"
  }
}
