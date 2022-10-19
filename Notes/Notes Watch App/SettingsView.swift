//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Property
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - Function
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            //HEADER
            HeaderView(title: "Settings")
            //Actual Line Count
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            //Slider
            Slider(value: Binding(get: {
                self.value
            }, set: { newValue in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        }//: VSTACK
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
