import Foundation

/** Do particular authorization constraints around this collection limit creation of new instances? */

public struct CollectionAuthorization: Codable {
  /** May the user create additional instances of this resource? */
  public var mayCreate: Bool
  /** How many total instances of this resource are allowed? This is independent of any filter conditions applied to the query. As a special case, -1 indicates unlimited. */
  public var maxInstances: Int
  /** How many total instances of this resource are already in use? This is independent of any filter conditions applied to the query. Value may be larger than max_instances. As a special case, -1 is returned when access is unlimited. */
  public var currentTotalInstances: Int?

  public init(mayCreate: Bool, maxInstances: Int, currentTotalInstances: Int? = nil) {
    self.mayCreate = mayCreate
    self.maxInstances = maxInstances
    self.currentTotalInstances = currentTotalInstances
  }

  public enum CodingKeys: String, CodingKey {
    case mayCreate = "may_create"
    case maxInstances = "max_instances"
    case currentTotalInstances = "current_total_instances"
  }
}
