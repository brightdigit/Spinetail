import Foundation

import PrchModel
/** abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web. */
public struct AbandonedBrowseAutomationModel: Codable, Equatable, Content {
  /** Status of the abandonedBrowse automation. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case sending
    case paused
  }

  /** Unique ID of automation parent campaign. */
  public var id: String?

  /** Whether this store supports the abandonedBrowse automation. */
  public var isSupported: Bool?

  /** Status of the abandonedBrowse automation. */
  public var status: Status?

  public init(id: String? = nil, isSupported: Bool? = nil, status: Status? = nil) {
    self.id = id
    self.isSupported = isSupported
    self.status = status
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case isSupported = "is_supported"
    case status
  }
}
