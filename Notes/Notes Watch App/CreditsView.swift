//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - Property
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    // MARK: - Body
    var body: some View {
        VStack(spacing: 3) {
            //Profile Image
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            //Header
            HeaderView(title: "Credits")
            //Content
            Text("Sandil Hussain")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }//: VSTACK
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
