//
// Invite.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the Invite type&#39;s schema. */
public struct Invite: Codable { 


    public enum WatchlistColour: String, Codable, CaseIterable {
        case red = "RED"
        case green = "GREEN"
        case yellow = "YELLOW"
        case orange = "ORANGE"
    }
    public var id: Int
    public var registration: Any?
    public var mobileNumber: String?
    public var email: String?
    public var endDate: Date?
    public var inviteWatchlist: Any?
    public var hosts: [Any]?
    public var watchlistColour: WatchlistColour?
    public var location: Any?
    public var startDate: Date?
    public var lastName: String?
    public var firstName: String?
    public var groupVisit: Any?

    public init(id: Int, registration: Any?, mobileNumber: String?, email: String?, endDate: Date?, inviteWatchlist: Any?, hosts: [Any]?, watchlistColour: WatchlistColour?, location: Any?, startDate: Date?, lastName: String?, firstName: String?, groupVisit: Any?) {
        self.id = id
        self.registration = registration
        self.mobileNumber = mobileNumber
        self.email = email
        self.endDate = endDate
        self.inviteWatchlist = inviteWatchlist
        self.hosts = hosts
        self.watchlistColour = watchlistColour
        self.location = location
        self.startDate = startDate
        self.lastName = lastName
        self.firstName = firstName
        self.groupVisit = groupVisit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case registration
        case mobileNumber = "mobile_number"
        case email
        case endDate = "end_date"
        case inviteWatchlist = "invite_watchlist"
        case hosts
        case watchlistColour = "watchlist_colour"
        case location
        case startDate = "start_date"
        case lastName = "last_name"
        case firstName = "first_name"
        case groupVisit = "group_visit"
    }

}
