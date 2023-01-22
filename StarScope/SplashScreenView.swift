//
//  SplashScreenView.swift
//  StarScope
//
//  Created by Kishan Patel on 1/21/23.
//

import SwiftUI

struct SplashScreenView: View {

    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        }
        else {
            ZStack{
                Color("white").ignoresSafeArea()
                VStack{
                    VStack{
                        Image("Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 275, height: 350)
                    }
                    
                    .opacity(opacity)
                    //K.P Allows the image to fade in with the opacity increasing with the 1.0 seconds with easeIn
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.0)){
                            self.opacity = 1.0
                        }
                    }
                    .onAppear {
                        //K.P Creates a dispatch queue where there is a task scheduled from current system time to 2.4 seconds after to allow for isActive to become true and switch the view to the next screen
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.4){
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
