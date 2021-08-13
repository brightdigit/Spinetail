import Foundation

/** Information about a specific template. */

public struct TemplateInstance: Codable {
  /** The name of the template. */
  public var name: String
  /** The id of the folder the template is currently in. */
  public var folderId: String?
  /** The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API. */
  public var html: String

  public init(name: String, folderId: String? = nil, html: String) {
    self.name = name
    self.folderId = folderId
    self.html = html
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case folderId = "folder_id"
    case html
  }
}
