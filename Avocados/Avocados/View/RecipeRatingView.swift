//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - Property
    var recipe: Recipe
    
    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id:\.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(.yellow)
            }//: LOOP
        }//: HSTACK
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
