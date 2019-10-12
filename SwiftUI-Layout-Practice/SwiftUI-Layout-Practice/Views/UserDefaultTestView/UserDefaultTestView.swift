//
//  UserDefaultTestView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct UserDefaultTestView: View {
    @State private var title: String = ""
    @State private var subTitle: String = ""
    
    @State private var loadTitle: String = AppUserDefaults.title
    @State private var loadSubTitle: String = AppUserDefaults.subTitle
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    TextField("title", text: $title)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        AppUserDefaults.title = self.title
                        
                    }) {
                        Text("Save title")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                }
                
                HStack {
                    TextField("subTitle", text: $subTitle)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        AppUserDefaults.subTitle = self.subTitle
                    }) {
                        Text("Save subTitle")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                }
                
                Spacer()
                
                Text("--Get UserDefault Value--")
                
                Group {
                    Text(loadTitle)
                        .frame(width: ScreenSize.width/1.5)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    Button(action: {
                        self.loadTitle = UserDefaults.standard.object(forKey: "title") as? String ?? "nil"
                    }) {
                        Text("load Title")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                }.padding()
                
                Group {
                    Text(loadSubTitle)
                        .frame(width: ScreenSize.width/1.5)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    Button(action: {
                        self.loadSubTitle = UserDefaults.standard.object(forKey: "subTitle") as? String ?? "nil"
                    }) {
                        Text("load subTitle")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                    
                }
                .padding()
                Spacer()
            }
            .padding()
        }.navigationBarTitle("UserDefaultTest")
    }
}

struct UserDefaultTestView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultTestView()
    }
}
