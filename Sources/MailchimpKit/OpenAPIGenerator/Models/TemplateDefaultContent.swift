import Foundation

/** Default content for a template. */

public struct TemplateDefaultContent: Codable {
  /** The sections that you can edit in the template, including each section&#x27;s default content. */
  public var sections: [String: String]?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(sections: [String: String]? = nil, links: [ResourceLink]? = nil) {
    self.sections = sections
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case sections
    case links = "_links"
  }
}
