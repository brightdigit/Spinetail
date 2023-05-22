import Foundation

import PrchModel
public struct VisitsInnerModel: Codable, Equatable, Content {
  public var date: String?

  public var val: Int?

  public init(date: String? = nil, val: Int? = nil) {
    self.date = date
    self.val = val
  }

  public enum CodingKeys: String, CodingKey {
    case date
    case val
  }
}
