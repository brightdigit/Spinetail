import Foundation

public struct CampaignscampaignIdcontentVariateContents: Codable {
  /** The label used to identify the content option. */
  public var contentLabel: String
  /** The plain-text portion of the campaign. If left unspecified, we&#x27;ll generate this automatically. */
  public var plainText: String?
  /** The raw HTML for the campaign. */
  public var html: String?
  /** When importing a campaign, the URL for the HTML. */
  public var url: String?
  public var template: TemplateContent1?
  public var archive: UploadArchive?

  public init(contentLabel: String, plainText: String? = nil, html: String? = nil, url: String? = nil, template: TemplateContent1? = nil, archive: UploadArchive? = nil) {
    self.contentLabel = contentLabel
    self.plainText = plainText
    self.html = html
    self.url = url
    self.template = template
    self.archive = archive
  }

  public enum CodingKeys: String, CodingKey {
    case contentLabel = "content_label"
    case plainText = "plain_text"
    case html
    case url
    case template
    case archive
  }
}
