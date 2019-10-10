//
//  MenuView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    var menu = [Menu(type: .myAccount),
                Menu(type: .setting),
                Menu(type: .favorite),
                Menu(type: .faq),
                Menu(type: .signOut),]
    
    @Binding var show: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Image("female")
                    .resizable()
                    .scaleEffect(2)
                    .offset(x: 0, y: 20)
                    .aspectRatio(5/7, contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text("Miranda Jeen")
                
                HStack {
                    VStack {
                        Text("follow")
                        Text("211")
                    }
                    .padding()
                    
                    VStack {
                        Text("follower")
                        Text("324")
                    }
                    .padding()
                }
                .padding(.vertical)
                
                VStack(alignment: .leading) {
                    ForEach(menu) { item in
                        MenuRow(image: item.type.imageName, text: item.type.title)
                    }
                }
                Spacer()
            }
            .padding(.top, 20)
            .padding(30)
            .frame(width: ScreenSize.width/1.5)
            .background(Color.blue.opacity(0.4))
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
