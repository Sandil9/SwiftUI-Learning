//
//  CoverImageView.swift
//  Africa
//
//  Created by Sandil Hussain on 12/10/2022.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Property
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
