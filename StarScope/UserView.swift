//
//  UserView.swift
//  StarScope
//
//  Created by Kishan Patel on 1/21/23.
//

import SwiftUI

struct UserView: View {
    let user: User
    private let HStackOffset: CGFloat = 10
    private let VstackSpacing: CGFloat = 15
    private let HstackSpacing: CGFloat = 10
    var body: some View {
            VStack(alignment:.leading, spacing: VstackSpacing){
                nameHeading
                horoscopeText
            }
            .padding()
            .background(Color("StarScopeGrey"))
        }
    
    private var nameHeading: some View{
        HStack{
            Text(user.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x:HStackOffset)
                .bold()
            Text(user.sign)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .offset(x:-HStackOffset)
                .bold()
        }
    }
    private var horoscopeText: some View{
        HStack(spacing: HstackSpacing){
            Text(user.description)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x:HStackOffset)
        }


    }
    
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user: .example)
    }
}
