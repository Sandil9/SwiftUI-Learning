//
//  HeaderModel.swift
//  Avocados
//
//  Created by Sandil Hussain on 20/10/2022.
//

import SwiftUI

// MARK: - Model

struct Header: Identifiable {
    var id: UUID = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
