//
//  FactModel.swift
//  Avocados
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI

// MARK: - FACT

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

