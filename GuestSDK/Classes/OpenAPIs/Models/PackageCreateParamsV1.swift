//
// PackageCreateParamsV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** A [base64_image] string is provided as an encoded image of a shipping label. The image will be processed to determine the package&#39;s intended recipient. If a match is found between the recipient and an existing host, they&#39;ll be notified about the arrival of their package at the [location_id] specified. */
public struct PackageCreateParamsV1: Codable { 


    /** Base64 encoded image on which to perform processing */
    public var base64Image: Data
    /** Location id for where the package was delivered */
    public var locationId: Int

    public init(base64Image: Data, locationId: Int) {
        self.base64Image = base64Image
        self.locationId = locationId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case base64Image = "base64_image"
        case locationId = "location_id"
    }

}
