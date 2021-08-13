import Foundation

/** The HTML and plain-text content for a campaign */

public struct CampaignContent1: Codable {
  /** The plain-text portion of the campaign. If left unspecified, we&#x27;ll generate this automatically. */
  public var plainText: String?
  /** The raw HTML for the campaign. */
  public var html: String?
  /** When importing a campaign, the URL where the HTML lives. */
  public var url: String?
  public var template: TemplateContent?
  public var archive: UploadArchive?
  /** Content options for [Multivariate Campaigns](https://mailchimp.com/help/about-multivariate-campaigns/). Each content option must provide HTML content and may optionally provide plain text. For campaigns not testing content, only one object should be provided. */
  public var variateContents: [CampaignscampaignIdcontentVariateContents]?

  public init(plainText: String? = nil, html: String? = nil, url: String? = nil, template: TemplateContent? = nil, archive: UploadArchive? = nil, variateContents: [CampaignscampaignIdcontentVariateContents]? = nil) {
    self.plainText = plainText
    self.html = html
    self.url = url
    self.template = template
    self.archive = archive
    self.variateContents = variateContents
  }

  public enum CodingKeys: String, CodingKey {
    case plainText = "plain_text"
    case html
    case url
    case template
    case archive
    case variateContents = "variate_contents"
  }
}
