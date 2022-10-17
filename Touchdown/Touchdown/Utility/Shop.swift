//
//  Shop.swift
//  Touchdown
//
//  Created by Sandil Hussain on 17/10/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
