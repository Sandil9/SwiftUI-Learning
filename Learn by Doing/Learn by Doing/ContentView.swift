//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
                    CardView()
                }
            }//: HSTACK
            .padding(20)
        }//: Scroll
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
