//
// ErrorsList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** A list of Errors that occured on the server */
public struct ErrorsList: Codable { 


    public var errors: [ModelError]

    public init(errors: [ModelError]) {
        self.errors = errors
    }

}
