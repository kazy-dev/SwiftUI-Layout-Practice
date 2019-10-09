//
//  Card.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    
    let imageName: String
    let title: String
    let description: String
    
    enum CardBGImageName: String {
        case scene1
        case scene2
        case scene3
        case scene4
        case scene5
        case scene6
    }
    
    init(imageName: CardBGImageName, title: String, description: String) {
        self.imageName = imageName.rawValue
        self.title = title
        self.description = description
    }
    
    static func mock() -> [Card] {
        return [Card(imageName: .scene1, title: "Image1", description: "This is nature image1."),
                Card(imageName: .scene2, title: "Image2", description: "This is nature image2."),
                Card(imageName: .scene3, title: "Image3", description: "This is nature image3."),
                Card(imageName: .scene4, title: "Image4", description: "This is nature image4."),
                Card(imageName: .scene5, title: "Image5", description: "This is nature image5."),
                Card(imageName: .scene6, title: "Image6", description: "This is nature image6.")]
    }
}
