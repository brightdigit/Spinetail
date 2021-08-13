import Foundation

/** A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */

public struct ABSplit: Codable {
  public var a: GroupA?
  public var b: GroupB?

  public init(a: GroupA? = nil, b: GroupB? = nil) {
    self.a = a
    self.b = b
  }
}
