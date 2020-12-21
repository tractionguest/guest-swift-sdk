//
// InviteCreateParams1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the InviteUpdateParams type&#39;s schema. */
public struct InviteCreateParams1: Codable { 


    public var mobileNumber: String?
    /** Used for transfering ownership of an &#x60;Invite&#x60; to another member of the Account */
    public var userId: Int?
    public var onPremise: Bool?
    public var notificationTriggers: [NotificationTrigger1]?
    public var firstName: String?
    public var emailTemplateId: Int?
    public var customFields: [CustomField]?
    public var hostIds: [Int]?
    public var title: String?
    public var startDate: Date?
    public var lastName: String?
    public var endDate: Date?
    public var email: String?
    public var company: String?

    public init(mobileNumber: String?, userId: Int?, onPremise: Bool?, notificationTriggers: [NotificationTrigger1]?, firstName: String?, emailTemplateId: Int?, customFields: [CustomField]?, hostIds: [Int]?, title: String?, startDate: Date?, lastName: String?, endDate: Date?, email: String?, company: String?) {
        self.mobileNumber = mobileNumber
        self.userId = userId
        self.onPremise = onPremise
        self.notificationTriggers = notificationTriggers
        self.firstName = firstName
        self.emailTemplateId = emailTemplateId
        self.customFields = customFields
        self.hostIds = hostIds
        self.title = title
        self.startDate = startDate
        self.lastName = lastName
        self.endDate = endDate
        self.email = email
        self.company = company
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case mobileNumber = "mobile_number"
        case userId = "user_id"
        case onPremise = "on_premise"
        case notificationTriggers = "notification_triggers"
        case firstName = "first_name"
        case emailTemplateId = "email_template_id"
        case customFields = "custom_fields"
        case hostIds = "host_ids"
        case title
        case startDate = "start_date"
        case lastName = "last_name"
        case endDate = "end_date"
        case email
        case company
    }

}
