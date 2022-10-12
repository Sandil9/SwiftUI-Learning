//
//  PageModel.swift
//  Pinch
//
//  Created by Sandil Hussain on 12/10/2022.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-"+self.imageName
    }
}
