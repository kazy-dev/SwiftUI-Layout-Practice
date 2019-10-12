//
//  Global.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation
import UIKit

// MARK: - ScreenSize

class ScreenSize {
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
}

let statusBarHeight = UIApplication.shared.statusBarFrame.height

// MARK: - AppUserDefaults

struct AppUserDefaults {
    @UserDefault("title", defaultValue: "")
    static var title: String
    
    @UserDefault("subTitle", defaultValue: "")
    static var subTitle: String
}
