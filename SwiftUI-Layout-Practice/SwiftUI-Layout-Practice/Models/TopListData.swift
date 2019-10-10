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
        case cardListView
        case view
        var body: some View {
            switch self {
            case .cardListView: return AnyView(CardListView())
            case .view: return AnyView(EmptyView())
            }
        }
    }
    
    let id = UUID()
    let title: String
    let presentType: Presentation?
}
