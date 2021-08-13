import Foundation

public struct CampaignContentVariateContents: Codable {
  /** Label used to identify the content option. */
  public var contentLabel: String?
  /** The plain-text portion of the campaign. If left unspecified, we&#x27;ll generate this automatically. */
  public var plainText: String?
  /** The raw HTML for the campaign. */
  public var html: String?

  public init(contentLabel: String? = nil, plainText: String? = nil, html: String? = nil) {
    self.contentLabel = contentLabel
    self.plainText = plainText
    self.html = html
  }

  public enum CodingKeys: String, CodingKey {
    case contentLabel = "content_label"
    case plainText = "plain_text"
    case html
  }
}
