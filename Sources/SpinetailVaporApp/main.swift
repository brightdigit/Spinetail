import SpinetailVapor
import Vapor

let app = try Application(.detect())
try app.mailchimp.configure(withAPIKey: "")
defer { app.shutdown() }

app.mailchimp.client...
app.get("hello") { req in
  req.mailchimp.request(<#T##request: APIRequest<APIResponseValue>##APIRequest<APIResponseValue>#>, <#T##completion: (Result<APIResponseValue, APIClientError>) -> Void##(Result<APIResponseValue, APIClientError>) -> Void#>)
}

try app.run()
