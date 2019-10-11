//
//  MenuRow.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    
    var image = ""
    var text = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: image)
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
                Text(text)
                    .font(.headline)
                Spacer()
            }
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
