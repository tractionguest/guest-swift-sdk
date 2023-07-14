//
// InviteDetailInvitesParkingLot.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct InviteDetailInvitesParkingLot: Codable { 


    public var id: Int?
    public var stallNumber: Int?
    public var stallType: String?
    public var parkingLotName: String?
    public var parkingLotId: Int?
    public var parkingStallId: Int?

    public init(id: Int?, stallNumber: Int?, stallType: String?, parkingLotName: String?, parkingLotId: Int?, parkingStallId: Int?) {
        self.id = id
        self.stallNumber = stallNumber
        self.stallType = stallType
        self.parkingLotName = parkingLotName
        self.parkingLotId = parkingLotId
        self.parkingStallId = parkingStallId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case stallNumber = "stall_number"
        case stallType = "stall_type"
        case parkingLotName = "parking_lot_name"
        case parkingLotId = "parking_lot_id"
        case parkingStallId = "parking_stall_id"
    }

}
