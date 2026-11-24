//
//  Achievment.swift
//  Leodoru
//
//  Created by Adrian Wagner on 13.10.26.
//

import Foundation

struct Achievment: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var points: String
    var imageName: String
}
