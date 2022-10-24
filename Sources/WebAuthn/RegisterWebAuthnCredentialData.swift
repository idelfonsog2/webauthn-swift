//===----------------------------------------------------------------------===//
//
// This source file is part of the WebAuthn Swift open source project
//
// Copyright (c) 2022 the WebAuthn Swift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of WebAuthn Swift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Foundation

public struct RegisterWebAuthnCredentialData: Codable {
    public init(id: String, rawID: String, type: String, response: RegisterCredentialsResponse) {
        self.id = id
        self.rawID = rawID
        self.type = type
        self.response = response
    }
    
    public let id: String
    let rawID: String
    let type: String
    let response: RegisterCredentialsResponse
    
    enum CodingKeys: String, CodingKey {
        case id
        case rawID = "rawId"
        case type
        case response
    }
}

public struct RegisterCredentialsResponse: Codable {
    public init(attestationObject: String, clientDataJSON: String) {
        self.attestationObject = attestationObject
        self.clientDataJSON = clientDataJSON
    }
    
    let attestationObject: String
    let clientDataJSON: String
}
