import Foundation

import PrchModel
/** Default content for a template. */
public struct TemplateDefaultContentModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The sections that you can edit in the template, including each section's default content. */
  public var sections: [String: [String: String]]?

  public init(links: [ResourceLinkModel]? = nil, sections: [String: [String: String]]? = nil) {
    self.links = links
    self.sections = sections
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case sections
  }
}
