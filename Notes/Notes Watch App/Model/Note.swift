//
//  Note.swift
//  Notes Watch App
//
//  Created by Sandil Hussain on 19/10/2022.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
