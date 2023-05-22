import Foundation

import PrchModel
/** An account export. */
public struct AccountExportsInnerModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** If the export is finished, the download URL for an export. URLs are only valid for 90 days after the export completes. */
  public var downloadURL: String?

  /** The ID for the export. */
  public var exportId: Int?

  /** If finished, the finish time for the export. */
  public var finished: DateTime?

  /** The size of the uncompressed export in bytes. */
  public var sizeInBytes: Int?

  /** Start time for the export. */
  public var started: DateTime?

  public init(links: [ResourceLinkModel]? = nil, downloadURL: String? = nil, exportId: Int? = nil, finished: DateTime? = nil, sizeInBytes: Int? = nil, started: DateTime? = nil) {
    self.links = links
    self.downloadURL = downloadURL
    self.exportId = exportId
    self.finished = finished
    self.sizeInBytes = sizeInBytes
    self.started = started
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case downloadURL = "download_url"
    case exportId = "export_id"
    case finished
    case sizeInBytes = "size_in_bytes"
    case started
  }
}
