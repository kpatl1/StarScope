//
//  UserFeed.swift
//  StarScope
//
//  Created by Kishan Patel on 1/22/23.
//

import Foundation

struct Feed{
    let users: [User]
    static let example = Feed(users: [
        User(name: "kishan", sign: "virgo", horoscopeText: "Contact is key."),
        User(name: "benecia", sign: "virgo", horoscopeText: "Contact is key."),
        User(name: "lauren", sign: "virgo", horoscopeText: "Continue.")
        
    ])
}

extension Feed{
    
}
