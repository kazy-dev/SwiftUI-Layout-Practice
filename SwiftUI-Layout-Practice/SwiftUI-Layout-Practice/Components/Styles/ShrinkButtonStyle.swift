//
//  ShrinkButtonStyle.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct ShrinkButtonStyle: ButtonStyle {

  func makeBody(configuration: Self.Configuration) -> some View {

    let isPressed = configuration.isPressed

    return configuration.label
        .scaleEffect(x: isPressed ? 0.95 : 1, y: isPressed ? 0.95 : 1, anchor: .center)
      .animation(.spring(response: 0.2, dampingFraction: 0.95, blendDuration: 0))
  }
}
