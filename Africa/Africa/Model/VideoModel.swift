//
//  VideoModel.swift
//  Africa
//
//  Created by Sandil Hussain on 13/10/2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed
    var thumbnail: String {
        "video-\(id)"
    }
}
