//
// SimpleSignature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/**  */
public struct SimpleSignature: Codable, Hashable {

    /**  */
    public var status: String?
    /**  */
    public var templateName: String?
    /**  */
    public var id: String?
    /**  */
    public var title: String?

    public init(status: String? = nil, templateName: String? = nil, id: String? = nil, title: String? = nil) {
        self.status = status
        self.templateName = templateName
        self.id = id
        self.title = title
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case templateName = "template_name"
        case id
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(templateName, forKey: .templateName)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
    }



}
