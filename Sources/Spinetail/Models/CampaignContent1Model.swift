import Foundation

import PrchModel
/** The HTML and plain-text content for a campaign */
public struct CampaignContent1Model: Codable, Equatable, Content {
  public var archive: UploadArchiveModel?

  /** The raw HTML for the campaign. */
  public var html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public var plainText: String?

  public var template: TemplateContentModel?

  /** When importing a campaign, the URL where the HTML lives. */
  public var url: String?

  /** Content options for [Multivariate Campaigns](https://mailchimp.com/help/about-multivariate-campaigns/). Each content option must provide HTML content and may optionally provide plain text. For campaigns not testing content, only one object should be provided. */
  public var variateContents: [VariateContentsInner1Model]?

  public init(archive: UploadArchiveModel? = nil, html: String? = nil, plainText: String? = nil, template: TemplateContentModel? = nil, url: String? = nil, variateContents: [VariateContentsInner1Model]? = nil) {
    self.archive = archive
    self.html = html
    self.plainText = plainText
    self.template = template
    self.url = url
    self.variateContents = variateContents
  }

  public enum CodingKeys: String, CodingKey {
    case archive
    case html
    case plainText = "plain_text"
    case template
    case url
    case variateContents = "variate_contents"
  }
}
