import Foundation

/** API health status. */

public struct APIHealthStatus: Codable {
  /** This will return a constant string value if the request is successful. Ex. \&quot;Everything&#x27;s Chimpy!\&quot; */
  public var healthStatus: String?

  public init(healthStatus: String? = nil) {
    self.healthStatus = healthStatus
  }

  public enum CodingKeys: String, CodingKey {
    case healthStatus = "health_status"
  }
}
