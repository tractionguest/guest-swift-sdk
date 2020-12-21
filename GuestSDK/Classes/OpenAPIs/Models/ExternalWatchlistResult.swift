//
// ExternalWatchlistResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ExternalWatchlistResult: Codable { 


    public enum Colour: String, Codable, CaseIterable {
        case red = "RED"
        case green = "GREEN"
        case yellow = "YELLOW"
        case orange = "ORANGE"
    }
    public var matches: [WatchlistMatch]?
    public var colour: Colour?
    public var integration: String?
    public var searchTerms: WatchlistSearch?

    public init(matches: [WatchlistMatch]?, colour: Colour?, integration: String?, searchTerms: WatchlistSearch?) {
        self.matches = matches
        self.colour = colour
        self.integration = integration
        self.searchTerms = searchTerms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case matches
        case colour
        case integration
        case searchTerms = "search_terms"
    }

}
