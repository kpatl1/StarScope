//
//  UserModel.swift
//  StarScope
//
//  Created by Kishan Patel on 1/21/23.
//

import Foundation

struct User {
    let id = UUID()
    let name: String
    let sign: String
    let horoscopeText: String
}



extension User {
    static var example: User {
        User(name: "kishan", sign: "virgo", horoscopeText: "Contact is key.")
        
    }
}
