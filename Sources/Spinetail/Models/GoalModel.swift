import Foundation

import PrchModel
/** A single instance of a goal activity. */
public struct GoalModel: Codable, Equatable, Content {
  /** Any extra data passed with the Goal event. */
  public var data: String?

  /** The name/type of Goal event triggered. */
  public var event: String?

  /** The id for a Goal event. */
  public var goalId: Int?

  /** The date and time the user last triggered the Goal event in ISO 8601 format. */
  public var lastVisitedAt: DateTime?

  public init(data: String? = nil, event: String? = nil, goalId: Int? = nil, lastVisitedAt: DateTime? = nil) {
    self.data = data
    self.event = event
    self.goalId = goalId
    self.lastVisitedAt = lastVisitedAt
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case data
    case event
    case goalId = "goal_id"
    case lastVisitedAt = "last_visited_at"
  }
}
