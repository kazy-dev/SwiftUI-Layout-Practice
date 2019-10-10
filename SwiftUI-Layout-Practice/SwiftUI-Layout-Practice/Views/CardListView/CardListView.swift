//
//  ContentView.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct CardListView: View {
     @ObservedObject var viewModel = CardListViewModel(cardList: Card.mock())
       
       var body: some View {
           VStack {
               ZStack {
                   Color.black
                       .edgesIgnoringSafeArea(.all)
                   VStack {
                       ScrollView(showsIndicators: false) {
                           ForEach(viewModel.cardList) { card in
                               Spacer(minLength: 50)
                               Button(action: {}) {
                                   CardView(imageName: card.imageName, title: card.title, description: card.description)
                               }
                               .buttonStyle(ShrinkButtonStyle())
                               Spacer(minLength: 50)
                           }
                       }
                   }
               }
           }
       }
}

struct CardListView_Previews: PreviewProvider {
    @ObservedObject static var viewModel = CardListViewModel(cardList: Card.mock())
    static var previews: some View {
       VStack {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    ScrollView(showsIndicators: false) {
                        ForEach(viewModel.cardList) { card in
                            Spacer(minLength: 50)
                            Button(action: {}) {
                                CardView(imageName: card.imageName, title: card.title, description: card.description)
                            }
                            .buttonStyle(ShrinkButtonStyle())
                            Spacer(minLength: 50)
                        }
                    }
                }
            }
        }
    }
}
