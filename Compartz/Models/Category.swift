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
}

extension Category {
    static let MOCK_CATEGORIES: [Category] = [
        .init(id: 1, name: "CPU"),
        .init(id: 2, name: "RAM"),
        .init(id: 3, name: "VGA"),
        .init(id: 4, name: "SSD"),
        .init(id: 5, name: "HDD"),
        .init(id: 6, name: "ODD"),
        .init(id: 7, name: "MainBoard"),
        .init(id: 8, name: "POWER"),
        .init(id: 9, name: "Case"),
        .init(id: 10, name: "Cooler"),
        .init(id: 11, name: "SoundCard"),
    ]
}
