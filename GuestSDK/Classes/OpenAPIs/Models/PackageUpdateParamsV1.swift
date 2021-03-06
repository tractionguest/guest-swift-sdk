//
// PackageUpdateParamsV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Update/Edit information about a Package.  [picked_up] - changes the package_state to picked up and assigns non null value to picked_up_at  [recipient_id] - update the package&#39;s intended recipient. Changes package_state to &#39;recipient_matched&#39; and notifies host about their package via email. A previous recipient will stop getting notifications  [carrier_name] - change/update the package&#39;s carrier/courier information  */
public struct PackageUpdateParamsV1: Codable { 


    /** changes the package_state to picked up and assigns non null value to picked_up_at */
    public var pickedUp: Bool?
    /** change/update the package&#39;s carrier/courier information */
    public var carrierName: String?
    /** id of the Host for which you want to send notifications to regarding their package */
    public var recipientId: Int?

    public init(pickedUp: Bool?, carrierName: String?, recipientId: Int?) {
        self.pickedUp = pickedUp
        self.carrierName = carrierName
        self.recipientId = recipientId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case pickedUp = "picked_up"
        case carrierName = "carrier_name"
        case recipientId = "recipient_id"
    }

}
