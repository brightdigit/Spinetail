import Foundation


public enum JSONOptionalDate: Codable, Equatable {
  case none
  case some(Date)
  var date: Date? {
    switch self {
    case .none:
      return nil

    case let .some(value):
      return value
    }
  }

  public init(date: Date?) {
    switch date {
    case .none:
      self = .none

    case let .some(value):
      self = .some(value)
    }
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()

    do {
      self = try .some(container.decode(Date.self))
    } catch {
      let str = try container.decode(String.self)
      guard str.isEmpty else {
        throw error
      }
      self = .none
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()

    if let date = self.date {
      try container.encode(date)
    } else {
      try container.encodeNil()
    }
  }
}
