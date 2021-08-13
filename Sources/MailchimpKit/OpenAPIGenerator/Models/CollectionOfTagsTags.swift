import Foundation

public struct CollectionOfTagsTags: Codable {
  /** The unique id for the tag. */
  public var _id: Int?
  /** The name of the tag. */
  public var name: String?
  /** The date and time the tag was added to the list member in ISO 8601 format. */
  public var dateAdded: Date?

  public init(_id: Int? = nil, name: String? = nil, dateAdded: Date? = nil) {
    self._id = _id
    self.name = name
    self.dateAdded = dateAdded
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case dateAdded = "date_added"
  }
}
