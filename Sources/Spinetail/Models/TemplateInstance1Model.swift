import Foundation

import PrchModel
/** Information about a specific template. */
public struct TemplateInstance1Model: Codable, Equatable, Content {
  /** The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API. */
  public var html: String

  /** The name of the template. */
  public var name: String

  /** The id of the folder the template is currently in. */
  public var folderId: String?

  public init(html: String, name: String, folderId: String? = nil) {
    self.html = html
    self.name = name
    self.folderId = folderId
  }

  public enum CodingKeys: String, CodingKey {
    case html
    case name
    case folderId = "folder_id"
  }
}
