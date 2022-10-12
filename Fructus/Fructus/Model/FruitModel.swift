//
//  FruitModel.swift
//  Fructus
//
//  Created by Sandil Hussain on 12/10/2022.
//

import SwiftUI

//MARK: Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
