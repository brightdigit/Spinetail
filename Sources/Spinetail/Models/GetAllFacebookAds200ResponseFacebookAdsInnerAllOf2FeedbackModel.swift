import Foundation

import PrchModel
/** Check if this ad is connected to a facebook page */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2FeedbackModel: Codable, Equatable, Content {
  /** Feedback regarding the audience of this Ad. */
  public var audience: String?

  /** Feedback regarding the budget of this Ad. */
  public var budget: String?

  /** Feedback regarding the compliance of this Ad. */
  public var compliance: String?

  /** Feedback regarding the content of this Ad. */
  public var content: String?

  public init(audience: String? = nil, budget: String? = nil, compliance: String? = nil, content: String? = nil) {
    self.audience = audience
    self.budget = budget
    self.compliance = compliance
    self.content = content
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case audience
    case budget
    case compliance
    case content
  }
}
