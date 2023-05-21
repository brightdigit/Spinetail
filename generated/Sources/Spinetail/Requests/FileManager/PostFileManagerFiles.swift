//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension FileManager {

    /**
    Add file

    Upload a new image or file to the File Manager.
    */
    public struct PostFileManagerFiles : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/file-manager/files"

        public var path: String {
            return Self.pathTemplate
        }

        public var method : RequestMethod {
            .POST
        }



        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "postFileManagerFiles", tag: "fileManager", method: "POST", path: "/file-manager/files", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = GalleryFileModel
        public typealias BodyType =  GalleryFile1Model


        public let body: GalleryFile1Model
    }
}
