//
//  TopViewModel.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

final class CardListViewModel: ObservableObject {
    @Published var cardList: [Card]
    
    init(cardList: [Card]) {
        self.cardList = cardList
    }
}
