//
// AuditLogChange.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/**  */
public struct AuditLogChange: Codable { 


    public enum Format: String, Codable, CaseIterable {
        case string = "string"
        case boolean = "boolean"
        case integer = "integer"
        case json = "json"
        case noValue = "no_value"
    }
    /** What the field should be displayed/labeled as */
    public var fieldName: String?
    /** The value to be displayed for the field before changes */
    public var fieldValueBefore: String?
    /** The value to be displayed for the field after changes */
    public var fieldValueAfter: String?
    /** The format type of the field */
    public var format: Format?

    public init(fieldName: String?, fieldValueBefore: String?, fieldValueAfter: String?, format: Format?) {
        self.fieldName = fieldName
        self.fieldValueBefore = fieldValueBefore
        self.fieldValueAfter = fieldValueAfter
        self.format = format
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case fieldName = "field_name"
        case fieldValueBefore = "field_value_before"
        case fieldValueAfter = "field_value_after"
        case format
    }

}
