import Foundation

public struct InlineResponse2009AudienceTargetingSpecsLocations: Codable {
  public var countries: [String]?
  public var regions: [String]?
  public var cities: [String]?
  public var zips: [String]?

  public init(countries: [String]? = nil, regions: [String]? = nil, cities: [String]? = nil, zips: [String]? = nil) {
    self.countries = countries
    self.regions = regions
    self.cities = cities
    self.zips = zips
  }
}
