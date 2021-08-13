import Foundation

/** The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/). */

public struct CampaignSocialCard: Codable {
  /** The url for the header image for the card. */
  public var imageUrl: String?
  /** A short summary of the campaign to display. */
  public var _description: String?
  /** The title for the card. Typically the subject line of the campaign. */
  public var title: String?

  public init(imageUrl: String? = nil, _description: String? = nil, title: String? = nil) {
    self.imageUrl = imageUrl
    self._description = _description
    self.title = title
  }

  public enum CodingKeys: String, CodingKey {
    case imageUrl = "image_url"
    case _description = "description"
    case title
  }
}
