import Foundation

/** Available triggers for Automation workflows. */

public struct AutomationTrigger1: Codable {
  public enum WorkflowType: String, Codable {
    case abandonedbrowse = "abandonedBrowse"
    case abandonedcart = "abandonedCart"
    case api
    case bestcustomers = "bestCustomers"
    case categoryfollowup = "categoryFollowup"
    case dateadded = "dateAdded"
    case emailfollowup = "emailFollowup"
    case emailseries = "emailSeries"
    case groupadd = "groupAdd"
    case groupremove = "groupRemove"
    case mandrill
    case productfollowup = "productFollowup"
    case purchasefollowup = "purchaseFollowup"
    case recurringevent = "recurringEvent"
    case specialevent = "specialEvent"
    case visiturl = "visitUrl"
    case welcomeseries = "welcomeSeries"
  }

  /** The type of Automation workflow. */
  public var workflowType: WorkflowType
  /** The title of the workflow type. */
  public var workflowTitle: String?
  public var runtime: AutomationWorkflowRuntimeSettings?
  /** The number of emails in the Automation workflow. */
  public var workflowEmailsCount: Int?

  public init(workflowType: WorkflowType, workflowTitle: String? = nil, runtime: AutomationWorkflowRuntimeSettings? = nil, workflowEmailsCount: Int? = nil) {
    self.workflowType = workflowType
    self.workflowTitle = workflowTitle
    self.runtime = runtime
    self.workflowEmailsCount = workflowEmailsCount
  }

  public enum CodingKeys: String, CodingKey {
    case workflowType = "workflow_type"
    case workflowTitle = "workflow_title"
    case runtime
    case workflowEmailsCount = "workflow_emails_count"
  }
}
