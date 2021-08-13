import Foundation

public struct InlineResponse2009AudienceTargetingSpecs: Codable {
  public var gender: Int?
  public var minAge: Int?
  public var maxAge: Int?
  public var locations: InlineResponse2009AudienceTargetingSpecsLocations?
  public var interests: [InlineResponse2009AudienceTargetingSpecsInterests]?

  public init(gender: Int? = nil, minAge: Int? = nil, maxAge: Int? = nil, locations: InlineResponse2009AudienceTargetingSpecsLocations? = nil, interests: [InlineResponse2009AudienceTargetingSpecsInterests]? = nil) {
    self.gender = gender
    self.minAge = minAge
    self.maxAge = maxAge
    self.locations = locations
    self.interests = interests
  }

  public enum CodingKeys: String, CodingKey {
    case gender
    case minAge = "min_age"
    case maxAge = "max_age"
    case locations
    case interests
  }
}
