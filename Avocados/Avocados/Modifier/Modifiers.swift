//
//  ViewModifier.swift
//  Avocados
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
