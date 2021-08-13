import Foundation

/** Check if this ad is connected to a facebook page */

public struct InlineResponse2009Feedback: Codable {
  /** Feedback regarding the content of this Ad. */
  public var content: String?
  /** Feedback regarding the audience of this Ad. */
  public var audience: String?
  /** Feedback regarding the budget of this Ad. */
  public var budget: String?
  /** Feedback regarding the compliance of this Ad. */
  public var compliance: String?

  public init(content: String? = nil, audience: String? = nil, budget: String? = nil, compliance: String? = nil) {
    self.content = content
    self.audience = audience
    self.budget = budget
    self.compliance = compliance
  }
}
