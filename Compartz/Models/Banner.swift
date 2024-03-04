//
//  Banner.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct Banner: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var image: String
    var eventId: Int?
}

extension Banner {
    static var MOCK_BANNERS: [Banner] = [
        .init(id: 1, name: "banner2", image: "banner-02"),
        .init(id: 0, name: "banner1", image: "banner-01"),
        .init(id: 2, name: "banner3", image: "banner-03"),
    ]
}
