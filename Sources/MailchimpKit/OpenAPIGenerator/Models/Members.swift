import Foundation

/** Members found for given search term */

public struct Members: Codable {
  public var exactMatches: ExactMatches?
  public var fullSearch: PartialMatches?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(exactMatches: ExactMatches? = nil, fullSearch: PartialMatches? = nil, links: [ResourceLink]? = nil) {
    self.exactMatches = exactMatches
    self.fullSearch = fullSearch
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case exactMatches = "exact_matches"
    case fullSearch = "full_search"
    case links = "_links"
  }
}
