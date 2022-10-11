//
//  ContentView.swift
//  SwiftUI-Tutorial
//
//  Created by Sandil Hussain on 10/10/2022.
//

import SwiftUI
extension Image{
    func imageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}
struct ContentView: View {
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        VStack {
//            AsyncImage(url: URL(string: imageUrl), scale: 3.0)
//            AsyncImage(url: URL(string: imageUrl)) { image in
//                image
//                    .imageModifier()
//            } placeholder: {
//                Image(systemName: "photo.circle.fill")
//                    .iconModifier()
//            }
//            .padding(40)
            // MARK: PHASE
//            AsyncImage(url: URL(string: imageUrl)){ phase in
//                if let image = phase.image {
//                    image.imageModifier()
//                } else if phase.error != nil{
//                    Image(systemName: "ant.circle.fill").iconModifier()
//                } else {
//                    Image(systemName: "photo.circle.fill").iconModifier()
//                }
//            }
//            .padding(40)
            // MARK: ANIMATION
            AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))){ phase in
                switch phase {
                case .success(let image):
                    image
                        .imageModifier()
//                        .transition(.move(edge: .bottom))
//                        .transition(.slide)
                        .transition(.scale)
                case .failure(_):
                    Image(systemName: "ant.circle.fill").iconModifier()
                case .empty:
                    Image(systemName: "photo.circle.fill").iconModifier()
                default:
                    ProgressView()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
