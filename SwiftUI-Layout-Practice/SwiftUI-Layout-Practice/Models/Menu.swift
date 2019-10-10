//
//  Menu.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation

struct Menu: Identifiable {
    enum MenuType: String {
        case myAccount = "My Account"
        case setting = "Setting"
        case favorite = "Favorite"
        case faq = "FAQ"
        case signOut = "SignOut"
        
        var title: String { self.rawValue }
        
        var imageName: String {
            switch self {
            case .myAccount: return "person.crop.circle"
            case .setting: return "wrench"
            case .favorite: return "star.circle"
            case .faq: return "questionmark.circle"
            case .signOut: return "arrow.turn.up.left"
            }
        }
    }
    
    var id = UUID()
    var type: MenuType
}
