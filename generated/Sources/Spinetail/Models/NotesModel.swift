//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

import PrchModel
/** The most recent Note added about this member. */
public struct NotesModel: Codable, Equatable, Content {

    /** The date and time the note was created in ISO 8601 format. */
    public var createdAt: DateTime?

    /** The author of the note. */
    public var createdBy: String?

    /** The content of the note. */
    public var note: String?

    /** The note id. */
    public var noteId: Int?

    public init(createdAt: DateTime? = nil, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil) {
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.note = note
        self.noteId = noteId
    }

    public enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case createdBy = "created_by"
        case note = "note"
        case noteId = "note_id"
    }


}
