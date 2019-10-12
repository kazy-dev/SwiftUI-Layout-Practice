//
//  UserDefaultWrapper.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation

@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T
    
    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

struct UserDefaultsConfig {
    @UserDefault("isLogin", defaultValue: false)
    static var isLogin: Bool

    @UserDefault("username", defaultValue: "")
    static var username: String

    @UserDefault("age", defaultValue: 1990)
    static var age: Int
}

func a() {
    UserDefaultsConfig.isLogin = true
    UserDefaultsConfig.username = "Yamada Taro"
    UserDefaultsConfig.age = 24
}

