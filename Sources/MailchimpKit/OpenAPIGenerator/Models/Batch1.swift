import Foundation

/** The status of a batch request */

public struct Batch1: Codable {
  public enum Status: String, Codable {
    case pending
    case preprocessing
    case started
    case finalizing
    case finished
  }

  /** A string that uniquely identifies this batch request. */
  public var _id: String?
  /** The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status. */
  public var status: Status?
  /** The total number of operations to complete as part of this batch request. For GET requests requiring pagination, each page counts as a separate operation. */
  public var totalOperations: Int?
  /** The number of completed operations. This includes operations that returned an error. */
  public var finishedOperations: Int?
  /** The number of completed operations that returned an error. */
  public var erroredOperations: Int?
  /** The date and time when the server received the batch request in ISO 8601 format. */
  public var submittedAt: Date?
  /** The date and time when all operations in the batch request completed in ISO 8601 format. */
  public var completedAt: Date?
  /** The URL of the gzipped archive of the results of all the operations. */
  public var responseBodyUrl: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, status: Status? = nil, totalOperations: Int? = nil, finishedOperations: Int? = nil, erroredOperations: Int? = nil, submittedAt: Date? = nil, completedAt: Date? = nil, responseBodyUrl: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.status = status
    self.totalOperations = totalOperations
    self.finishedOperations = finishedOperations
    self.erroredOperations = erroredOperations
    self.submittedAt = submittedAt
    self.completedAt = completedAt
    self.responseBodyUrl = responseBodyUrl
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case status
    case totalOperations = "total_operations"
    case finishedOperations = "finished_operations"
    case erroredOperations = "errored_operations"
    case submittedAt = "submitted_at"
    case completedAt = "completed_at"
    case responseBodyUrl = "response_body_url"
    case links = "_links"
  }
}
