import Foundation

public struct BatchesBody: Codable {
  /** An array of objects that describes operations to perform. */
  public var operations: [Operations]

  public init(operations: [Operations]) {
    self.operations = operations
  }
}
