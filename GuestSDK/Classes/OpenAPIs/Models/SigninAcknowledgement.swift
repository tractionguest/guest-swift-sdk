//
// SigninAcknowledgement.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the SigninAcknowledgement type&#39;s schema. */
public struct SigninAcknowledgement: Codable { 


    public var code: String?
    public var acknowledgedAt: Date?
    public var id: Int

    public init(code: String?, acknowledgedAt: Date?, id: Int) {
        self.code = code
        self.acknowledgedAt = acknowledgedAt
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case code
        case acknowledgedAt = "acknowledged_at"
        case id
    }

}
