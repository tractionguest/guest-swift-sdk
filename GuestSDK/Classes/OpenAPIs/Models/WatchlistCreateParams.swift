//
// WatchlistCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Parameters required for updating or creating watchlist records */
public struct WatchlistCreateParams: Codable, Hashable {

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

    public init(aliases: [String]? = nil, notes: String? = nil, lastName: String? = nil, firstName: String? = nil, email: String? = nil, colour: Colour? = nil) {
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

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(aliases, forKey: .aliases)
        try container.encodeIfPresent(notes, forKey: .notes)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(colour, forKey: .colour)
    }



}
