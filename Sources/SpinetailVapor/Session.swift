//
//  File.swift
//  File
//
//  Created by Leo Dion on 8/25/21.
//

import Foundation
import protocol Prch.Response
import protocol Prch.Task
import protocol Prch.Session
import protocol Prch.APIResponseValue
import class Prch.APIClient
import class Prch.APIRequest
import enum Prch.APIResult
import enum Prch.APIClientError

import Vapor
import NIOHTTP1
import NIOCore
import NIO
import Spinetail
import AsyncHTTPClient
import PrchVapor

enum MailchimpError : Error {
  case invalidAPIKey(String)
}

public protocol Mailchimp {
  var client : APIClient<SessionClient> { get }
}

extension Request {

  public var mailchimp : Mailchimp {
    guard let mailchimp = self.application.storage[MailchimpImpl.Key.self] else {
      fatalError("Mailchimp is not configured.")
    }
    
    return mailchimp.forRequest(self)
  }
}


public protocol ApplicationMailchimp : Mailchimp {
   func configure(withAPIKey apiKey: String) throws
}

protocol ClientContainer {
  var client : Client { get }
}

extension Request : ClientContainer {
  
}

extension Application : ClientContainer {
  
}
class MailchimpImpl : ApplicationMailchimp{
  internal init(application: ClientContainer, api: MailchimpAPI? = nil) {
    self.application = application
    self.api = api
  }
  


  public struct Key : StorageKey {
    public typealias Value = MailchimpImpl
  }
  let application : ClientContainer
  var api : MailchimpAPI?
  
  public func configure(withAPIKey apiKey: String) throws {
    guard let api = MailchimpAPI(apiKey: apiKey) else {
      throw MailchimpError.invalidAPIKey(apiKey)
    }
    self.api = api
  }
  
  var client: APIClient<SessionClient> {
    guard let api = self.api else {
      fatalError("Mailchimp is not configured.")
    }
    
    return APIClient(api: api, session: SessionClient(client: self.application.client))
  }
  
  func forRequest(_ request: Request) -> Mailchimp {
    return MailchimpImpl(application: request, api: api)
  }
  
}

extension Application {
  

  
  public var mailchimp : ApplicationMailchimp {
    guard let mailchimp = self.storage[MailchimpImpl.Key.self] else {
      let mailchimp = MailchimpImpl(application: self)
      self.storage[MailchimpImpl.Key.self] = mailchimp
      return mailchimp
    }
    return mailchimp
  }
}

