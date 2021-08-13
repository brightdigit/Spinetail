import Foundation

public class EventOperation: Operation {
  let event: MCEvent
  var request: EventRequest?
  let result: Mailchimp.RequestCallback?
  public var dataTask: URLSessionDataTask?

  init(_ event: MCEvent, result: Mailchimp.RequestCallback? = nil) {
    self.event = event
    self.result = result
  }

  override public var isAsynchronous: Bool { false }
  override public var isExecuting: Bool { state == .executing }
  override public var isFinished: Bool { state == .finished }

  var state = State.ready {
    willSet {
      willChangeValue(forKey: state.keyPath)
      willChangeValue(forKey: newValue.keyPath)
    }
    didSet {
      didChangeValue(forKey: state.keyPath)
      didChangeValue(forKey: oldValue.keyPath)
    }
  }

  enum State: String {
    case ready = "Ready"
    case executing = "Executing"
    case finished = "Finished"
    fileprivate var keyPath: String { "is" + rawValue }
  }

  override public func start() {
    if isCancelled {
      state = .finished
    } else {
      state = .ready
      main()
    }
  }

  override public func main() {
    if isCancelled {
      state = .finished
    } else {
      state = .executing

      request = EventRequest(event: event) { requestResult in
        self.result?(requestResult)

        if Mailchimp.debugMode {
          switch requestResult {
          case .success:
            print("Event request succeeded.")

          case let .failure(error):
            print("Event request failed with error: \(error.localizedDescription)")
            if case let .apiError(response) = error {
              print("API Error status: \(response.status)")
              print("API Error detail: \(response.detail)")
              print("API Error type: \(response.type)")
            }
          }
        }

        self.state = .finished
      }

      dataTask = Mailchimp.api?.process(request: request!)
    }
  }
}
