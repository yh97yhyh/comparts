//
//  Category.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct Category: Identifiable, Codable {
    var id: Int
    var name: String
}

extension Category {
    static let MOCK_CATEGORIES: [Category] = [ // CPU, RAM, VGA, POWER, ...
        .init(id: 0, name: "CPU"),
        .init(id: 1, name: "RAM"),
        .init(id: 2, name: "VGA"),
//        .init(id: 3, name: "POWER")
    ]
}
