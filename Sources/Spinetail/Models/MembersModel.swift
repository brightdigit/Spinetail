import Foundation

import PrchModel
/** Members found for given search term */
public struct MembersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var exactMatches: ExactMatchesModel?

  public var fullSearch: PartialMatchesModel?

  public init(links: [ResourceLinkModel]? = nil, exactMatches: ExactMatchesModel? = nil, fullSearch: PartialMatchesModel? = nil) {
    self.links = links
    self.exactMatches = exactMatches
    self.fullSearch = fullSearch
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case exactMatches = "exact_matches"
    case fullSearch = "full_search"
  }
}
