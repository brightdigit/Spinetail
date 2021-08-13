import Foundation

/** abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web. */

public struct AbandonedBrowseAutomation: Codable {
  public enum Status: String, Codable {
    case save
    case sending
    case paused
  }

  /** Whether this store supports the abandonedBrowse automation. */
  public var isSupported: Bool?
  /** Unique ID of automation parent campaign. */
  public var _id: String?
  /** Status of the abandonedBrowse automation. */
  public var status: Status?

  public init(isSupported: Bool? = nil, _id: String? = nil, status: Status? = nil) {
    self.isSupported = isSupported
    self._id = _id
    self.status = status
  }

  public enum CodingKeys: String, CodingKey {
    case isSupported = "is_supported"
    case _id = "id"
    case status
  }
}
