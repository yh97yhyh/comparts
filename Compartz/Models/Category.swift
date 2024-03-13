//
//  Category.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct Category: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var startOrder: Int
}

extension Category {
    static let MOCK_CATEGORIES: [Category] = [
        .init(id: 1, name: "CPU", startOrder: 0),
        .init(id: 2, name: "RAM", startOrder: 1),
        .init(id: 3, name: "VGA", startOrder: 2),
        .init(id: 4, name: "SSD", startOrder: 3),
        .init(id: 5, name: "HDD", startOrder: 4),
        .init(id: 6, name: "ODD", startOrder: 5),
//        .init(id: 7, name: "MainBoard"),
//        .init(id: 8, name: "POWER"),
//        .init(id: 9, name: "Case"),
//        .init(id: 10, name: "Cooler"),
//        .init(id: 11, name: "SoundCard"),
    ]
}
