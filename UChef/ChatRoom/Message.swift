//
//  Message.swift
//  UChef
//
//  Created by Daniel Li on 3/13/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
