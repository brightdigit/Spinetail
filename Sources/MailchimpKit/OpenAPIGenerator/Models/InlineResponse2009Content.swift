import Foundation

public struct InlineResponse2009Content: Codable {
  public var title: String?
  public var linkUrl: String?
  public var message: String?
  public var _description: String?
  public var imageUrl: String?
  public var callToAction: String?
  public var attachments: [InlineResponse2009ContentAttachments]?

  public init(title: String? = nil, linkUrl: String? = nil, message: String? = nil, _description: String? = nil, imageUrl: String? = nil, callToAction: String? = nil, attachments: [InlineResponse2009ContentAttachments]? = nil) {
    self.title = title
    self.linkUrl = linkUrl
    self.message = message
    self._description = _description
    self.imageUrl = imageUrl
    self.callToAction = callToAction
    self.attachments = attachments
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case linkUrl = "link_url"
    case message
    case _description = "description"
    case imageUrl = "image_url"
    case callToAction = "call_to_action"
    case attachments
  }
}
