//
//  CardView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var title: String
    var description: String
    
    
    var body: some View {
        VStack {
            ZStack {
                Image(imageName)
                    .resizable()
                    .frame(width: ScreenSize.width / 1.2)
                    .aspectRatio(7/10, contentMode: .fit)
                    .overlay(VStack {
                        Text(title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                        
                        Spacer()
                        
                        Text(description)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black.opacity(0.5))
                    })
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 20)
            }
        }
    }
    
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView.init(imageName: "", title: "test", description: "This is test.")
    }
}
