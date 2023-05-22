import Foundation

import PrchModel
/** A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */
public struct ABSplitModel: Codable, Equatable, Content {
  public var a: GroupAModel?

  public var b: GroupBModel?

  public init(a: GroupAModel? = nil, b: GroupBModel? = nil) {
    self.a = a
    self.b = b
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case a
    case b
  }
}
