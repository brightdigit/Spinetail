import Foundation

/** Audience settings */

public struct InlineResponse2009Audience: Codable {
  public enum ModelType: String, Codable {
    case customAudience = "Custom Audience"
    case lookalikeAudience = "Lookalike Audience"
    case interestBasedAudience = "Interest-based Audience"
  }

  public enum SourceType: String, Codable {
    case facebook
    case list
  }

  /** Type of the audience */
  public var type: ModelType?
  /** List or Facebook based audience */
  public var sourceType: SourceType?
  public var emailSource: InlineResponse2009AudienceEmailSource?
  /** To include list contacts as part of audience */
  public var includeSourceInTarget: Bool?
  /** To find similar audience in given country */
  public var lookalikeCountryCode: String?
  public var targetingSpecs: InlineResponse2009AudienceTargetingSpecs?

  public init(type: ModelType? = nil, sourceType: SourceType? = nil, emailSource: InlineResponse2009AudienceEmailSource? = nil, includeSourceInTarget: Bool? = nil, lookalikeCountryCode: String? = nil, targetingSpecs: InlineResponse2009AudienceTargetingSpecs? = nil) {
    self.type = type
    self.sourceType = sourceType
    self.emailSource = emailSource
    self.includeSourceInTarget = includeSourceInTarget
    self.lookalikeCountryCode = lookalikeCountryCode
    self.targetingSpecs = targetingSpecs
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case sourceType = "source_type"
    case emailSource = "email_source"
    case includeSourceInTarget = "include_source_in_target"
    case lookalikeCountryCode = "lookalike_country_code"
    case targetingSpecs = "targeting_specs"
  }
}
