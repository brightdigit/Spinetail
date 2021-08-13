import Foundation

/** A single instance of a goal activity. */

public struct Goal: Codable {
  /** The id for a Goal event. */
  public var goalId: Int?
  /** The name/type of Goal event triggered. */
  public var event: String?
  /** The date and time the user last triggered the Goal event in ISO 8601 format. */
  public var lastVisitedAt: Date?
  /** Any extra data passed with the Goal event. */
  public var data: String?

  public init(goalId: Int? = nil, event: String? = nil, lastVisitedAt: Date? = nil, data: String? = nil) {
    self.goalId = goalId
    self.event = event
    self.lastVisitedAt = lastVisitedAt
    self.data = data
  }

  public enum CodingKeys: String, CodingKey {
    case goalId = "goal_id"
    case event
    case lastVisitedAt = "last_visited_at"
    case data
  }
}
