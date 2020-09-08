//
// Visitor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Visitor information */
public struct Visitor: Codable { 


    /** UUID */
    public var id: String?
    public var active: Bool?
    public var company: String?
    public var createdVia: String?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var mobile: String?
    public var note: String?
    public var profilePicContentType: String?
    public var profilePicFileName: String?
    public var profilePicFileSize: String?
    public var profilePicUpdatedAt: String?
    public var watchlistLevel: String?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(id: String?, active: Bool?, company: String?, createdVia: String?, email: String?, firstName: String?, lastName: String?, mobile: String?, note: String?, profilePicContentType: String?, profilePicFileName: String?, profilePicFileSize: String?, profilePicUpdatedAt: String?, watchlistLevel: String?, createdAt: Date?, updatedAt: Date?) {
        self.id = id
        self.active = active
        self.company = company
        self.createdVia = createdVia
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.mobile = mobile
        self.note = note
        self.profilePicContentType = profilePicContentType
        self.profilePicFileName = profilePicFileName
        self.profilePicFileSize = profilePicFileSize
        self.profilePicUpdatedAt = profilePicUpdatedAt
        self.watchlistLevel = watchlistLevel
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case active
        case company
        case createdVia = "created_via"
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case mobile
        case note
        case profilePicContentType = "profile_pic_content_type"
        case profilePicFileName = "profile_pic_file_name"
        case profilePicFileSize = "profile_pic_file_size"
        case profilePicUpdatedAt = "profile_pic_updated_at"
        case watchlistLevel = "watchlist_level"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}