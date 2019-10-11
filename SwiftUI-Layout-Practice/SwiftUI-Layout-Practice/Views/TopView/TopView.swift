//
//  TopView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct TopView: View {
    
    @State var presentation: TopListData.Presentation?
    @ObservedObject var viewModel = TopViewModel()
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                VStack {
                    Image("swiftui-layout_logo")
                        .resizable()
                        .frame(width: 120*10/4, height: 120)
                        .aspectRatio(10/4, contentMode: .fit)
                        .padding()
                    List(viewModel.list, id: \.id) { rowData in
                        NavigationLink(destination: rowData.presentType) {
                            Text(rowData.title)
                        }
                    }
                }
            }
            .navigationBarTitle("SwiftUI-Layout")
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
