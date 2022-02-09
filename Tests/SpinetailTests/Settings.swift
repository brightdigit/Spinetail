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

extension Settings {
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

  static func parse() -> Settings {
    let decoder = JSONDecoder()
    let directory = URL(fileURLWithPath: #file).deletingLastPathComponent()
    let envURL = directory.appendingPathComponent("env.json")
    let data = try? Data(contentsOf: envURL)
    let envSettings = Settings()
    if let jsonSettings = data.flatMap({ try? decoder.decode(Settings.self, from: $0) }) {
      return jsonSettings.mergeWith(other: envSettings)
    } else {
      return envSettings
    }
  }
}
