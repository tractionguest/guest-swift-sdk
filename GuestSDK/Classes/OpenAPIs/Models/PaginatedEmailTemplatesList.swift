//
// PaginatedEmailTemplatesList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct PaginatedEmailTemplatesList: Codable { 


    public var pagination: Pagination
    public var emailTemplates: [EmailTemplate]

    public init(pagination: Pagination, emailTemplates: [EmailTemplate]) {
        self.pagination = pagination
        self.emailTemplates = emailTemplates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case pagination
        case emailTemplates = "email_templates"
    }

}
