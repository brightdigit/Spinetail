import Foundation

import PrchModel
public struct PostBatchesRequestModel: Codable, Equatable, Content {
  /** An array of objects that describes operations to perform. */
  public var operations: [OperationsModel]

  public init(operations: [OperationsModel]) {
    self.operations = operations
  }

  public enum CodingKeys: String, CodingKey {
    case operations
  }
}
