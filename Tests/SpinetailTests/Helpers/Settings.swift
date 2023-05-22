import Foundation

struct Settings: Codable {
  internal init(apiKey: String?, listID: String?, interestID: String?) {
    self.apiKey = apiKey
    self.listID = listID
    self.interestID = interestID
  }

  let apiKey: String?
  let listID: String?
  let interestID: String?
}

extension AutomationsAutomationsSettings {
  init(environment: [String: String]) {
    self.init(
      apiKey: environment["MAILCHIMP_API_KEY"],
      listID: environment["MAILCHIMP_LIST_ID"],
      interestID: environment["MAILCHIMP_INTEREST_ID"]
    )
  }

  init(processInfo: ProcessInfo = .processInfo) {
    self.init(environment: processInfo.environment)
  }

  func mergeWith(other: Settings) -> Settings {
    Settings(
      apiKey: apiKey ?? other.apiKey,
      listID: listID ?? other.listID,
      interestID: interestID ?? other.interestID
    )
  }

  fileprivate static func parseFile(
    withName name: String = "env.json"
  ) -> Settings? {
    var data: Data?
    let decoder = JSONDecoder()
    var lastDirectory: URL?
    var directory = URL(fileURLWithPath: #file)
    while data == nil, lastDirectory?.standardized != directory.standardized {
      lastDirectory = directory
      directory.deleteLastPathComponent()
      let envURL = directory.appendingPathComponent(name)
      data = try? Data(contentsOf: envURL)
    }
    return data.flatMap { try? decoder.decode(Settings.self, from: $0) }
  }

  static func parseAll(withName name: String = "env.json") -> Settings {
    let jsonSettings = Self.parseFile(withName: name)
    let envSettings = Settings()
    if let jsonSettings = jsonSettings {
      return jsonSettings.mergeWith(other: envSettings)
    } else {
      return envSettings
    }
  }
}
