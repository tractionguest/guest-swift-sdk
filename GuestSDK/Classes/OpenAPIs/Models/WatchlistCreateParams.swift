//
// WatchlistCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Parameters required for updating or creating watchlist records */
public struct WatchlistCreateParams: Codable { 


    public enum Colour: String, Codable, CaseIterable {
        case red = "RED"
        case yellow = "YELLOW"
        case green = "GREEN"
        case orange = "ORANGE"
    }
    public var aliases: [String]?
    public var notes: String?
    public var lastName: String?
    public var firstName: String?
    public var email: String?
    public var colour: Colour?

    public init(aliases: [String]?, notes: String?, lastName: String?, firstName: String?, email: String?, colour: Colour?) {
        self.aliases = aliases
        self.notes = notes
        self.lastName = lastName
        self.firstName = firstName
        self.email = email
        self.colour = colour
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case aliases
        case notes
        case lastName = "last_name"
        case firstName = "first_name"
        case email
        case colour
    }

}