//
// Location.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** The root of the Location type&#39;s schema. */
public struct Location: Codable, Hashable {

    public var id: Int
    public var name: String
    /** Maximum capacity of a location */
    public var maxCapacity: Int?
    /**  IANA timezone designations */
    public var timezone: String?

    public init(id: Int, name: String, maxCapacity: Int? = nil, timezone: String? = nil) {
        self.id = id
        self.name = name
        self.maxCapacity = maxCapacity
        self.timezone = timezone
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case maxCapacity = "max_capacity"
        case timezone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(maxCapacity, forKey: .maxCapacity)
        try container.encodeIfPresent(timezone, forKey: .timezone)
    }



}
