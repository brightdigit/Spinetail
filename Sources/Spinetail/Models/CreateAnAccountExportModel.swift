import Foundation

import PrchModel
/** Creates an account export with the given parameters. */
public struct CreateAnAccountExportModel: Codable, Equatable, Content {
  /** The stages of an account export to include. */
  public enum AutomationsAutomationsIncludeStages: String, Codable, Equatable, CaseIterable {
    case audiences
    case campaigns
    case events
    case galleryFiles = "gallery_files"
    case reports
    case templates
  }

  /** The stages of an account export to include. */
  public var includeStages: [IncludeStages]

  /** An ISO 8601 date that will limit the export to only records created after a given time. For instance, the reports stage will contain any campaign sent after the given timestamp. Audiences, however, are excluded from this limit. */
  public var sinceTimestamp: DateTime?

  public init(includeStages: [IncludeStages], sinceTimestamp: DateTime? = nil) {
    self.includeStages = includeStages
    self.sinceTimestamp = sinceTimestamp
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case includeStages = "include_stages"
    case sinceTimestamp = "since_timestamp"
  }
}
