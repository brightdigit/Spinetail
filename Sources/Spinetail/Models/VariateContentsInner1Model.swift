import Foundation

import PrchModel
public struct VariateContentsInner1Model: Codable, Equatable, Content {
  /** The label used to identify the content option. */
  public var contentLabel: String

  public var archive: UploadArchiveModel?

  /** The raw HTML for the campaign. */
  public var html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public var plainText: String?

  public var template: TemplateContent1Model?

  /** When importing a campaign, the URL for the HTML. */
  public var url: String?

  public init(contentLabel: String, archive: UploadArchiveModel? = nil, html: String? = nil, plainText: String? = nil, template: TemplateContent1Model? = nil, url: String? = nil) {
    self.contentLabel = contentLabel
    self.archive = archive
    self.html = html
    self.plainText = plainText
    self.template = template
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case contentLabel = "content_label"
    case archive
    case html
    case plainText = "plain_text"
    case template
    case url
  }
}
