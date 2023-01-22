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
        User(name: "kishan", sign: "virgo", description: "Contact is key.", current_date: "today"),
        User(name: "benecia", sign: "virgo", description: "Contact is key.", current_date: "today"),
        User(name: "lauren", sign: "virgo", description: "Continue.", current_date: "today")
        
    ])
}

extension Feed{
    
}
