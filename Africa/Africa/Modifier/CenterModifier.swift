//
//  CenterModifier.swift
//  Africa
//
//  Created by Sandil Hussain on 17/10/2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
