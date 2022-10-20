//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - Property
    var recipe: Recipe
    
    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }//: VSTACK
                    }//: HSTACK
                }
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(0 ..< 5) { item in
                        Image(systemName: "star.fill")
                            .font(.body)
                        .foregroundColor(.yellow)
                    }//: LOOP
                }//: HSTACK
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock.2")
                        Text("Serves: \(recipe.preparation)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame.2")
                        Text("Serves: \(recipe.cooking)")
                    }
                }//: HSTACK
                .padding()
                .padding(.bottom, 12)
            }//: VSTACK
            .padding()
            .padding(.bottom, 12)
        }//: VSTACK
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
