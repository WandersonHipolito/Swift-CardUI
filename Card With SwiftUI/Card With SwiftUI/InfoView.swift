//
//  InfoView.swift
//  Card With SwiftUI
//
//  Created by Wanderson Hipolito on 12/05/20.
//  Copyright © 2020 Wanderson Hipolito. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(Color.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color.gray)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Oi", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
