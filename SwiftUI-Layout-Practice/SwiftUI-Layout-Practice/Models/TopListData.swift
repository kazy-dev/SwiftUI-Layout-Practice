//
//  TopListData.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation
import SwiftUI

struct TopListData: Identifiable {
    
    enum Presentation: View, Hashable, Identifiable {
        case cardList
        case sideMenu
        case cardAnimation
        case userDefaultTest
        
        
        var body: some View {
            switch self {
            case .cardList: return AnyView(CardListView())
            case .sideMenu: return AnyView(SideMenuView())
            case .cardAnimation: return AnyView(CardAnimationView())
            case .userDefaultTest: return AnyView(UserDefaultTestView())
            }
        }
    }
    
    let id = UUID()
    let title: String
    let presentType: Presentation?
}
