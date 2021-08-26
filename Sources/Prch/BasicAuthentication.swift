public struct BasicAuthentication: Authentication {
  public  init(userName: String, password: String) {
    self.userName = userName
    self.password = password
  }
  
  public static let name = "Basic"
  let userName: String
  let password: String
  public var value: String {
    "\(userName):\(password)".data(using: .utf8)?.base64EncodedString() ?? ""
  }
}
