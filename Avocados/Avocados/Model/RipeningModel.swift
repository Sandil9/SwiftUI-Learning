//
//  RipeningModel.swift
//  Avocados
//
//  Created by Sandil Hussain on 20/10/2022.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
