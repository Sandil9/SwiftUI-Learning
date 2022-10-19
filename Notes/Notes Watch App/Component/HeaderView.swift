//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Property
    var title: String = ""
    
    // MARK: - Body
    var body: some View {
        VStack {
            // Title
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            //Seperator
            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            }//: HSTACK
            .foregroundColor(.accentColor)
        }//: VSTACK
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Credits")
            HeaderView()
        }
    }
}
