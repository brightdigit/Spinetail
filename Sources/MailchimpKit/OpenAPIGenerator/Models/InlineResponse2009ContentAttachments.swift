import Foundation

public struct InlineResponse2009ContentAttachments: Codable {
  public var name: String?
  public var linkUrl: String?
  public var _description: String?
  public var imageUrl: String?
  public var callToAction: String?

  public init(name: String? = nil, linkUrl: String? = nil, _description: String? = nil, imageUrl: String? = nil, callToAction: String? = nil) {
    self.name = name
    self.linkUrl = linkUrl
    self._description = _description
    self.imageUrl = imageUrl
    self.callToAction = callToAction
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case linkUrl = "link_url"
    case _description = "description"
    case imageUrl = "image_url"
    case callToAction = "call_to_action"
  }
}
