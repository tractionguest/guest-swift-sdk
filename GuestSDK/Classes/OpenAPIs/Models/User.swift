//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the User type&#39;s schema. */
public struct User: Codable { 


    public var id: Int
    /** Identifies if user has access to mobile app features. */
    public var mobileAccessEnabled: Bool
    public var permissionGroups: [PermissionGroup]?
    /**  */
    public var email: String
    /**  */
    public var lastName: String?
    /** Determines if the registration portal has been enabled for this account */
    public var firstName: String?
    /** Determines if the registration portal has been enabled for this account */
    public var registrationPortalEnabled: Bool
    public var accountUuid: String?

    public init(id: Int, mobileAccessEnabled: Bool, permissionGroups: [PermissionGroup]?, email: String, lastName: String?, firstName: String?, registrationPortalEnabled: Bool, accountUuid: String?) {
        self.id = id
        self.mobileAccessEnabled = mobileAccessEnabled
        self.permissionGroups = permissionGroups
        self.email = email
        self.lastName = lastName
        self.firstName = firstName
        self.registrationPortalEnabled = registrationPortalEnabled
        self.accountUuid = accountUuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case mobileAccessEnabled = "mobile_access_enabled"
        case permissionGroups = "permission_groups"
        case email
        case lastName = "last_name"
        case firstName = "first_name"
        case registrationPortalEnabled = "registration_portal_enabled"
        case accountUuid = "account_uuid"
    }

}
