//
//  SideMenuView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct SideMenuView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    self.show = true
                }) {
                    Text("show side menu")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(30)
                        .foregroundColor(.white)
                }
            }
            .blur(radius: show ? 20 : 0)
            MenuView(show: $show)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
