//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Sandil Hussain on 18/10/2022.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
