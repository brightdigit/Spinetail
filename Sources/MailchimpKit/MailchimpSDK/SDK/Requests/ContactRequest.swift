import Foundation

struct ContactRequest: MCAPIRequest {
  let contact: Contact

  var params: [URLQueryItem]?

  var apiPath: String { "clientapi/1.0/contacts" }

  /// Callback once API request is complete.
  public var callback: Mailchimp.RequestCallback?

  init(contact: Contact, _ callback: Mailchimp.RequestCallback? = nil) {
    self.contact = contact
    self.callback = callback
  }

  func postBody() -> PostBody<Contact, ParametersDefault>? {
    .object(contact)
  }

  func headers() -> [String: String]? {
    ["Mailchimp-SDK-Version": Mailchimp.version, "Mailchimp-SDK-Platform": "iOS"]
  }

  func httpVerb() -> HTTPVerb {
    .post
  }

  func requestComplete(_ result: Result<Data, APIError>) {
    switch result {
    case let .success(data):
      callback?(.success(data))

    case let .failure(error):
      if case let .apiError(apiError) = error {
        callback?(.failure(.apiError(response: apiError)))
      } else {
        callback?(.failure(error))
      }
    }
  }
}
