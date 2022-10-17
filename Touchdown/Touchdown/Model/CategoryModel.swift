//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Sandil Hussain on 17/10/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
