//
//  TopViewModel.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation

class TopViewModel: ObservableObject {
    @Published var list: [TopListData] = [TopListData(title: "CardList", presentType: .cardList),
                                          TopListData(title: "SideMenu", presentType: .sideMenu)]
}
