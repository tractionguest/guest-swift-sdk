//
// Host.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** A client host assigned to a Signin */
public struct Host: Codable, Hashable {

    public var id: Int
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var profilePicUrl: String?
    /**  */
    public var department: String?
    public var mobileNumber: String?

    public init(id: Int, email: String? = nil, firstName: String? = nil, lastName: String? = nil, profilePicUrl: String? = nil, department: String? = nil, mobileNumber: String? = nil) {
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.profilePicUrl = profilePicUrl
        self.department = department
        self.mobileNumber = mobileNumber
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case profilePicUrl = "profile_pic_url"
        case department
        case mobileNumber = "mobile_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
        try container.encodeIfPresent(department, forKey: .department)
        try container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
    }



}
