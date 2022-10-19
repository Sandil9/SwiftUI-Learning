//
//  CardModel.swift
//  Learn By Doing
//
//  Created by Sandil Hussain on 19/10/2022.
//

import SwiftUI

// MARK: - Card Model

struct Card: Identifiable {
    let id: UUID = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
