import Foundation

import PrchModel
public struct VariateContentsInnerModel: Codable, Equatable, Content {
  /** Label used to identify the content option. */
  public var contentLabel: String?

  /** The raw HTML for the campaign. */
  public var html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public var plainText: String?

  public init(contentLabel: String? = nil, html: String? = nil, plainText: String? = nil) {
    self.contentLabel = contentLabel
    self.html = html
    self.plainText = plainText
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case contentLabel = "content_label"
    case html
    case plainText = "plain_text"
  }
}
