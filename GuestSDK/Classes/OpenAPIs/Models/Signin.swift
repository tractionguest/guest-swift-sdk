//
// Signin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Signin: Codable { 


    public var id: Int
    public var mobileNumber: String?
    public var signinWatchlist: SigninWatchlist?
    public var hosts: [Any]
    public var signinTimestamp: Date?
    public var signinPhotoUrl: String?
    public var signedOutTimestamp: Date?
    public var locationName: String?
    public var lastName: String?
    public var isAcknowledged: Bool?
    public var isAccountedFor: Bool?
    public var firstName: String?
    public var email: String?
    public var company: String?
    public var registration: Registration?

    public init(id: Int, mobileNumber: String?, signinWatchlist: SigninWatchlist?, hosts: [Any], signinTimestamp: Date?, signinPhotoUrl: String?, signedOutTimestamp: Date?, locationName: String?, lastName: String?, isAcknowledged: Bool?, isAccountedFor: Bool?, firstName: String?, email: String?, company: String?, registration: Registration?) {
        self.id = id
        self.mobileNumber = mobileNumber
        self.signinWatchlist = signinWatchlist
        self.hosts = hosts
        self.signinTimestamp = signinTimestamp
        self.signinPhotoUrl = signinPhotoUrl
        self.signedOutTimestamp = signedOutTimestamp
        self.locationName = locationName
        self.lastName = lastName
        self.isAcknowledged = isAcknowledged
        self.isAccountedFor = isAccountedFor
        self.firstName = firstName
        self.email = email
        self.company = company
        self.registration = registration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case mobileNumber = "mobile_number"
        case signinWatchlist = "signin_watchlist"
        case hosts
        case signinTimestamp = "signin_timestamp"
        case signinPhotoUrl = "signin_photo_url"
        case signedOutTimestamp = "signed_out_timestamp"
        case locationName = "location_name"
        case lastName = "last_name"
        case isAcknowledged = "is_acknowledged"
        case isAccountedFor = "is_accounted_for"
        case firstName = "first_name"
        case email
        case company
        case registration
    }

}
