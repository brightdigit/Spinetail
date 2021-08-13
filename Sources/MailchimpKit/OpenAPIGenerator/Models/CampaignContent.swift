import Foundation

/** The HTML and plain-text content for a campaign. */

public struct CampaignContent: Codable {
  /** Content options for multivariate campaigns. */
  public var variateContents: [CampaignContentVariateContents]?
  /** The plain-text portion of the campaign. If left unspecified, we&#x27;ll generate this automatically. */
  public var plainText: String?
  /** The raw HTML for the campaign. */
  public var html: String?
  /** The Archive HTML for the campaign. */
  public var archiveHtml: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(variateContents: [CampaignContentVariateContents]? = nil, plainText: String? = nil, html: String? = nil, archiveHtml: String? = nil, links: [ResourceLink]? = nil) {
    self.variateContents = variateContents
    self.plainText = plainText
    self.html = html
    self.archiveHtml = archiveHtml
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case variateContents = "variate_contents"
    case plainText = "plain_text"
    case html
    case archiveHtml = "archive_html"
    case links = "_links"
  }
}
