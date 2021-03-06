//
// SignableDocument.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/**  */
public struct SignableDocument: Codable { 


    public var simpleSignatures: [SimpleSignature]?
    public var docusigns: [Docusign]?

    public init(simpleSignatures: [SimpleSignature]?, docusigns: [Docusign]?) {
        self.simpleSignatures = simpleSignatures
        self.docusigns = docusigns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case simpleSignatures = "simple_signatures"
        case docusigns
    }

}
