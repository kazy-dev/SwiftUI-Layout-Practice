//
//  MenuView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    private var menu = [Menu(title: "My Account", icon: "person.crop.circle"),
                        Menu(title: "Settings", icon: "gear"),
                        Menu(title: "Billing", icon: "creditcard"),
                        Menu(title: "Team", icon: "person.and.person"),
                        Menu(title: "Sign out", icon: "arrow.uturn.down")]
    
    @Binding var show: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(menu) { item in
                    MenuRow(image: item.icon, text: item.title)
                }
                Spacer()
            }
            .padding(.top, 20)
            .padding(30)
            .frame(width: ScreenSize.width/2)
            .background(Color("button"))
            .padding(.trailing, 60)
            .background(Color.blue)
            .cornerRadius(20)
            .animation(.default)
            .offset(x: show ? 0 : -ScreenSize.width)
            .onTapGesture {
                self.show.toggle()
            }
            Spacer()
        }
        .padding(.top, statusBarHeight)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
