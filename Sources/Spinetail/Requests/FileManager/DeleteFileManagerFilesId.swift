import Foundation
import PrchModel

public extension AutomationsAutomationsFileManager {
  /**
   Delete file

   Remove a specific file from the File Manager.
   */
  struct DeleteFileManagerFilesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/files/{file_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "file_id" + "}", with: "\(fileId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the File Manager file. */
    public var fileId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteFileManagerFilesId", tag: "fileManager", method: "DELETE", path: "/file-manager/files/{file_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
