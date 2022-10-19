//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    var cards: [Card]
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { card in
                    CardView(card: card)
                }//: LOOP
            }//: HSTACK
            .padding(20)
        }//: Scroll
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
