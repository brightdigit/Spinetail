import Foundation

extension AutomationsAutomationsString {
  static func randomEmailAddress(withDomain domain: String) -> String {
    [UUID().uuidString.replacingOccurrences(of: "-", with: ""), domain].joined(separator: "@")
  }
}
