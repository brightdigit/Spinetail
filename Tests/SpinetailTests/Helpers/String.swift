import Foundation

extension String {
  static func randomEmailAddress(withDomain domain: String) -> String {
    [UUID().uuidString.replacingOccurrences(of: "-", with: ""), domain].joined(separator: "@")
  }
}
