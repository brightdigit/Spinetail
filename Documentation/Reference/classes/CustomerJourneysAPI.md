**CLASS**

# `CustomerJourneysAPI`

```swift
open class CustomerJourneysAPI
```

## Methods
### `postCustomerJourneysJourneysIdStepsIdActionsTrigger(body:journeyId:stepId:completion:)`

```swift
open class func postCustomerJourneysJourneysIdStepsIdActionsTrigger(body: SubscriberInCustomerJourneysAudience, journeyId: Int, stepId: Int, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Customer Journeys API trigger for a contact

- parameter body: (body)
- parameter journeyId: (path) The id for the Journey.
- parameter stepId: (path) The id for the Step.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| journeyId | (path) The id for the Journey. |
| stepId | (path) The id for the Step. |
| completion | completion handler to receive the data and the error objects |

### `postCustomerJourneysJourneysIdStepsIdActionsTriggerWithRequestBuilder(body:journeyId:stepId:)`

```swift
open class func postCustomerJourneysJourneysIdStepsIdActionsTriggerWithRequestBuilder(body: SubscriberInCustomerJourneysAudience, journeyId: Int, stepId: Int) -> RequestBuilder<Void>
```

Customer Journeys API trigger for a contact
- POST /customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger

- BASIC:
  - type: http
  - name: basicAuth
- examples: [{contentType=application/json, example={ }}]
- parameter body: (body)
- parameter journeyId: (path) The id for the Journey.
- parameter stepId: (path) The id for the Step.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| journeyId | (path) The id for the Journey. |
| stepId | (path) The id for the Step. |