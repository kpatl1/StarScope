//
//  UserModel.swift
//  StarScope
//
//  Created by Kishan Patel on 1/21/23.
//

import Foundation

struct User: Codable {
    let name: String
    let sign: String
    let description: String
    let current_date: String
}



extension User {
    static var example: User {
        User(name: "kishan", sign: "virgo", description: "Contact is key.", current_date: "today")
        
    }
}
