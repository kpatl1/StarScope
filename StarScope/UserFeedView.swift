//
//  UserFeedView.swift
//  StarScope
//
//  Created by Kishan Patel on 1/22/23.
//

import SwiftUI

struct UserFeedView: View {
    let feed: Feed
    var body: some View {
        ScrollView{
            ForEach(feed.users, id: \.name)
            {(user) in
                UserView(user: user)
            }
        }
    }
}

struct UserFeedView_Previews: PreviewProvider {
    static var previews: some View {
        UserFeedView(feed: .example)
    }
}
