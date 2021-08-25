struct BasicAuthentication: Authentication {
  static let name = "Basic"
  let userName: String
  let password: String
  var value: String {
    "\(userName):\(password)".data(using: .utf8)?.base64EncodedString() ?? ""
  }
}
