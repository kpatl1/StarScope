//
//  ContentView.swift
//  StarScope
//
//  Created by Kishan Patel on 1/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            UserFeedView(feed: .example)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("blackIcon")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .position(x:45, y: 15)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack{
                            NavigationLink(destination: NewUserView()) {
                                Image(systemName: "plus.square")
                                    .resizable()
                                    .frame(width: 25, height:25)
                                    .foregroundColor(.primary)
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
