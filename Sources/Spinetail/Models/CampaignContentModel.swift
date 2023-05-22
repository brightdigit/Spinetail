import Foundation

import PrchModel
/** The HTML and plain-text content for a campaign. */
public struct CampaignContentModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The Archive HTML for the campaign. */
  public var archiveHtml: String?

  /** The raw HTML for the campaign. */
  public var html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public var plainText: String?

  /** Content options for multivariate campaigns. */
  public var variateContents: [VariateContentsInnerModel]?

  public init(links: [ResourceLinkModel]? = nil, archiveHtml: String? = nil, html: String? = nil, plainText: String? = nil, variateContents: [VariateContentsInnerModel]? = nil) {
    self.links = links
    self.archiveHtml = archiveHtml
    self.html = html
    self.plainText = plainText
    self.variateContents = variateContents
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case archiveHtml = "archive_html"
    case html
    case plainText = "plain_text"
    case variateContents = "variate_contents"
  }
}
