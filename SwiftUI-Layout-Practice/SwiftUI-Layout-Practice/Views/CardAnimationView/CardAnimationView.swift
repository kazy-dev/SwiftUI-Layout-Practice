//
//  CardAnimationView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct CardAnimationView: View {
    @State var show = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.show.toggle()
            }
        }) {
            VStack() {
                Text("SwiftUI-Layout")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding(.top, show ? 100 : 20)
                Spacer()
            }
            .padding()
            .frame(width: show ? ScreenSize.width : 300, height: show ? ScreenSize.height : 300)
            .background(Color.blue)
        }
        .cornerRadius(30)
        .animation(.spring())
    }
}

struct CardAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CardAnimationView()
    }
}
