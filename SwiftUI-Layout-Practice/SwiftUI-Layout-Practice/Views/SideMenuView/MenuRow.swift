//
//  MenuRow.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    
    var image = "creditcard"
    var text = "My Account"
    
    var body: some View {
        return HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            
            Text(text)
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
