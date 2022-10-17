//
//  ContentView.swift
//  Touchdown
//
//  Created by Sandil Hussain on 17/10/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
//                Spacer()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) {product in
                                ProductItemView(product: product)
                            }//: LOOP
                        }//: GRID
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VSTACK
                }//: SCROLL
            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
