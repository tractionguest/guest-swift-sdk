//
// Package.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Root for a Package type&#39;s schema */
public struct Package: Codable { 


    public enum PackageState: String, Codable, CaseIterable {
        case processing = "processing"
        case recipientMatched = "recipient_matched"
        case needsAttention = "needs_attention"
        case pickedUp = "picked_up"
    }
    public var id: Int
    public var recipient: Any?
    public var location: Any
    /** this can be one of the following states: &#39;processing&#39;, &#39;recipient_matched&#39;, &#39;needs_attention&#39; or &#39;picked_up&#39; */
    public var packageState: PackageState
    /** A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc...  */
    public var carrierName: String?
    public var pickedUpAt: Date?
    public var createdAt: Date
    public var image: ImageV1?

    public init(id: Int, recipient: Any?, location: Any, packageState: PackageState, carrierName: String?, pickedUpAt: Date?, createdAt: Date, image: ImageV1?) {
        self.id = id
        self.recipient = recipient
        self.location = location
        self.packageState = packageState
        self.carrierName = carrierName
        self.pickedUpAt = pickedUpAt
        self.createdAt = createdAt
        self.image = image
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case recipient
        case location
        case packageState = "package_state"
        case carrierName = "carrier_name"
        case pickedUpAt = "picked_up_at"
        case createdAt = "created_at"
        case image
    }

}
