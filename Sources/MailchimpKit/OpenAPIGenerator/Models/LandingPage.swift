import Foundation

/** A summary of an individual page&#x27;s properties. */

public struct LandingPage: Codable {
  public enum ModelType: String, Codable {
    case signup
    case product
  }

  /** The name of this landing page. */
  public var name: String?
  /** The title of this landing page seen in the browser&#x27;s title bar. */
  public var title: String?
  /** The description of this landing page. */
  public var _description: String?
  /** The ID of the store associated with this landing page. */
  public var storeId: String?
  /** The list&#x27;s ID associated with this landing page. */
  public var listId: String?
  /** The type of template the landing page has. */
  public var type: ModelType?
  /** The template_id of this landing page. */
  public var templateId: Int?
  public var tracking: TrackingSettings?

  public init(name: String? = nil, title: String? = nil, _description: String? = nil, storeId: String? = nil, listId: String? = nil, type: ModelType? = nil, templateId: Int? = nil, tracking: TrackingSettings? = nil) {
    self.name = name
    self.title = title
    self._description = _description
    self.storeId = storeId
    self.listId = listId
    self.type = type
    self.templateId = templateId
    self.tracking = tracking
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case title
    case _description = "description"
    case storeId = "store_id"
    case listId = "list_id"
    case type
    case templateId = "template_id"
    case tracking
  }
}
