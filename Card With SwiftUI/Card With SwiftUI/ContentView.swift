//
//  ContentView.swift
//  Card With SwiftUI
//
//  Created by Wanderson Hipolito on 12/05/20.
//  Copyright © 2020 Wanderson Hipolito. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.00, green: 0.54, blue: 0.48, opacity: 0.777)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("dino")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                
                Text("Wanderson")
                    .font(Font.custom("Baloo2-Regular.ttf", size: 30))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                
                Text("IOS")
                    .font(Font.custom("Baloo2-Regular.ttf", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                
                Divider()
  
                InfoView(text: "+55 123456 654321", imageName: "phone.fill")
                InfoView(text: "algo@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}


