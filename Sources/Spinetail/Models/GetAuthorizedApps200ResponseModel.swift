import Foundation

import PrchModel
/** An array of objects, each representing an authorized application. */
public struct GetAuthorizedApps200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing an authorized application. */
  public var apps: [AuthorizedApplicationsInnerModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, apps: [AuthorizedApplicationsInnerModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.apps = apps
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case apps
    case totalItems = "total_items"
  }
}
