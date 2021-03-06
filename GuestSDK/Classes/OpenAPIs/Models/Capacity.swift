//
// Capacity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the Capacity&#39;s schema. */
public struct Capacity: Codable { 


    public var signinsCount: Int?
    public var invitesExpectedNextHour: Int?

    public init(signinsCount: Int?, invitesExpectedNextHour: Int?) {
        self.signinsCount = signinsCount
        self.invitesExpectedNextHour = invitesExpectedNextHour
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case signinsCount = "signins_count"
        case invitesExpectedNextHour = "invites_expected_next_hour"
    }

}
