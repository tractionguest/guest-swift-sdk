//
// RegistrationDetail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The data of a Registration */
public struct RegistrationDetail: Codable { 


    /** Registration unique identifier */
    public var id: String
    public var visitor: Visitor?
    public var invite: Invite?
    /** Response given by the guest */
    public var guestResponses: [GuestResponse]?
    /** URL of the uploaded photo */
    public var photoUrl: String?
    /** Company&#39;s name */
    public var company: String?
    /** E-mail */
    public var email: String?
    /** Guest&#39;s name */
    public var name: String?
    /** Datetime when registration was created */
    public var createdAt: Date
    public var signin: Signin?

    public init(id: String, visitor: Visitor?, invite: Invite?, guestResponses: [GuestResponse]?, photoUrl: String?, company: String?, email: String?, name: String?, createdAt: Date, signin: Signin?) {
        self.id = id
        self.visitor = visitor
        self.invite = invite
        self.guestResponses = guestResponses
        self.photoUrl = photoUrl
        self.company = company
        self.email = email
        self.name = name
        self.createdAt = createdAt
        self.signin = signin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case visitor
        case invite
        case guestResponses = "guest_responses"
        case photoUrl = "photo_url"
        case company
        case email
        case name
        case createdAt = "created_at"
        case signin
    }

}
